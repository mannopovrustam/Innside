-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 07 2023 г., 19:18
-- Версия сервера: 8.0.31
-- Версия PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `admin_innside`
--

-- --------------------------------------------------------

--
-- Структура таблицы `billing_click`
--

DROP TABLE IF EXISTS `billing_click`;
CREATE TABLE IF NOT EXISTS `billing_click` (
  `id` int NOT NULL AUTO_INCREMENT,
  `click_trans_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `merchant_trans_id` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `action` int DEFAULT NULL,
  `error` int DEFAULT NULL,
  `error_note` varchar(255) DEFAULT NULL,
  `sign_time` varchar(255) DEFAULT NULL,
  `sight_string` varchar(255) DEFAULT NULL,
  `merchant_confirm_id` varchar(255) DEFAULT NULL,
  `click_paydoc_id` int DEFAULT NULL,
  `merchant_cancel` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `billing_click`
--

INSERT INTO `billing_click` (`id`, `click_trans_id`, `service_id`, `merchant_trans_id`, `amount`, `action`, `error`, `error_note`, `sign_time`, `sight_string`, `merchant_confirm_id`, `click_paydoc_id`, `merchant_cancel`) VALUES
(1, 14566027, 19801, '26', '500', 0, NULL, NULL, '2022-03-27 14:25:25', '01095f1c034fb9f27d8714eaafe0ba47', '1', 16853761, NULL),
(2, 14566030, 19801, '26', '500', 0, NULL, NULL, '2022-03-27 14:33:19', '6fd193012f420d622c799dddf3141a35', '1', 16853764, NULL),
(3, 14566033, 19801, '26', '500', 0, NULL, NULL, '2022-03-27 14:33:24', '8b0805ca5579b6f1de9b42187d5620db', NULL, 16853765, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `billing_payments`
--

DROP TABLE IF EXISTS `billing_payments`;
CREATE TABLE IF NOT EXISTS `billing_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `created` int DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  `perform_time` varchar(50) DEFAULT NULL,
  `payed_date` int DEFAULT NULL,
  `cancel_time` varchar(55) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `summ` int DEFAULT NULL,
  `info_billing` varchar(255) DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `fio` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `billing_payments`
--

INSERT INTO `billing_payments` (`id`, `phone`, `created`, `create_time`, `perform_time`, `payed_date`, `cancel_time`, `status`, `summ`, `info_billing`, `invoice_id`, `fio`, `address`) VALUES
(1, '998974105800', NULL, '1673415102652', '', NULL, '', 1, 50000, NULL, 4, NULL, NULL),
(2, '998974105800', NULL, '1673416245565', '1673416504943', NULL, '1673416516015', -3, 60000, NULL, 48, NULL, NULL),
(3, '998974105800', NULL, '1647307245964', '1647307305904', NULL, '1647307324327', -3, 50000, NULL, 4, NULL, NULL),
(4, '998974105800', NULL, '1647265864001', '1647265871970', NULL, '1647265889905', -3, 50000, NULL, 4, NULL, NULL),
(5, '998974105800', NULL, '1647265535348', '1647265544276', NULL, '1647265551683', -3, 50000, NULL, 4, NULL, NULL),
(6, '998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 46200, NULL, 34, NULL, NULL),
(7, '998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 53400, NULL, 35, NULL, NULL),
(8, '998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 40800, NULL, 36, NULL, NULL),
(9, '998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 40800, NULL, 37, NULL, NULL),
(10, '998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 53400, NULL, 39, NULL, NULL),
(11, '998911905800', NULL, NULL, NULL, NULL, NULL, NULL, 213600, NULL, 40, NULL, NULL),
(12, '+998996944796', NULL, NULL, NULL, NULL, NULL, NULL, 600000, NULL, 60, NULL, NULL),
(13, '+998996944796', NULL, '1673432329182', '1673432335915', NULL, '1673432339738', -3, 600000, NULL, 61, NULL, NULL),
(14, '+998996944796', NULL, NULL, NULL, NULL, NULL, NULL, 900000, NULL, 62, NULL, NULL),
(15, '+998996944796', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 64, NULL, NULL),
(16, '+998996944796', NULL, NULL, NULL, NULL, NULL, NULL, 900000, NULL, 65, NULL, NULL),
(17, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 66, NULL, NULL),
(18, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 67, NULL, NULL),
(19, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 68, NULL, NULL),
(20, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 69, NULL, NULL),
(21, '+998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 250000, NULL, 70, NULL, NULL),
(22, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 73, NULL, NULL),
(23, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 75, NULL, NULL),
(24, '+998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, 78, NULL, NULL),
(25, '+998974105800', NULL, NULL, NULL, NULL, NULL, NULL, 250000, NULL, 79, NULL, NULL),
(26, '+998974105800', NULL, '1673439050754', '1673439052164', NULL, NULL, 2, 300, NULL, 80, NULL, NULL),
(27, '+998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, 81, NULL, NULL),
(28, '+998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 600000, NULL, 82, NULL, NULL),
(29, '+998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 84, NULL, NULL),
(30, '+998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 85, NULL, NULL),
(31, '+998977041755', NULL, NULL, NULL, NULL, NULL, NULL, 600000, NULL, 86, NULL, NULL),
(32, '+998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, 88, NULL, NULL),
(33, '998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 450000, NULL, 94, NULL, NULL),
(34, '998996944796', NULL, NULL, NULL, NULL, NULL, NULL, 600000, NULL, 96, NULL, NULL),
(35, '998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 1200000, NULL, 98, NULL, NULL),
(36, '998935859006', NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, 102, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `hotel_id` int DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `adults` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `rooms` int DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'CHECKIN',
  `amount` varchar(255) DEFAULT NULL,
  `pay_type` int DEFAULT NULL,
  `notes` text,
  `paid` varchar(255) DEFAULT NULL,
  `debt` varchar(255) DEFAULT NULL,
  `persons` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `hotel_id`, `start_date`, `admin`, `end_date`, `created_at`, `adults`, `children`, `rooms`, `room_type`, `status`, `amount`, `pay_type`, `notes`, `paid`, `debt`, `persons`) VALUES
(24, 56, 74, '2022-12-26 00:00:00', 'Сауле', '2022-12-30 00:00:00', '2022-12-26 15:53:19', NULL, NULL, 200, NULL, 'CHECKIN', '325000', 1, 'Фирма Кронес', '0', '', NULL),
(25, 57, 74, '2022-12-24 00:00:00', 'Сауле', '2022-12-30 00:00:00', '2022-12-26 16:00:15', NULL, NULL, 200, NULL, 'CHECKIN', '325000', 1, 'Фирма Кронес', '0', '', NULL),
(26, 58, 74, '2022-12-24 00:00:00', 'Сауле', '2022-12-27 00:00:00', '2022-12-26 16:01:34', NULL, 1, 201, NULL, 'CHECKIN', '207000', 2, 'Букинг', '0', '', NULL),
(27, 59, 74, '2022-12-26 00:00:00', 'Сауле', '2022-12-27 00:00:00', '2022-12-26 16:03:09', NULL, NULL, 207, NULL, 'CHECKOUT', '250000', 1, '', '0', '', NULL),
(28, 60, 74, '2022-12-04 00:00:00', 'Сауле', '2022-12-30 00:00:00', '2022-12-26 16:04:44', NULL, NULL, 194, NULL, 'CHECKIN', '250000', 1, 'Навои МВД', '0', '', NULL),
(30, 62, 74, '2022-12-19 00:00:00', 'Сауле', '2022-12-30 00:00:00', '2022-12-26 16:07:05', NULL, NULL, 212, NULL, 'CHECKIN', '250000', 1, 'Гуин', '0', '', NULL),
(50, 82, 74, '2022-12-26 00:00:00', 'jack', '2023-01-21 00:00:00', '2022-12-27 03:19:47', 1, NULL, 211, NULL, 'CHECKOUT', '500000', 1, '', '100000', '400000', NULL),
(51, 83, 74, '2022-12-27 00:00:00', 'Abdullox', '2022-12-27 00:00:00', '2022-12-27 18:14:34', 1, NULL, 207, NULL, 'CHECKIN', '250000', 3, '', '', '', NULL),
(52, 84, 74, '2022-12-28 00:00:00', 'Muxtor', '2022-12-30 00:00:00', '2022-12-28 08:57:20', NULL, NULL, 195, NULL, 'CHECKIN', '250000', 1, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comfortables`
--

DROP TABLE IF EXISTS `comfortables`;
CREATE TABLE IF NOT EXISTS `comfortables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_uz` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comfortables`
--

INSERT INTO `comfortables` (`id`, `title_ru`, `title_uz`) VALUES
(1, 'Бесплатные туалетно-косметические принадлежности ', 'Bepul tualet buyumlari'),
(2, 'Сейф ', 'Seyf'),
(3, 'Ванна или душ', 'Vanna yoki dush'),
(5, 'Полотенца', 'Sochiq'),
(6, 'Белье', 'Choyshab'),
(7, 'Телевизор', 'TV'),
(8, 'Телефон', 'Telefon'),
(9, 'Гладильные принадлежности', 'Dazmol uchun'),
(10, 'Спутниковые каналы', 'Sputnik telekanallar'),
(11, 'Утюг', 'Dazmol'),
(12, 'Отопление', 'Isitish'),
(13, 'Фен', 'Fen'),
(15, 'Электрический чайник', 'Elektr choynak'),
(16, 'Кабельные каналы', 'Kabel TV'),
(17, 'Услуга «звонок-будильник»', 'Budilnik xizmati'),
(18, 'Шкаф или гардероб', 'Shkaf'),
(19, 'Лестница для доступа к верхним этажам', 'Zinapoya'),
(20, 'Вешалка для одежды', 'Kiyim ilgichi'),
(21, 'Сушилка для одежды', 'Kiyim quritgich'),
(22, 'Туалетная бумага', 'Tualet qog\'ozi'),
(23, 'Кондиционер', 'Kontidsioner'),
(24, 'Холодильник', 'Muzlatgich'),
(25, 'Бильярд', 'Bilyard'),
(26, 'Бассейн', 'Basseyn'),
(27, 'Тренажерный зал', 'Fittness zali'),
(28, 'Конференц зал', 'Konferensiyalar Zali');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `hotel_id` int DEFAULT NULL,
  `comment` text,
  `type` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `corp`
--

DROP TABLE IF EXISTS `corp`;
CREATE TABLE IF NOT EXISTS `corp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `corp`
--

INSERT INTO `corp` (`id`, `region_id`, `parent_id`, `title`, `code`) VALUES
(1, 7, NULL, 'MVD ', '2323');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `hotels`
--

DROP TABLE IF EXISTS `hotels`;
CREATE TABLE IF NOT EXISTS `hotels` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_uz` varchar(255) DEFAULT NULL,
  `info_ru` varchar(255) DEFAULT NULL,
  `info_uz` varchar(255) DEFAULT NULL,
  `comfortables` varchar(255) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `info_en` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `photos_url` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `main_photo` varchar(255) DEFAULT NULL,
  `comments_url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `photos_room` varchar(255) DEFAULT NULL,
  `photos_reception` varchar(255) DEFAULT NULL,
  `photos_front` varchar(255) DEFAULT NULL,
  `photos_bathroom` varchar(255) DEFAULT NULL,
  `photos_breakfast` varchar(255) DEFAULT NULL,
  `photos_other` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  `single` int DEFAULT NULL,
  `double` int DEFAULT NULL,
  `triple` int DEFAULT NULL,
  `family` int DEFAULT NULL,
  `deluxe` int DEFAULT NULL,
  `twin` int DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `hotels`
--

INSERT INTO `hotels` (`id`, `title_ru`, `title_uz`, `info_ru`, `info_uz`, `comfortables`, `region_id`, `address`, `rating`, `info_en`, `title_en`, `photos_url`, `latitude`, `longitude`, `main_photo`, `comments_url`, `active`, `photos_room`, `photos_reception`, `photos_front`, `photos_bathroom`, `photos_breakfast`, `photos_other`, `username`, `password`, `auth_key`, `password_hash`, `status`, `email`, `created_at`, `updated_at`, `single`, `double`, `triple`, `family`, `deluxe`, `twin`, `role`) VALUES
(64, 'Admin', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', NULL, 'v50ruyxZL4WciQsHjyeQk9oV3Z-X8hPB', '$2y$13$eO5TcrV09Kq48FCpGFUJNOXygAnF2ZGYg//v0pVGym6X0QK6N6EQi', 10, 'admin@mail.ru', 1670962877, 1670962877, NULL, NULL, NULL, NULL, NULL, NULL, 'admin'),
(74, 'Oazis Hotel ', NULL, NULL, NULL, '3', 13, 'Yashnabod Tumani , Farg\'ona Yo\'li 23 - uy ', 3, NULL, NULL, 'https://telegra.ph/', '41.287626', '69.310541', 'https://i.imgur.com/kdhWXOe.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/Dv0KjoM.jpg', 'https://i.imgur.com/pRiRCfn.jpg', 'https://i.imgur.com/TDn4ZSy.jpg', 'https://i.imgur.com/R0BKQXT.jpg', 'https://i.imgur.com/PfB2MaJ.jpg', 'https://i.imgur.com/rrggNto.jpg', 'OazisTASHKENT', 'OazisTASHKENT', 'aP6UoYzN0i03SHXrYuS4YkOsRPYk4z-8', '$2y$13$itXOWDILtYej1VbqRAiV5ObYgDKXgYkCDoSC8hhkCA/vqmIW8yKRm', 10, 'info@mail.ru', NULL, NULL, 3, 13, 6, NULL, 1, NULL, 'hotel'),
(86, 'Real Tashkent Hotel', NULL, NULL, NULL, '1;2;3', 13, 'Yunusobod tumani, Gir girtepa ko\'chasi, 30', 3, NULL, NULL, 'https://telegra.ph/', '41.337323965452065', '69.29750339154052', 'https://i.imgur.com/XO8shne.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/avJcheL.jpg', '', '', 'https://i.imgur.com/6KtoKJM.jpg', '', 'https://i.imgur.com/ao71TSj.jpg', 'realtashkent', 'realtashkent123', 'vAkcyMv_pV2yjBBJDgEl1FDKaz-jaRuY', '$2y$13$L8eg9uFjgXiFU9tFWJU95ehN/ZBFtjqA65DGhXj.SI5mSYosDrVnO', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hotel'),
(87, 'Grand Ikan', NULL, NULL, NULL, '3;7;12;18;23', 13, 'Mirobod tumani, Katta Mirobod 11', 1, NULL, NULL, 'https://telegra.ph/', '', '', '', 'https://telegra.ph/', 1, '', '', '', '', '', '', 'Usergrandikan', 'ikan1122', 'oyxgBul-gfc2sjgizHiZx3xlRO4RV8cp', '$2y$13$nBmqWkcVvyHaw5BJdh6TgOJhViLx5EZexj2GPp7cTnJEyV5SF0mlu', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hotel'),
(88, 'Ikan Hotel', NULL, NULL, NULL, '3;7;18;23', 13, 'Yakkasaroy tumani, X.Sulaymonov 39/41', 3, NULL, NULL, 'https://telegra.ph/', '', '', 'https://i.imgur.com/YDJylRZ.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/3XBodqg.jpg', 'https://i.imgur.com/BxJlpwY.jpg', '', '', 'https://i.imgur.com/gMleRuy.jpg', '', 'ikanhotel', 'ikanhotel', 'W_VQ8z7w9hvsJMGtL5B21zcDC1_D3wzo', '$2y$13$Pulu.Rxjj43ac0IL7Eg4JuVt7ZNF9mAa5VsdIwmOAYEvPhk3pBHD6', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hotel'),
(89, 'Rich Hotel', NULL, NULL, NULL, '3;5;6;7;12;13;18;23', 13, 'Сурхандарьинская область, город областного подчинения Термез', 3, NULL, NULL, 'https://telegra.ph/', '37.23434728484722', '67.2768629929028', 'https://i.imgur.com/L3jkhe3.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/uYewJcQ.jpg', '', '', 'https://i.imgur.com/6bIKZ5T.jpg', '', 'https://i.imgur.com/8IMCFSm.jpg', 'richhotel123', 'richhotel123', 'bOA8jQjihJ6vn8CwilfsJdtqwcfwRzCL', '$2y$13$8ggJLlhlqKAiMY07tYjTdueScPWv/8m5dOuvQ.aNIGreV67kaQz1a', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hotel'),
(90, 'Marokand Spa Hotel', NULL, NULL, NULL, '1;3;5;6;7;8;10;13;15;16;17;18;20;21;22;23', 9, 'Самарканд, улица Ибн Сины, 17', 4, NULL, NULL, 'https://telegra.ph/', '39.683275661014235', '66.9843585540468', 'https://i.imgur.com/JXCZ1U4.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/hAeVMfF.jpg', 'https://i.imgur.com/kXyEQ4H.jpg', 'https://i.imgur.com/CpatMZf.jpg', 'https://i.imgur.com/qcPIUDS.jpg', 'https://i.imgur.com/tbxYjCN.jpg', 'https://i.imgur.com/vofZ3Jp.jpg', 'marokandsamarkand', 'marokandsamarkand', 'yZzz_3LGHXBNNCAQHbYCwW1kVfbeFd6z', '$2y$13$lpjBzwQmu8HZohXTal0juOXaiMRXIyWt67YGcYZU.jgL2RBYkRuxC', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hotel'),
(92, 'Grand Star Hotel', NULL, NULL, NULL, '1;2;3;5;6;7;8;13;16;18;23', 8, 'Кашкадарьинская область, Карши', 3, NULL, NULL, 'https://telegra.ph/', '38.8460829818446', '65.79104911705019', 'https://i.imgur.com/c8Hh2yp.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/4UQsPmt.jpg', '', 'https://i.imgur.com/ihvRpLI.jpg', '', 'https://i.imgur.com/to4foJT.jpg', 'https://i.imgur.com/YhHV2Q6.jpg', 'grandstarkarshi', 'grandstarkarshi', 'DRMD7vjBUH9j6SbZHOS2yLQi_lHcsaLi', '$2y$13$nZgyfjlme0BdT.V2CG06d.nBNWRJkAZLhasH.iwg5PvsWxPLn4DRy', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hotel'),
(94, 'Khiva Residence Hotel', NULL, NULL, NULL, '1;2;3;5;6;7;8;15;16;17;18;19;20;22;23;24;25;26;27;28', 5, 'Хорезмская область, Хива, улица Наджмиддина Кубро, 1', 4, NULL, NULL, 'https://telegra.ph/', '41.383440643342674', '60.359886492065414', 'https://i.imgur.com/KhDUWdq.jpg', 'https://telegra.ph/', 1, 'https://i.imgur.com/UsERfWm.jpg', 'https://i.imgur.com/ZBc1QUy.jpg', 'https://i.imgur.com/j33COkN.jpg', 'https://i.imgur.com/5hmWv2i.jpg', 'https://i.imgur.com/j8XTeFD.jpg', 'https://i.imgur.com/OYH0xap.jpg', 'khivaresidencehotel1', 'khivaresidencehotel1', 'frtBSAFGvw0wQ9zov0HsJRwdg2fbP3a_', '$2y$13$.eL0hjeaaamQuz9zFMQ6aevXQq/bW.v2wkkFsVMuIwQhRc4H633La', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_07_081744_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `module_model` varchar(255) NOT NULL,
  `module_table` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modules`
--

INSERT INTO `modules` (`module_model`, `module_table`) VALUES
('\\App\\Models\\BillingClick', 'billing_click'),
('\\App\\Models\\BillingPayment', 'billing_payments'),
('\\App\\Models\\Booking', 'bookings'),
('\\App\\Models\\Comfortable', 'comfortables'),
('\\App\\Models\\Comment', 'comments'),
('\\App\\Models\\Corp', 'corp'),
('\\App\\Models\\Hotel', 'hotels'),
('\\App\\Models\\PayTran', 'pay_trans'),
('\\App\\Models\\Region', 'regions'),
('\\App\\Models\\Reservation', 'reservations'),
('\\App\\Models\\Room', 'rooms');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pay_trans`
--

DROP TABLE IF EXISTS `pay_trans`;
CREATE TABLE IF NOT EXISTS `pay_trans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pay_id` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pay_time` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `perform_time` datetime DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `pay_amount` int NOT NULL,
  `stat` tinyint NOT NULL,
  `reason` tinyint DEFAULT NULL,
  `receivers` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'JSON array of receivers',
  `pay_acount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Дамп данных таблицы `pay_trans`
--

INSERT INTO `pay_trans` (`id`, `pay_id`, `pay_time`, `perform_time`, `cancel_time`, `pay_amount`, `stat`, `reason`, `receivers`, `pay_acount`) VALUES
(24, '622f46ff959c518f08138309', '1647265535348', NULL, NULL, 5000000, 1, NULL, NULL, '5'),
(25, '622f4848959c518f0813830f', '1647265864001', NULL, NULL, 5000000, 1, NULL, NULL, '4'),
(26, '622f49ae959c518f08138314', '1647266222136', NULL, NULL, 5000000, 1, NULL, NULL, '1'),
(27, '622f49be959c518f08138318', '1647266238295', NULL, NULL, 5000000, 1, NULL, NULL, '2'),
(28, '622fe9ed959c518f0813832e', '1647307245964', NULL, NULL, 5000000, 1, NULL, NULL, '3'),
(29, '63be49be269d10084b46e4b3', '1673415102652', NULL, NULL, 5000000, 1, NULL, NULL, '1'),
(30, '63be4e35269d10084b46e4b9', '1673416245565', NULL, NULL, 6000000, 1, NULL, NULL, '2'),
(31, '63be8d09269d10084b46e50a', '1673432329182', NULL, NULL, 60000000, 1, NULL, NULL, '13'),
(32, '63bea7350ef1d411b8bf7303', '1673439050754', NULL, NULL, 30000, 1, NULL, NULL, '26');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_uz` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `title_ru`, `title_uz`, `title_en`) VALUES
(1, 'Андижан', 'Andijon', 'Andijan'),
(2, 'Бухара', 'Buxoro', 'Bukhara'),
(3, 'Фергана', 'Farg\'ona', 'Fergana'),
(4, 'Джизак', 'Jizzax', 'Jizzakh'),
(5, 'Хорезм', 'Xorazm', 'Khorazm'),
(6, 'Наманган', 'Namangan', 'Namangan'),
(7, 'Навои', 'Navoiy', 'Navoi'),
(8, 'Кашкадарья', 'Qashqadaryo', 'Kashkadarya'),
(9, 'Самарканд', 'Samarqand', 'Samarkand'),
(10, 'Сырдарья', 'Sirdaryo', 'Syrdarya'),
(11, 'Сурхандарьинская', 'Surxondaryo', 'Surkhandarya'),
(12, 'Ташкент', 'Toshkent', 'Tashkent'),
(13, 'город Ташкент', 'Toshkent shahri', 'Tashkent city'),
(14, 'Республика Каракалпакстан', 'Qoraqalpog\'iston Respublikasi', 'Republic of Karakalpakstan'),
(31, 'Все', 'Barchasi', 'All');

-- --------------------------------------------------------

--
-- Структура таблицы `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `hotel_id` int DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `adults` int DEFAULT NULL,
  `children` int DEFAULT NULL,
  `rooms` varchar(255) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'UNPAID',
  `amount` float DEFAULT NULL,
  `order` int DEFAULT NULL,
  `done` tinyint DEFAULT NULL,
  `corp_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `hotel_id`, `start_date`, `end_date`, `pay_type`, `created_at`, `adults`, `children`, `rooms`, `room_type`, `status`, `amount`, `order`, `done`, `corp_id`) VALUES
(46, 43, 74, '2022-12-23 05:00:00', '2022-12-25 05:00:00', 'cash', '2022-12-17 23:52:51', 1, 0, '195', 'double', 'UNPAID', 900000, NULL, 1, NULL),
(47, 42, 74, '2022-12-27 05:00:00', '2022-12-28 05:00:00', 'payme', '2022-12-18 17:24:28', 1, 1, '192', 'triple', 'UNPAID', 600000, NULL, 0, NULL),
(48, 13, 74, '2022-12-29 05:00:00', '2022-12-30 05:00:00', 'payme', '2022-12-18 23:02:46', 2, 0, '192', 'triple', '2', 600000, NULL, 1, NULL),
(49, 18, 74, '2022-12-23 05:00:00', '2022-12-29 05:00:00', 'cash', '2022-12-19 14:47:53', 1, 0, '194', 'single', 'UNPAID', 1500000, NULL, 1, NULL),
(50, 13, 74, '2023-01-22 00:00:00', '2023-01-23 00:00:00', 'payme', '2022-12-26 16:42:46', 2, 0, '192', 'triple', 'UNPAID', 600000, NULL, 1, NULL),
(51, 20, 86, '2022-12-30 05:00:00', '2022-12-31 05:00:00', 'payme', '2022-12-29 15:22:49', 1, 0, '560', 'double', 'UNPAID', 100000, NULL, 1, NULL),
(52, 11, 74, '2022-12-29 05:00:00', '2022-12-31 05:00:00', 'cash', '2022-12-29 16:00:11', 1, 0, '207', 'single', 'UNPAID', 500000, NULL, 0, NULL),
(53, 10, 74, '2023-01-09 00:00:00', '2023-01-10 00:00:00', 'cash', '2022-12-29 16:34:14', 1, 0, '194', 'single', 'UNPAID', 250000, NULL, 0, NULL),
(54, 10, 74, '2023-01-29 00:00:00', '2023-01-30 00:00:00', 'cash', '2022-12-29 16:45:37', 1, 0, '194', 'single', 'UNPAID', 250000, NULL, 1, NULL),
(55, 10, 74, '2022-12-30 05:00:00', '2022-12-31 05:00:00', 'payme', '2022-12-29 17:23:11', 1, 0, '195', 'double', 'UNPAID', 450000, NULL, 0, NULL),
(56, 10, 74, '2022-12-29 05:00:00', '2022-12-31 05:00:00', 'payme', '2022-12-29 19:24:19', 1, 0, '212', 'single', 'UNPAID', 500000, NULL, 0, NULL),
(57, 21, 74, '2023-01-08 00:00:00', '2023-01-10 00:00:00', 'cash', '2023-01-04 12:10:26', 1, 0, '192', 'triple', 'UNPAID', 1200000, NULL, NULL, NULL),
(58, 10, 74, '2023-01-30 00:00:00', '2023-01-31 00:00:00', 'payme', '2023-01-07 15:20:47', 1, 0, '207', 'single', 'UNPAID', 250000, 14373, NULL, NULL),
(59, 13, 74, '2023-01-30 00:00:00', '2023-01-31 00:00:00', 'payme', '2023-01-07 20:21:40', 1, 0, '212', 'single', 'UNPAID', 250000, 58825, NULL, NULL),
(60, 10, 74, '2023-01-23 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 13:09:15', 1, 0, '204', 'deluxe', 'UNPAID', 600000, 86218, NULL, NULL),
(61, 10, 74, '2023-01-23 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 13:10:54', 1, 0, '204', 'deluxe', '2', 600000, 81672, NULL, NULL),
(62, 10, 74, '2023-01-22 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 13:11:26', 1, 0, '195', 'double', 'UNPAID', 900000, 89216, NULL, NULL),
(63, 10, 74, '2023-01-29 00:00:00', '2023-01-31 00:00:00', 'payme', '2023-01-11 13:17:32', 1, 0, '192', 'triple', 'UNPAID', 1200000, 34488, NULL, NULL),
(64, 10, 74, '2023-01-31 00:00:00', '2023-02-01 00:00:00', 'payme', '2023-01-11 13:19:23', 1, 0, '195', 'double', 'UNPAID', 450000, 43638, NULL, NULL),
(65, 10, 74, '2023-01-29 00:00:00', '2023-01-31 00:00:00', 'payme', '2023-01-11 13:44:35', 1, 0, '196', 'double', 'UNPAID', 900000, 45772, NULL, NULL),
(66, 21, 74, '2023-01-14 00:00:00', '2023-01-15 00:00:00', 'payme', '2023-01-11 14:32:20', 1, 0, '195', 'double', 'UNPAID', 450000, 57867, NULL, NULL),
(67, 21, 74, '2023-01-14 00:00:00', '2023-01-15 00:00:00', 'payme', '2023-01-11 14:33:12', 1, 0, '195', 'double', 'UNPAID', 450000, 26612, NULL, NULL),
(68, 21, 74, '2023-01-14 00:00:00', '2023-01-15 00:00:00', 'payme', '2023-01-11 14:33:30', 1, 0, '195', 'double', 'UNPAID', 450000, 48398, NULL, NULL),
(69, 21, 74, '2023-01-14 00:00:00', '2023-01-15 00:00:00', 'payme', '2023-01-11 14:33:48', 1, 0, '195', 'double', 'UNPAID', 450000, 41798, NULL, NULL),
(70, 13, 74, '2023-01-24 00:00:00', '2023-01-25 00:00:00', 'payme', '2023-01-11 15:56:51', 1, 0, '194', 'single', 'UNPAID', 250000, 66817, NULL, NULL),
(71, 13, 74, '2023-01-24 00:00:00', '2023-01-25 00:00:00', 'cash', '2023-01-11 15:56:55', 1, 0, '194', 'single', 'UNPAID', 250000, 34957, NULL, NULL),
(72, 13, 74, '2023-02-23 00:00:00', '2023-02-24 00:00:00', 'cash', '2023-01-11 16:03:56', 1, 0, '195', 'double', 'UNPAID', 450000, 70030, NULL, 1),
(73, 21, 74, '2023-01-15 00:00:00', '2023-01-16 00:00:00', 'payme', '2023-01-11 16:39:45', 1, 0, '196', 'double', 'UNPAID', 450000, 98753, NULL, NULL),
(74, 21, 74, '2023-01-15 00:00:00', '2023-01-16 00:00:00', 'cash', '2023-01-11 16:47:59', 1, 0, '196', 'double', 'UNPAID', 450000, 32701, NULL, NULL),
(75, 21, 74, '2023-01-15 00:00:00', '2023-01-16 00:00:00', 'payme', '2023-01-11 16:49:39', 1, 0, '197', 'double', 'UNPAID', 450000, 54503, NULL, NULL),
(76, 21, 74, '2023-01-15 00:00:00', '2023-01-16 00:00:00', 'cash', '2023-01-11 16:49:41', 1, 0, '197', 'double', 'UNPAID', 450000, 40544, NULL, NULL),
(77, 11, 74, '2023-01-22 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 16:57:31', 1, 0, '193', 'triple', 'UNPAID', 1200000, 21706, NULL, NULL),
(78, 11, 74, '2023-01-22 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 17:00:09', 1, 0, '193', 'triple', 'UNPAID', 1200000, 81764, NULL, NULL),
(79, 11, 74, '2023-01-23 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 17:07:16', 1, 0, '207', 'single', 'UNPAID', 250000, 72172, NULL, NULL),
(80, 11, 74, '2023-01-28 00:00:00', '2023-01-29 00:00:00', 'payme', '2023-01-11 17:10:29', 1, 0, '207', 'single', '2', 300, 49896, NULL, NULL),
(81, 13, 74, '2023-01-23 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-11 23:26:50', 1, 0, '212', 'single', 'UNPAID', 300, 13168, NULL, 1),
(82, 13, 74, '2023-01-21 00:00:00', '2023-01-22 00:00:00', 'payme', '2023-01-12 01:30:26', 1, 0, '199', 'triple', 'UNPAID', 600000, 34439, NULL, NULL),
(83, 13, 74, '2023-01-17 00:00:00', '2023-01-18 00:00:00', 'cash', '2023-01-13 21:56:12', 1, 0, '194', 'single', 'UNPAID', 300, 67747, NULL, NULL),
(84, 13, 74, '2023-01-23 00:00:00', '2023-01-24 00:00:00', 'payme', '2023-01-16 13:43:26', 1, 0, '196', 'double', 'UNPAID', 450000, 26079, NULL, NULL),
(85, 13, 74, '2023-01-21 00:00:00', '2023-01-22 00:00:00', 'payme', '2023-01-19 14:29:04', 2, 0, '196', 'double', 'UNPAID', 450000, 34255, NULL, NULL),
(86, 21, 74, '2023-01-21 00:00:00', '2023-01-22 00:00:00', 'payme', '2023-01-21 23:27:27', 1, 0, '203', 'triple', 'UNPAID', 600000, 17002, NULL, 1),
(87, 21, 74, '2023-01-21 00:00:00', '2023-01-22 00:00:00', 'cash', '2023-01-21 23:29:03', 1, 0, '211', 'triple', 'UNPAID', 600000, 47343, NULL, NULL),
(88, 13, 74, '2023-02-16 00:00:00', '2023-02-17 00:00:00', 'payme', '2023-01-24 12:09:38', 1, 0, '194', 'single', 'UNPAID', 300, 89963, NULL, NULL),
(89, 13, 74, '2023-02-15 00:00:00', '2023-02-16 00:00:00', 'cash', '2023-02-03 23:12:54', 1, 0, '207', 'single', 'UNPAID', 300, 59830, NULL, NULL),
(90, 13, 74, '2023-02-23 00:00:00', '2023-02-24 00:00:00', 'cash', '2023-02-03 23:56:12', 1, 0, '194', 'single', 'UNPAID', 300, 21740, NULL, NULL),
(91, 11, 74, '2023-02-13 00:00:00', '2023-02-16 00:00:00', 'cash', '2023-02-07 19:43:01', 1, 0, '212', 'single', 'UNPAID', 900, 59284, NULL, NULL),
(92, 13, 74, '2023-02-17 00:00:00', '2023-02-18 00:00:00', 'cash', '2023-02-11 16:57:17', 2, 0, '192', 'triple', 'UNPAID', 600000, 88320, NULL, NULL),
(93, 61, 74, '2023-02-15 00:00:00', '2023-02-16 00:00:00', 'cash', '2023-02-12 00:55:57', 1, 0, '195', 'double', 'REJECTED', 450000, 35111, NULL, NULL),
(94, 61, 74, '2023-02-23 00:00:00', '2023-02-24 00:00:00', 'payme', '2023-02-12 11:09:03', 1, 0, '196', 'double', 'REJECTED', 450000, 21982, NULL, NULL),
(95, 61, 74, '2023-02-17 00:00:00', '2023-02-18 00:00:00', 'cash', '2023-02-12 19:04:05', 1, 0, '207', 'single', 'REJECTED', 300, 73493, NULL, NULL),
(96, 58, 74, '2023-02-27 00:00:00', '2023-02-28 00:00:00', 'payme', '2023-02-13 02:10:53', 1, 0, '204', 'deluxe', 'REJECTED', 600000, 68909, NULL, 1),
(97, 61, 74, '2023-02-15 00:00:00', '2023-02-16 00:00:00', 'cash', '2023-02-15 17:21:18', 1, 0, '196', 'double', 'UNPAID', 450000, 37761, NULL, NULL),
(98, 61, 74, '2023-02-20 00:00:00', '2023-02-22 00:00:00', 'payme', '2023-02-17 13:50:58', 1, 0, '192', 'triple', 'UNPAID', 1200000, 47354, NULL, NULL),
(99, 61, 86, '2023-02-21 00:00:00', '2023-02-22 00:00:00', 'cash', '2023-02-17 21:02:35', 1, 0, '560', 'double', 'UNPAID', 100000, 92304, NULL, NULL),
(100, 61, 74, '2023-02-22 00:00:00', '2023-02-23 00:00:00', 'cash', '2023-02-20 00:24:44', 1, 0, '193', 'triple', 'UNPAID', 600000, 36229, NULL, NULL),
(101, 69, 74, '2023-02-27 00:00:00', '2023-02-28 00:00:00', 'cash', '2023-02-24 00:54:14', 1, 0, '192', 'triple', 'UNPAID', 600000, 31284, NULL, NULL),
(102, 61, 74, '2023-03-21 00:00:00', '2023-03-22 00:00:00', 'payme', '2023-02-24 01:37:18', 1, 0, '194', 'single', 'UNPAID', 300, 58155, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `hotel_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `photo_second` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `square` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `cleaned` datetime DEFAULT NULL,
  `cleaned_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `hotel_id`, `title`, `type`, `active`, `price`, `size`, `photo`, `photo_second`, `color`, `square`, `status`, `cleaned`, `cleaned_type`) VALUES
(192, 74, '1', 'triple', 1, '600000', 3, '', '', 'FF0000', '8', 'KEEPING', '2022-12-26 21:49:57', 'GENERALCLEANING'),
(193, 74, '2', 'triple', 1, '600000', 3, 'https://i.imgur.com/EaLijj6.jpg', '', 'FF0000', '8', 'KEEPING', '2022-12-26 21:14:29', 'GENERALCLEANING'),
(194, 74, '3', 'single', 0, '300', 1, 'https://i.imgur.com/YSX6ZAC.jpg', '', '00FF00', '6', '', NULL, NULL),
(195, 74, '4', 'double', 1, '450000', 2, 'https://i.imgur.com/vSZuXO0.jpg', '', 'FFFF00', '7', '', NULL, NULL),
(196, 74, '5', 'double', 1, '450000', 2, 'https://i.imgur.com/smGbpvo.jpg', '', 'FFFF00', '7', '', NULL, NULL),
(197, 74, '6', 'double', 1, '450000', 2, 'https://i.imgur.com/boHdp23.jpg', '', 'FFFF00', '7', '', NULL, NULL),
(198, 74, '7', 'double', 1, '450000', 2, 'https://i.imgur.com/9jGHJFy.jpg', '', 'FFFF00', '7', '', NULL, NULL),
(199, 74, '8', 'triple', 1, '600000', 3, 'https://i.imgur.com/M08FZR6.jpg', '', 'FF0000', '8', NULL, NULL, NULL),
(200, 74, '9', 'double', 1, '450000', 2, 'https://i.imgur.com/1iYEutU.jpg', '', '00FF00', '7', 'KEEPING', '2022-12-27 12:30:23', 'DAILYCLEANING'),
(201, 74, '10', 'double', 1, '450000', 2, 'https://i.imgur.com/jyGq962.jpg', '', 'FFFF00', '7', NULL, NULL, NULL),
(202, 74, '11', 'double', 1, '450000', 2, 'https://i.imgur.com/dp2r9MX.jpg', '', 'FFFF00', '7', NULL, NULL, NULL),
(203, 74, '12', 'triple', 1, '600000', 3, 'https://i.imgur.com/uLrGq3W.jpg', '', 'FF0000', '8', NULL, NULL, NULL),
(204, 74, '13', 'deluxe', 1, '600000', 3, 'https://i.imgur.com/uDKorST.jpg', '', 'FFD700', '30', NULL, NULL, NULL),
(205, 74, '14', 'double', 1, '450000', 2, 'https://i.imgur.com/DYTr8Q5.jpg', '', 'FFFF00', '24', NULL, NULL, NULL),
(206, 74, '15', 'double', 1, '450000', 2, 'https://i.imgur.com/TFuoqf6.jpg', '', 'FFFF00', '24', NULL, NULL, NULL),
(207, 74, '16', 'single', 1, '300', 1, 'https://i.imgur.com/t6RrsPc.jpg', '', '00FF00', '12', 'CLEANED', '2022-12-27 13:09:38', 'GENERALCLEANING'),
(208, 74, '17', 'double', 0, '450000', 2, 'https://i.imgur.com/k2UZIt4.jpg', '', 'FFFF00', '24', NULL, NULL, NULL),
(209, 74, '18', 'double', 1, '450000', 2, 'https://i.imgur.com/UEGRsfB.jpg', '', 'FFFF00', '24', NULL, NULL, NULL),
(210, 74, '19', 'double', 1, '450000', 2, 'https://i.imgur.com/14zxuqn.jpg', '', 'FFFF00', '24', 'REPEAIR', '2022-12-26 21:55:38', 'REPAIR'),
(211, 74, '20', 'triple', 1, '600000', 3, 'https://i.imgur.com/I7lzFZE.jpg', '', 'FF0000', '28', 'CLEANED', '2022-12-28 13:29:50', 'GENERALCLEANING'),
(212, 74, '21', 'single', 0, '300', 1, 'https://i.imgur.com/YXI58km.jpg', '', '00FF00', '12', 'CLEANED', '2022-12-26 21:55:15', 'DAILYCLEANING'),
(213, 74, '22', 'triple', 1, '600000', 3, 'https://i.imgur.com/iPrnTrr.jpg', '', 'FF0000', '24', NULL, NULL, NULL),
(214, 74, '23', 'double', 1, '450000', 2, 'https://i.imgur.com/33M2U7s.jpg', '', 'FFFF00', '12', NULL, NULL, NULL),
(545, 84, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 84, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 84, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 84, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 84, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 84, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 84, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 84, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 84, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 84, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 84, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 84, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 84, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 84, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 84, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 86, '1', 'double', 1, '100000', 2, '', '', '00FF00', '20', NULL, NULL, NULL),
(561, 86, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 86, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 86, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 86, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 86, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 86, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 86, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 86, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 86, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 86, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 86, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 86, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 86, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 86, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 87, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 87, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 87, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 87, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 87, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 87, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 87, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 87, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 87, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 87, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 87, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 88, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 88, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 88, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 88, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 88, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 88, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 88, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 88, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 88, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 88, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 88, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 88, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 88, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 88, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 88, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 88, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 88, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 88, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 89, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 89, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 89, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 89, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 89, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 89, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 90, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 90, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 90, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 90, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 90, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(679, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 90, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 90, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 90, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 90, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 90, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 91, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 91, NULL, 'single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 91, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 91, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 91, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 91, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 91, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 91, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 91, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 91, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 91, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 91, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 91, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 91, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 92, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 92, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 92, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 92, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 92, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 92, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 92, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 92, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 92, NULL, 'deluxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 94, NULL, 'double', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, 94, NULL, 'twin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 94, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 94, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 94, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 94, NULL, 'triple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 94, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 94, NULL, 'family', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `telegram_id` bigint DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `telegram_id`, `full_name`, `phone_number`, `lang`) VALUES
(57, NULL, NULL, NULL, NULL, NULL, '2022-11-03 06:17:24', NULL, 5021772241, 'Anonymous', '998937268177', 'uz'),
(58, NULL, NULL, NULL, NULL, NULL, '2022-11-03 11:24:05', NULL, 1786445409, 'Samandar Turdiyev', '998996944796', 'ru'),
(59, NULL, NULL, NULL, NULL, NULL, '2022-11-08 09:10:52', NULL, 84930891, 'Sh A', '998974105800', 'ru'),
(60, NULL, NULL, NULL, NULL, NULL, '2022-11-08 09:20:41', NULL, 540094608, 'GM_HOTEL_UZB', '998977079538', 'ru'),
(61, NULL, NULL, NULL, NULL, NULL, '2022-11-08 10:24:12', NULL, 79815807, 'Jasur T', '998935859006', 'ru'),
(62, NULL, NULL, NULL, NULL, NULL, '2022-11-08 12:23:06', NULL, 177674677, 'Qodirjon Yusupov', '998977160301', 'uz'),
(63, NULL, NULL, NULL, NULL, NULL, '2022-11-11 02:24:05', NULL, 42749790, 'Abduaziz Mirzayokhubov', '998977262925', 'ru'),
(64, NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:50:59', NULL, 350460, 'Davron', '998998488299', 'uz'),
(65, NULL, NULL, NULL, NULL, NULL, '2022-11-12 04:27:50', NULL, 728339162, 'Abdu_al_Aziyz', '998977410558', 'uz'),
(66, NULL, NULL, NULL, NULL, NULL, '2022-11-12 14:49:59', NULL, 1071484160, 'Abduaziz Mirza', '998977262925', 'ru'),
(67, NULL, NULL, NULL, NULL, NULL, '2022-11-14 12:05:19', NULL, 1501372354, '🌿jaxongir', '998979802004', 'uz'),
(68, NULL, NULL, NULL, NULL, NULL, '2022-11-14 14:01:50', NULL, 1087177426, 'Bobir Daminov', '998887017127', 'uz'),
(69, NULL, NULL, NULL, NULL, NULL, '2022-11-14 14:41:52', NULL, 208161495, 'SLT', '998977041755', 'ru'),
(70, NULL, NULL, NULL, NULL, NULL, '2022-11-14 18:24:43', NULL, 5275495864, '𝔻𝕚𝕒𝕟𝕒', '998900150381', NULL),
(71, NULL, NULL, NULL, NULL, NULL, '2022-11-18 01:10:48', NULL, 770721568, 'OAZIS TASHKENT HOTEL', '998901253000', NULL),
(72, NULL, NULL, NULL, NULL, NULL, '2022-11-20 15:20:17', NULL, 5756553455, 'Hidden', '998974105800', NULL),
(73, NULL, NULL, NULL, NULL, NULL, '2022-11-21 13:13:25', NULL, 5248526993, 'Bektosh Voxidov', '998934323003', NULL),
(74, NULL, NULL, NULL, NULL, NULL, '2022-11-25 01:25:33', NULL, 1009107256, 'Bek', '998990048488', NULL),
(75, NULL, NULL, NULL, NULL, NULL, '2022-11-26 04:32:56', NULL, 5842494495, 'Saule', '998909373510', NULL),
(76, NULL, NULL, NULL, NULL, NULL, '2022-11-26 06:13:16', NULL, NULL, '123', '123', NULL),
(77, NULL, NULL, NULL, NULL, NULL, '2022-11-26 06:14:08', NULL, NULL, 'Shoyad', 'test', NULL),
(78, NULL, NULL, NULL, NULL, NULL, '2022-11-26 06:45:40', NULL, NULL, 'Test', '998974105800', NULL),
(79, NULL, NULL, NULL, NULL, NULL, '2022-11-26 06:45:48', NULL, NULL, '213123', '123123', NULL),
(80, NULL, NULL, NULL, NULL, NULL, '2022-11-26 13:59:57', NULL, 367340790, 'Matthew', '998912426622', NULL),
(81, NULL, NULL, NULL, NULL, NULL, '2022-11-26 14:17:05', NULL, 48184826, 'Zafar Rustamovich', '998932877777', NULL),
(82, NULL, NULL, NULL, NULL, NULL, '2022-11-26 14:53:38', NULL, NULL, '333', '433', NULL),
(83, NULL, NULL, NULL, NULL, NULL, '2022-11-26 15:49:01', NULL, NULL, 'kjkjk', 'jkkkj', NULL),
(84, NULL, NULL, NULL, NULL, NULL, '2022-11-26 17:17:14', NULL, 5700171801, 'Azizjon', '998910157969', NULL),
(85, NULL, NULL, NULL, NULL, NULL, '2022-11-26 17:45:16', NULL, NULL, '', '', NULL),
(86, NULL, NULL, NULL, NULL, NULL, '2022-11-26 17:47:17', NULL, 643148199, 'JeyBi', '998943404334', NULL),
(87, NULL, NULL, NULL, NULL, NULL, '2022-11-27 10:42:26', NULL, 1626772163, 'أم صفية', '998990162420', 'ru'),
(88, NULL, NULL, NULL, NULL, NULL, '2022-11-29 15:31:41', NULL, NULL, '123', '123', NULL),
(89, NULL, NULL, NULL, NULL, NULL, '2022-11-30 07:22:28', NULL, NULL, 'dgdfg', 'ggdfg', NULL),
(90, NULL, NULL, NULL, NULL, NULL, '2022-12-15 21:50:11', NULL, 1157280822, 'Abdullox Imomberdiyev', '998998222371', 'uz'),
(91, NULL, NULL, NULL, NULL, NULL, '2022-12-17 18:50:56', NULL, 2008808130, 'Азизбек Ахмадалиев', '998888201201', NULL),
(92, NULL, NULL, NULL, NULL, NULL, '2022-12-22 17:33:46', NULL, 629415433, 'Ilyos🪐', '998990889603', NULL),
(93, NULL, NULL, NULL, NULL, NULL, '2022-12-24 15:01:47', NULL, NULL, '123', '123', NULL),
(94, NULL, NULL, NULL, NULL, NULL, '2022-12-24 15:14:58', NULL, NULL, '67866768tb', '', NULL),
(95, NULL, NULL, NULL, NULL, NULL, '2022-12-24 20:33:02', NULL, NULL, 'Jasur', '9097656789', NULL),
(96, NULL, NULL, NULL, NULL, NULL, '2022-12-24 21:06:31', NULL, NULL, 'Test', '998974105800', NULL),
(97, NULL, NULL, NULL, NULL, NULL, '2022-12-24 21:07:16', NULL, NULL, 'test', '998974105800', NULL),
(98, NULL, NULL, NULL, NULL, NULL, '2022-12-24 21:51:26', NULL, NULL, 'test', '', NULL),
(99, NULL, NULL, NULL, NULL, NULL, '2022-12-25 00:31:45', NULL, NULL, 'Ibrokhimov Sarvar', '99899822371', NULL),
(100, NULL, NULL, NULL, NULL, NULL, '2022-12-25 00:33:42', NULL, NULL, 'YUSUPOV EXSON FAYZIMUHAMMAD UGLI', '998911253000', NULL),
(101, NULL, NULL, NULL, NULL, NULL, '2022-12-25 23:15:50', NULL, NULL, 'Ortikov', '998911253000', NULL),
(102, NULL, NULL, NULL, NULL, NULL, '2022-12-26 10:48:07', NULL, NULL, 'Ibrokhimov Sarvar', '', NULL),
(103, NULL, NULL, NULL, NULL, NULL, '2022-12-26 10:51:08', NULL, NULL, 'Уткин  Эдуард', '998901253000', NULL),
(104, NULL, NULL, NULL, NULL, NULL, '2022-12-26 10:53:19', NULL, NULL, 'Уткин  Эдуард', '998901253000', NULL),
(105, NULL, NULL, NULL, NULL, NULL, '2022-12-26 11:00:15', NULL, NULL, 'Долгих Андрей', '998901253000', NULL),
(106, NULL, NULL, NULL, NULL, NULL, '2022-12-26 11:01:34', NULL, NULL, 'Тищенко Валерия', '998901253000', NULL),
(107, NULL, NULL, NULL, NULL, NULL, '2022-12-26 11:03:09', NULL, NULL, 'Отаназаров Мухаммадали', '99899822371', NULL),
(108, NULL, NULL, NULL, NULL, NULL, '2022-12-26 11:04:44', NULL, NULL, 'Мухиддинов Сардор', '998901253000', NULL),
(109, NULL, NULL, NULL, NULL, NULL, '2022-12-26 11:06:35', NULL, NULL, '2132', '213123', NULL),
(110, NULL, NULL, NULL, NULL, NULL, '2022-12-26 11:07:05', NULL, NULL, 'Каххоров Шавкат', '998901253000', NULL),
(111, NULL, NULL, NULL, NULL, NULL, '2022-12-26 15:12:16', NULL, NULL, 'test', '998974105800', NULL),
(112, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:09:35', NULL, NULL, '', '', NULL),
(113, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:13:50', NULL, NULL, '', '', NULL),
(114, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:14:28', NULL, NULL, '123123', '', NULL),
(115, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:14:34', NULL, NULL, '2323', '', NULL),
(116, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:34:55', NULL, NULL, '21323', '', NULL),
(117, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:38:23', NULL, NULL, '123213', '', NULL),
(118, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:52:45', NULL, NULL, '23', '', NULL),
(119, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:53:32', NULL, NULL, '1', '', NULL),
(120, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:54:42', NULL, NULL, '2', '', NULL),
(121, NULL, NULL, NULL, NULL, NULL, '2022-12-26 17:57:43', NULL, NULL, '1', '', NULL),
(122, NULL, NULL, NULL, NULL, NULL, '2022-12-26 18:14:52', NULL, NULL, 'bob', 'ry893214y1832', NULL),
(123, NULL, NULL, NULL, NULL, NULL, '2022-12-26 18:15:39', NULL, NULL, 'test', '', NULL),
(124, NULL, NULL, NULL, NULL, NULL, '2022-12-26 18:16:06', NULL, NULL, '123213', '', NULL),
(125, NULL, NULL, NULL, NULL, NULL, '2022-12-26 20:52:04', NULL, NULL, 'test', '213', NULL),
(126, NULL, NULL, NULL, NULL, NULL, '2022-12-26 21:03:48', NULL, NULL, '123', '', NULL),
(127, NULL, NULL, NULL, NULL, NULL, '2022-12-26 21:12:18', NULL, NULL, 'test', '123213', NULL),
(128, NULL, NULL, NULL, NULL, NULL, '2022-12-26 21:14:17', NULL, NULL, '123', '23', NULL),
(129, NULL, NULL, NULL, NULL, NULL, '2022-12-26 21:15:26', NULL, NULL, 'Test123', '23', NULL),
(130, NULL, NULL, NULL, NULL, NULL, '2022-12-26 22:19:47', NULL, NULL, 'bob', '', NULL),
(131, NULL, NULL, NULL, NULL, NULL, '2022-12-27 13:14:34', NULL, NULL, 'Abdunazarov Orif', '901253000', NULL),
(132, NULL, NULL, NULL, NULL, NULL, '2022-12-28 03:57:20', NULL, NULL, 'Tuxtayev Ravshan Farxadovich', '', NULL),
(133, NULL, NULL, NULL, NULL, NULL, '2022-12-28 13:07:22', NULL, 5686072570, 'Innside Support', '998951460770', NULL),
(134, NULL, NULL, NULL, NULL, NULL, '2022-12-28 15:27:24', NULL, 1909997445, 'Shaxzod', '998936176467', NULL),
(135, NULL, NULL, NULL, NULL, NULL, '2022-12-29 09:11:30', NULL, 5834207530, 'Гранд Стар', '998973104000', NULL),
(136, NULL, NULL, NULL, NULL, NULL, '2023-02-04 05:03:41', NULL, 1084052296, 'EiGo\' ', '998932450066', NULL),
(137, NULL, NULL, NULL, NULL, NULL, '2023-02-04 09:01:43', NULL, 961748627, 'Arslanov', '998998465666', 'ru'),
(138, NULL, NULL, NULL, NULL, NULL, '2023-02-04 10:57:25', NULL, 5866997324, 'Dip Tech', '998998465666', 'ru'),
(139, NULL, NULL, NULL, NULL, NULL, '2023-02-04 11:06:10', NULL, 885456993, '.🇺🇿', '998998465666', 'ru'),
(140, NULL, NULL, NULL, NULL, NULL, '2023-02-06 12:02:17', NULL, 878065098, '|•jahongir', '998998465666', 'ru'),
(141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5716490998, 'Inart ', '+998994195666', 'ru'),
(142, 'Rustam Mannopov', 'mannopovr@gmail.com', NULL, '$2y$10$LVgaMO3gKIMaVF7orlf.4eWKC4rTum/g9QQ7G0ssNcZAnjvKRTHXG', NULL, '2023-03-07 03:29:16', '2023-03-07 03:29:16', NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
