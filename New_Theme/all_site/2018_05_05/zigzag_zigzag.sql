-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 24 2018 г., 15:53
-- Версия сервера: 5.5.33-log
-- Версия PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `zigzag_zigzag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Очистить таблицу перед добавлением данных `oc_address`
--

TRUNCATE TABLE `oc_address`;
--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(7, 7, 'Olga', 'Fed', '', '', '', 'Хрещатик 2', '', 'Київ', '', 220, 3491),
(6, 6, 'Лиренр', 'Дмитрий', '', '', '', 'йййййййй', '', 'Киев', '', 220, 3491),
(4, 4, 'Ira', 'Gavrilenko', '', '', '', 'киев', '', 'киев', '', 220, 3490),
(5, 5, 'виктория', 'грищук', '', '', '', 'табирна', '', 'киев', '', 220, 3491),
(8, 8, 'Анастасия', 'Педоренко', '', '', '', 'Днепропетровск', '', 'Днепропетровск', '', 220, 3484),
(9, 11, 'Юлія', 'Сливка', '', '', '', 'Незалежності', '', 'Стара Вижівка', '', 220, 3502),
(10, 12, 'Наталя', 'Наунко', '', '', '', '', '', 'Львів', '', 220, 0),
(11, 13, 'Лилия', 'Кшнякина', '', '', '', 'ул. Харьковская, д. 23, кв. 53', '', 'Белицкое', '', 220, 3485),
(12, 14, 'Катерина', 'Руденко', '', '', '', 'вул. Середньофонтанська, 34', '', 'Одеса', '', 220, 3495),
(13, 15, 'Анастасія', 'Пода', '', '', '', 'Грушевського 5/14', '', 'Тернопіль', '', 220, 3500),
(14, 16, 'Наталья', 'Загоруйко', '', '', '', 'бул. И. Лепсе, 4', '', 'Киев', '', 220, 0),
(15, 17, 'Олена', 'Шафієва', '', '', '', 'пр-т Перемоги,67', '', 'Київ', '', 220, 0),
(16, 18, 'Світлана', 'Дяків', '', '', '', '', '', 'Львів', '', 220, 0),
(17, 19, 'Наталья', 'Короткова', '', '', '', 'НП склад 59', '', 'Днепропетровск', '', 220, 3484),
(18, 20, 'Лариса', 'Левченко', '', '', '', 'Шенгелия, б.2, кв.74', '', 'Херсон', '', 220, 3970),
(28, 30, 'Анна', 'Сервули', '', '', '', 'Московская, 30', '', 'Херсон', '', 220, 3970),
(29, 31, 'Марина', 'Левицька', '', '', '', 'Червоноармійська, 100', '', 'Київ', '03179', 220, 3491),
(23, 25, 'sf', 'sf', '', '', '', 'kuhgi', '', 'ff', '', 220, 3495),
(26, 28, 'Юлия', 'Чернова', '', '', '', 'ул. Большая Васильковская,100', '', 'Київ', '', 220, 0),
(27, 29, 'Oksana', 'Kozak', '', '', '', 'Крехівська', '', 'Lviv', '', 220, 3493),
(30, 32, 'Елена', 'Андрущук', '', '', '', '', '', 'Запорожье', '', 220, 0),
(31, 33, 'Ганна', 'Ковальчук', '', '', '', 'Наукова', '', 'Львів', '', 220, 3493),
(32, 8, 'Мельник', 'Марина', '', '', '', '', '', 'Днепропетровск', '', 220, 0),
(33, 34, 'Валентина', 'Минчева', '', '', '', 'Щорса', '', 'Измаил', '', 220, 3495),
(34, 35, 'Марина', 'Шиловская', '', '', '', 'Карла Маркса 45', '', 'Днепропетровск', '', 220, 3484),
(35, 36, 'Анастасія', 'Коваленко', '', '', '', 'Грінченко 31', '', 'Чернігів', '', 220, 3481),
(36, 37, 'Ганна', 'Акименко', '', '', '', '', '', 'Харків', '', 220, 0),
(37, 38, 'CВІТЛАНА', 'ЮХИМОВИЧ', '', '', '', '', '', 'смт.Оржиця Полтавської області', '', 220, 0),
(38, 39, 'Мариша', 'Блинова', '', '', '', 'ул.Горького', '', 'Измаил', '', 220, 3495),
(39, 40, 'Ірина', 'Жила', '', '', '', '', '', 'Черкаси', '', 220, 0),
(40, 41, 'Наталия', 'Яковлева', '', '', '', '', '', '', '', 220, 0),
(41, 42, 'Анна', 'Савицкая', '', '', '', '', '', '', '', 220, 0),
(42, 43, 'Наталя', 'Раєвська', '', '', '', 'Іллінська-8', '', 'Київ', '', 220, 0),
(43, 44, 'Ірина', 'Дубина', '', '', '', 'Жабинського', '', 'Чернігів', '', 220, 3481),
(44, 45, 'Людмила', 'Фарион', '', '', '', 'улица Теремковская, дом 21,кв.60', '', 'Киев', '', 220, 3490),
(45, 46, 'Ольга', 'Коломоєць', '', '', '', '', '', '', '', 220, 0),
(46, 47, 'Елена', 'Шеронина', '', '', '', '', '', 'Киев', '', 220, 0),
(47, 48, 'Лара', 'Довгаленко', '', '', '', '', '', 'Киев', '', 220, 0),
(48, 49, 'Віта', 'Терещенко', '', '', '', 'пр-т. Григоренка, 38а', '', 'Київ', '', 220, 3491),
(49, 50, 'Ірина', 'Анічина', '', '', '', 'бульвар Жасміновий 4А', '', 'Харьков', '', 220, 3487),
(50, 51, 'Инна', 'Кедык', '', '', '', 'улица Солнечная, 19/55', '', 'Кривой Рог', '50102', 220, 3484),
(51, 52, 'Олена', 'Эфiмова', '', '', '', 'Осв', '', 'Киев', '', 220, 3491),
(52, 53, 'Олена', 'Грубнікова', '', '', '', 'вул, Боричів Тік, б. 25', '', 'Київ', '', 220, 0),
(53, 54, 'Наталія', 'Мошковська', '', '', '', '...', '', 'с. Тарасівка', '', 220, 3490),
(54, 55, 'Єлизавета', 'Деревянко', '', '', '', '', '', '', '', 220, 0),
(55, 56, 'Юлия', 'Смойловская', '', '', '', '', '', 'Киів', '', 220, 0),
(56, 57, 'Наталя', 'Михальчук', '', '', '', '', '', 'Херсон', '', 220, 0),
(57, 58, 'Євгенія', 'Бабчинецька', '', '', '', 'Чайковського 4,19', '', 'Миколаїв', '', 220, 3494),
(58, 59, 'Оксана', 'Шаповалова', '', '', '', 'пр. Текстильщиков 9, кв 104', '', 'Херсон', '', 220, 0),
(59, 59, 'Мария', 'Фридман', '', '', '', 'ул. Маршала Жукова 24а, кв 3', '', '', '', 220, 3491),
(60, 60, 'Алла', 'Плєшко', '', '', '', 'Заболотного 58/137', '', 'Одеса', '', 220, 3495),
(61, 61, 'Людмила', 'Петрищенко', '', '', '', 'Стеценка 1а', '', 'Київ', '', 220, 3491),
(62, 62, 'Marina', 'Marina', '', '', '', 'пров Лабораторний, 6', '', 'Киев', '', 220, 0),
(63, 63, 'Елена', 'Дороцкая', '', '', '', 'Кожемяки', '', 'Днепр', '', 220, 3484),
(64, 64, 'Вероніка', 'Корнатовська', '', '', '', '', '', '', '', 220, 0),
(65, 65, 'Оксана', 'Кравець', '', '', '', 'Плугова 4а', '', 'Львів', '', 220, 3493),
(66, 52, 'Олена', 'Єфiмова', '', '', '', 'пр. Маяковського, 1в', '', 'Київ', '', 220, 0),
(67, 66, 'Наіра', 'Агакарян', '', '', '', 'Кловський узвіз', '', 'Київ', '', 220, 3490),
(68, 67, 'Олена', 'Дячук', '', '', '', 'вул.Мельника,7', '', 'с.Літки', '', 220, 3490),
(69, 68, 'Наталия', 'Хуторная', '', '', '', '', '', 'Сосница', '', 220, 0),
(70, 69, 'Ірина', 'Кевлюк', '', '', '', 'Боголюбова,14', '', 'Софіївська Борщагівка', '', 220, 3490),
(71, 70, 'Марія', 'Мудра', '', '', '', '', '', 'Тернопіль', '', 220, 0),
(72, 71, 'Кристина', 'Сомова', '', '', '', 'Сикорского 4В', '', 'Киев', '', 220, 3491),
(73, 72, 'Инна', 'Олищук', '', '', '', '', '', 'Херсон', '', 220, 0),
(74, 73, 'София', 'Гаранина', '', '', '', 'Европейская, 6,кв.100', '', 'Вишнёвый', '', 220, 3491),
(75, 74, 'Оксана', 'Томашенко', '', '', '', '', '', 'Київ', '', 220, 0),
(76, 75, 'miss', 'kostuk', '', '', '', 'виговського', '', 'Стрий', '', 220, 3493),
(77, 76, 'Elena', 'Motrenko', '', '', '', '', '', 'Новомосковск', '', 220, 0),
(78, 76, 'Елена', 'Мотренко', '', '', '', 'Ул.массоковского 1а', '', '', '', 220, 3484),
(79, 77, 'Marta', 'Bilous', '', '', '', 'Левандівська 16, 5', '', 'Львів', '79025', 220, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_affiliate`
--

TRUNCATE TABLE `oc_affiliate`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_affiliate_transaction`
--

TRUNCATE TABLE `oc_affiliate_transaction`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Очистить таблицу перед добавлением данных `oc_attribute`
--

TRUNCATE TABLE `oc_attribute`;
--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_attribute_description`
--

TRUNCATE TABLE `oc_attribute_description`;
--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Очистить таблицу перед добавлением данных `oc_attribute_group`
--

TRUNCATE TABLE `oc_attribute_group`;
--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_attribute_group_description`
--

TRUNCATE TABLE `oc_attribute_group_description`;
--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Очистить таблицу перед добавлением данных `oc_banner`
--

TRUNCATE TABLE `oc_banner`;
--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Samsung Tab', 1),
(8, 'Manufacturers', 1),
(9, 'Title_Slideshow', 1),
(10, 'New_Collection2014', 1),
(11, 'NY2015', 1),
(12, 'Vacation', 0),
(13, 'Made in Ukr', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=497 ;

--
-- Очистить таблицу перед добавлением данных `oc_banner_image`
--

TRUNCATE TABLE `oc_banner_image`;
--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(87, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'data/demo/samsung_banner.jpg'),
(80, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/hp_banner.jpg'),
(85, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/demo/palm_logo.jpg'),
(84, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=10', 'data/demo/sony_logo.jpg'),
(83, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=9', 'data/demo/canon_logo.jpg'),
(82, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'data/demo/apple_logo.jpg'),
(81, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=5', 'data/demo/htc_logo.jpg'),
(86, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/hp_logo.jpg'),
(88, 10, '', 'data/banner_new2014.jpg'),
(166, 13, '', 'data/banner/uim_color.jpg'),
(164, 11, '', 'data/products/vesna15/Studio_09_03_2015-107.jpg'),
(418, 12, '', 'data/banner/vacation2017.jpg'),
(495, 9, '', 'data/banner/Kamizelka_01725_1.jpg'),
(496, 9, '', 'data/banner/Kamizelka_02964.jpg'),
(494, 9, 'https://kamizelka.in.ua/zhiletki/zhiletka-sherstyanaya-seraya-kletka-ka-21.html', 'data/banner/01218.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_banner_image_description`
--

TRUNCATE TABLE `oc_banner_image_description`;
--
-- Дамп данных таблицы `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(87, 1, 7, 'Samsung Tab 10.1'),
(80, 1, 6, 'HP Banner'),
(86, 3, 8, 'Hewlett-Packard'),
(85, 1, 8, 'Palm'),
(85, 2, 8, 'Palm'),
(85, 3, 8, 'Palm'),
(84, 1, 8, 'Sony'),
(87, 2, 7, 'Samsung Tab 10.1'),
(80, 2, 6, 'HP Banner'),
(84, 2, 8, 'Sony'),
(84, 3, 8, 'Sony'),
(83, 1, 8, 'Canon'),
(83, 2, 8, 'Canon'),
(83, 3, 8, 'Canon'),
(87, 3, 7, 'Samsung Tab 10.1'),
(80, 3, 6, 'HP Banner'),
(82, 1, 8, 'Apple'),
(82, 2, 8, 'Apple'),
(82, 3, 8, 'Apple'),
(81, 1, 8, 'HTC'),
(81, 2, 8, 'HTC'),
(81, 3, 8, 'HTC'),
(86, 2, 8, 'Hewlett-Packard'),
(86, 1, 8, 'Hewlett-Packard'),
(88, 3, 10, 'New_Collection2014'),
(88, 2, 10, 'New_Collection2014'),
(88, 1, 10, 'New_Collection2014'),
(418, 3, 12, '00'),
(418, 2, 12, '00'),
(418, 1, 12, '00'),
(166, 1, 13, 'Made in Ukraine'),
(166, 2, 13, 'Made in Ukraine'),
(166, 3, 13, 'Made in Ukraine'),
(496, 1, 9, '00'),
(496, 2, 9, '00'),
(164, 1, 11, 'NY'),
(164, 2, 11, 'NY'),
(164, 3, 11, 'NY'),
(496, 3, 9, '00'),
(495, 1, 9, '01'),
(495, 2, 9, '01'),
(495, 3, 9, '01'),
(494, 1, 9, '02'),
(494, 2, 9, '02'),
(494, 3, 9, '02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Очистить таблицу перед добавлением данных `oc_category`
--

TRUNCATE TABLE `oc_category`;
--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(24, '', 0, 1, 1, 4, 1, '2009-01-20 02:36:26', '2017-12-23 00:32:34'),
(59, '', 0, 1, 1, 1, 1, '2014-05-07 13:53:48', '2017-12-23 00:31:36'),
(60, '', 0, 1, 1, 2, 1, '2014-05-10 23:00:44', '2017-12-23 00:31:49'),
(63, '', 0, 1, 1, 5, 1, '2014-05-10 23:03:06', '2017-02-25 19:49:57'),
(62, '', 0, 1, 1, 5, 0, '2014-05-10 23:02:29', '2016-08-14 19:29:17'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2017-12-23 00:32:20'),
(64, '', 0, 1, 1, 6, 1, '2014-05-13 22:38:09', '2018-03-18 11:24:27'),
(65, '', 0, 1, 2, 5, 0, '2016-04-11 16:06:24', '2017-08-31 09:55:25'),
(66, '', 0, 1, 1, 5, 0, '2016-08-10 16:24:41', '2017-07-24 21:20:36'),
(67, '', 0, 1, 1, 6, 0, '2017-05-31 22:59:56', '2017-12-23 00:30:16'),
(68, '', 0, 1, 1, 0, 0, '2017-09-19 21:51:55', '2017-12-23 00:19:26'),
(69, '', 0, 1, 1, 0, 0, '2017-12-22 21:24:43', '2018-03-05 20:30:19'),
(70, '', 0, 1, 1, 0, 1, '2018-03-16 23:33:13', '2018-03-18 11:24:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_Title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_category_description`
--

TRUNCATE TABLE `oc_category_description`;
--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `meta_Title`) VALUES
(57, 3, 'РУБАШКИ-БОДИ, БОДИ', '', 'Купить женское боди на любой вкус от мастерской Камізелька. Эксклюзивные модели. Быстрая доставка. Купить рубашку-боди в Украине', 'боди, женское боди, боди для офиса, купить рубашку боди в Украине, купить рубашку-боди КаМизелька', 'Купить рубашку боди от украинского производителя Мастерской КаМизелька'),
(57, 2, 'СОРОЧКИ-БОДІ, БОДІ', '', 'Придбати жіночі боді на всі смаки від майстерні Камізелька. У наявності ексклюзивні моделі. Швидка доставка. Купити сорочку боді, купити сорочку-боді в Україні', 'Боді, жіноче боді, боді для офісу, ексклюзивна модель боді, сорочка бодф, сорочка-боді', 'Стильна якісна сорочка боді від українського виробника Майстерні КаМізелька'),
(60, 3, 'ЖИЛЕТКИ, СВИТЕРА', '', 'В нашем магазине в наличии стильные модели женских жилеток.Качественный пошив. Быстрая доставка.\r\nНизкие цены.', 'Жилетка женская, стильная для офиса, молодежная, украинского производства Камизелька', 'Женская качественная стильная недорогая жилетка в Украине Киеве|Жилетки от Камизельки'),
(60, 2, 'КАМІЗЕЛЬКИ, СВЕТРИ', '', 'Ми пропонуємо Вам стильні жіночі камізельки якісного пошиву. Ексклюзивні моделі. Швидка доставка. Низькі ціни.', 'камізелька, жилетка, жіноча  для офісу українського виробника', 'Жіночий якісний стильний недорогий жилет в Україні Києві|Камізелька'),
(62, 3, 'КОРСЕТЫ', '', 'Наш магазин предлагает стильные женские корсеты для создания образа деловой леди. Качественный пошив из качественных материалов. Быстрая доставка. Низкие цены.', 'Купить Корсет женский, стильный, на косточках, на рубашку,  для делового образа, на шнуровке', 'Стильный удобный качественный корсет на косточках шнуровке КаМизелька|Доставка по Украине Киеву курь'),
(62, 2, 'КОРСЕТИ', '', 'Ми пропонуємо корсети жіночі для створення образу ділової леді. Якісний пошив із якісного матеріалу. Швидка доставка. Низькі ціни.', 'Купити Корсет жіночий,  для офісу, на рубашку, на сорочку, на шнурівці', 'Стильний зручний якісний корсет на кісточках шнурівці КаМізелька| Доставка по Україні Києву кур''єром'),
(24, 3, ' РУБАШКИ, БЛУЗЫ, ТОПЫ', '', 'В нашем магазине Вы станете обладательницей стильной женской рубашки или блузы, которая удачно дополнит Ваш образ как на работе, так и на прогулке. Качественный пошив и покрой !', 'Рубашка женская классическая Камизелька,  для работы,  для офиса, рубашка под костюм, одежда украинского производства', 'Купить красивую качественную женскую рубашку от производителя КаМизелька|Интернет магазин'),
(24, 2, 'СОРОЧКИ, БЛУЗИ, ТОПИ', '', 'У нас Ви можете придбати класичні і модельні жіночі сорочки та блузи якісного пошиву від українського виробника. Швидка доставка. Низькі ціни.', 'сорочка  жіноча Камізелька, блуза, офісна, класичична сорочка, з натуральної тканини, вироблено в Україні.', 'Якісна стильна жіноча сорочка, блуза, блузка від виробника КаМізелька|Інтернет магазин'),
(59, 3, 'САРАФАНЫ, ЮБКИ, ПЛАТЬЯ', '', 'Здесь Вы можете стать обладательницей стильного платья или  юбки от Мастерской Камизелька. Качественный пошив. Украинский производитель. Быстрая доставка.', 'Юбка карандаш, с баской, деловая,  для офиса, платье рубашка,  от украинского производителя, кружевное , кружевная юбка, платье Камизелька', 'Стильное платье, юбка , кружевное платье, платье рубашка в Магазине КаМизелька| Доставк'),
(59, 2, 'САРАФАНИ,СПІДНИЦІ, СУКНІ', '', 'У нас Ви можете придбати стильну спідницю , стильну сукню. Якісний пошив. Швидка доставка. Низькі ціни. Український виробник одягу.', 'спідниця для офісу, класична, з баскою, спідниця-олівець, сукня мереживна, з мережева, на весну, на літо', 'Стильна ексклюзивна спідниця, сукня , кружевна сукня 2015 в Магазині КаМізелька| Доставка по Украіні'),
(63, 2, 'АКСЕСУАРИ', '', 'Купити жіночі аксесури в Україні. Краватка, підтяжки, шарф Камізелька', 'аксесур, краватка жіноча, підтяжки жіночі мережевні Камізелька', 'Краватка підтяжки до жіночої сорочки Камізелька'),
(62, 1, 'КОРСЕТЫ', '', '', '', ''),
(68, 3, 'ОСЕНЬ 2017', '', '', '', ''),
(64, 1, 'РАСПРОДАЖА!!!', '', '', '', ''),
(57, 1, 'БОДИ', '', '', '', ''),
(64, 2, '% зі знижкою %', '', 'Купити жіночий одяг зі знижкою. Постійний сезонний розпродаж   в Майстерні камізелька!', 'знижки в Україні, Києві, постійні знижки на жіночий одяг', 'Купити зі знижкою жіночий одяг в інтернет магазині Камізелька'),
(63, 3, 'АКССЕСУАРЫ', '', 'Купить в Киеве аксессуары к женской деловой одежде. Эксклюзивные модели. Быстрая доставка. Украинский производитель аксессуаров', 'аксессуар к рубашке, аксессуар для офиса, эксклюзивный аксессуар, купить льняной шарф, подтяжки женские кружевные', 'аксессуары к женской рубашке купить, цена галстук подтяжки Камизлька'),
(64, 3, '% СО СКИДКОЙ %', '', 'Купить женскую одежду со скидкой. Сезонные распродажи на постоянной основе. Распродажа в Камизельке!', 'скидки в интернет магазинах, скидки в Украине, в Киеве, сезонные распродажи женской одежды', 'Купить со скидкой женскую одежду украинского производства Камизелька'),
(63, 1, 'АКСЕССУАРЫ', '', '', '', ''),
(65, 3, 'ВЕСНА 2017 ', '&lt;p&gt;Категория наполняется...&lt;/p&gt;\r\n', 'Легкая и сдержанная, лаконичная и удобная - это о новой весенней коллекции 2017 от Мастерской Камизелька!', 'женская рубашка,  платье-рубашка', 'Новая весенняя коллекция 2017 от Мастерской Камизелька'),
(65, 2, 'ВЕСНА 2017 ', '&lt;p&gt;Категорыя наповнюється...&lt;/p&gt;\r\n', 'Легка і стримана, лаконічна і зручна - це про нову весняну колекцію 2016 від Майстерні Камізелька!', 'жіноча сорочка,  плаття-сорочка, сукня сорочка', 'Нова весняна колекція 2017 від Майстерні Камізелька'),
(65, 1, 'ВЕСНА 2017', '', '', '', ''),
(66, 3, 'ЗИМА 2017 ', '', '', '', ''),
(66, 2, 'ЗИМА 2017(sale 20%)', '', '', '', ''),
(66, 1, 'ОСІНЬ 2016', '', '', '', ''),
(67, 3, 'ЛЕТО 2017 ', '', '', '', ''),
(67, 2, 'ЛІТО 2017 ', '', '', '', ''),
(67, 1, 'ЛІТО 2017', '', '', '', ''),
(59, 1, 'ЮБКИ', '', '', '', ''),
(24, 1, 'РУБАШКИ, БЛУЗЫ', '', '', '', ''),
(68, 2, 'ОСІНЬ 2017', '', '', '', ''),
(68, 1, 'ОСІНЬ 17', '', '', '', ''),
(69, 3, 'ЗИМА 2018', '', '', '', ''),
(69, 2, 'ЗИМА 2018', '', '', '', ''),
(60, 1, 'ЖИЛЕТЫ', '', '', '', ''),
(69, 1, 'ЗИМА 2018', '', '', '', ''),
(70, 3, 'ВЕСНА 2018 (наполняется)', '', '', '', ''),
(70, 2, 'ВЕСНА 2018 (наповнюється)', '', '', '', ''),
(70, 1, 'ВЕСНА 2018', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_category_filter`
--

TRUNCATE TABLE `oc_category_filter`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_category_path`
--

TRUNCATE TABLE `oc_category_path`;
--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(24, 24, 0),
(59, 59, 0),
(63, 63, 0),
(62, 62, 0),
(57, 57, 0),
(60, 60, 0),
(64, 64, 0),
(65, 65, 0),
(66, 66, 0),
(67, 67, 0),
(68, 68, 0),
(69, 69, 0),
(70, 70, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_category_to_layout`
--

TRUNCATE TABLE `oc_category_to_layout`;
--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(24, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_category_to_store`
--

TRUNCATE TABLE `oc_category_to_store`;
--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(24, 0),
(57, 0),
(59, 0),
(60, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

--
-- Очистить таблицу перед добавлением данных `oc_country`
--

TRUNCATE TABLE `oc_country`;
--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(220, 'Украина', 'UA', 'UKR', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Очистить таблицу перед добавлением данных `oc_coupon`
--

TRUNCATE TABLE `oc_coupon`;
--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18'),
(7, 'Dnipro', 'DNIPRO23', 'P', '20.0000', 0, 0, '0.0000', '2017-12-02', '2017-12-04', 0, '0', 0, '2017-11-30 20:39:24');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_coupon_category`
--

TRUNCATE TABLE `oc_coupon_category`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_coupon_history`
--

TRUNCATE TABLE `oc_coupon_history`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_coupon_product`
--

TRUNCATE TABLE `oc_coupon_product`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Очистить таблицу перед добавлением данных `oc_currency`
--

TRUNCATE TABLE `oc_currency`;
--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.02800000, 0, '2017-10-30 23:00:32'),
(2, 'US Dollar', 'USD', '$', '', '2', 0.03730000, 0, '2017-10-30 23:00:32'),
(3, 'Euro', 'EUR', '', '€', '2', 0.03200000, 0, '2017-10-30 23:00:32'),
(4, 'UAH', 'UAH', '', 'грн', '2', 1.00000000, 1, '2018-03-20 22:32:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer`
--

TRUNCATE TABLE `oc_customer`;
--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(6, 0, 'Лиренр', 'Дмитрий', '3759326@gmail.com', '+380503759326', '', '5adf2f26fc355f9109dfe3f28c0533951d7842b5', '5ab63e8d0', 'a:1:{s:37:"275:YToxOntpOjQ2MztzOjM6Ijg3MSI7fQ==:";i:1;}', '', 1, 6, 2, '62.80.171.246', 1, 1, '', '2015-03-28 09:43:52'),
(28, 0, 'Юлия', 'Чернова', 'yuliya.chernova83@gmail.com', '0672159858', '', '41de7717752edcbe512e225016763983dddadab2', 'b8ec70d86', 'a:0:{}', '', 1, 26, 1, '92.113.151.194', 1, 1, '', '2015-09-28 11:29:34'),
(7, 0, 'Olga', 'Fed', 'Wartemich@ukr.net', '0632830161', '', 'ee3715219394fe4b6e625fc7a7481cd3a8bc5ebc', '5338e38ee', 'a:2:{s:37:"105:YToxOntpOjI4OTtzOjM6IjM1MiI7fQ==:";i:1;s:36:"89:YToxOntpOjI2MjtzOjM6IjE4OCI7fQ==:";i:1;}', 'a:1:{i:0;s:3:"105";}', 1, 7, 1, '82.193.99.46', 1, 1, '', '2015-03-29 00:16:45'),
(5, 0, 'виктория', 'грищук', 'viktoriya_v_bazuk@ukr.net', '0936218783', '', 'ca87dc9e32c51d90aa1dbd86e21538212e2603de', '32611cb1d', 'a:0:{}', '', 1, 5, 1, '95.158.48.184', 1, 1, '', '2015-03-28 09:24:05'),
(4, 0, 'Ira', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', '', '25d045cd13120ce02a6337c9c3e2c3fa6785c06c', 'bdc354e3e', 'a:0:{}', 'a:0:{}', 1, 4, 2, '176.37.98.6', 1, 1, '', '2014-07-11 00:04:38'),
(29, 0, 'Oksana', 'Kozak', 'o.z.kozak@gmail.xom', '+380673058214', '', '301ad3e464449e591df1efdf0bfcf3edd42360c8', '582ef4ef1', 'a:0:{}', '', 1, 27, 1, '46.201.0.162', 1, 1, '', '2015-09-28 21:40:54'),
(8, 0, 'Анастасия', 'Педоренко', 'ealanariel@gmail.com', '+380638338520', '', '325a318f767b0ffce5cede5ab4bf02f29b58db71', 'a3ebcdb31', 'a:0:{}', 'a:1:{i:0;s:2:"55";}', 1, 8, 2, '217.27.156.182', 1, 1, '', '2015-04-08 09:32:58'),
(9, 0, 'Ольга', 'Сороколетова', 'romashka_81@mail.ru', '0997876524', '', 'b2b220827f6168945c53bf41684b3e18145532b8', 'd5dfc7bde', 'a:0:{}', '', 1, 0, 2, '91.142.170.56', 1, 1, '', '2015-04-08 12:29:33'),
(10, 0, 'Алла', 'Якупова', 'yav.cmk@gmail.com', '0675416745', '', '41cbf7b35bc1e8d377f8199c48b22df035088cde', '4403eab9a', 'a:0:{}', '', 1, 0, 2, '91.142.170.56', 1, 1, '', '2015-04-08 12:31:55'),
(11, 0, 'Юлія', 'Сливка', 'Slivcka2009@yandex.ru', '0937154808', '', 'ca6a1b70d648fde560dbf96a66c5658242528cf1', '841625db1', 'a:0:{}', '', 0, 9, 1, '95.133.127.229', 1, 1, '', '2015-04-17 22:08:15'),
(12, 0, 'Наталя', 'Наунко', 'naunko11@ukr.net', '0672659925', '', 'e7611b03c1ea8aa61c5203227b930916ae4506b4', '5de2a8591', 'a:0:{}', '', 1, 10, 1, '83.170.197.30', 1, 1, '', '2015-05-08 15:04:40'),
(13, 0, 'Лилия', 'Кшнякина', 'lilia-kshnyakina@inbox.ru', '0668592177', '', '1c89a934726dbcd9e84d87f00f37a8f151c9e30d', '7f8a27c7b', 'a:0:{}', '', 1, 11, 1, '46.174.69.72', 1, 1, '', '2015-05-20 19:30:03'),
(14, 0, 'Катерина', 'Руденко', 'ek.rudenko@gmail.com', '+380639777079', '', '53285b9155695d901277b542d49d1cbac8278363', '0444eb828', 'a:3:{s:32:"75:YToxOntpOjI0ODtzOjI6Ijk3Ijt9:";i:1;s:37:"119:YToxOntpOjI3NDtzOjM6IjIyNSI7fQ==:";i:1;s:36:"85:YToxOntpOjI1ODtzOjM6IjEzNyI7fQ==:";i:1;}', '', 1, 12, 1, '79.135.195.142', 1, 1, '', '2015-05-26 01:42:17'),
(35, 0, 'Марина', 'Шиловская', 'mariem2204@gmail.com', '+380675628033', '', 'd85d4c0562f5ec20c91f79025f36edc03c1e8ee6', '50c50ae2a', 'a:1:{s:37:"140:YToxOntpOjMwNjtzOjM6IjM2NyI7fQ==:";i:1;}', '', 0, 34, 1, '46.98.96.17', 1, 1, '', '2016-02-22 16:07:27'),
(15, 0, 'Анастасія', 'Пода', 'nastya_p_s@mail.ru', '0974109400', '', '4d24e82e338a8cec0f15fbf6ac4a82dbcbeb3720', '0a1476c3b', 'a:0:{}', '', 1, 13, 1, '176.8.7.128', 1, 1, '', '2015-06-20 21:51:39'),
(16, 0, 'Наталья', 'Загоруйко', 'zagnataly@gmail.com', '+380963878744', '', 'f80c022706bc6fdbdb6d35598c6dbeb7de1df2e8', '193bcda46', 'a:0:{}', '', 1, 14, 2, '217.27.156.66', 1, 1, '', '2015-06-24 11:21:48'),
(17, 0, 'Олена', 'Шафієва', 'penka1212@gmail.com', '0503829178', '', '5e1a27241162ba128d292c513c68760abaa6bba2', '079968b4c', 'a:0:{}', 'a:0:{}', 1, 15, 1, '92.249.100.87', 1, 1, '', '2015-07-28 12:23:44'),
(18, 0, 'Світлана', 'Дяків', 's1717s@ukr.net', '0676708288', '', 'ac2ad9564f686e6302ce7c254643e2e312cb82c1', 'f309b4adc', 'a:0:{}', '', 1, 16, 1, '89.105.237.201', 1, 1, '', '2015-09-08 16:22:48'),
(19, 0, 'Наталья', 'Короткова', 'tala.korotkova@gmail.com', '+380663690603', '', 'aca432c1ea8d9e1a3bb8776868b6568544801f56', '186d8dd5f', 'a:0:{}', '', 1, 17, 1, '46.98.217.79', 1, 1, '', '2015-09-09 23:06:57'),
(20, 0, 'Лариса', 'Левченко', 'loric_l@mail.ru', '050-130-43-12', '', '0c6ac73819dd6e153f32ccdc3f7be76283d5f7ed', '716aba05c', 'a:2:{s:32:"41:YToxOntpOjIzMztzOjI6IjM1Ijt9:";i:1;s:37:"123:YToxOntpOjI3MjtzOjM6IjIxNiI7fQ==:";i:1;}', 'a:3:{i:0;s:2:"41";i:1;s:3:"123";i:2;s:3:"170";}', 1, 18, 1, '178.94.26.134', 1, 1, '', '2015-09-17 15:50:33'),
(30, 0, 'Анна', 'Сервули', 'annaservuli@gmail.com', '0950202085', '', '0cf24c90a54fd0a3d174b076ff1021c94214e139', '44be4935b', 'a:3:{s:32:"59:YToxOntpOjI0MjtzOjI6IjczIjt9:";i:1;s:32:"61:YToxOntpOjI0MztzOjI6Ijc2Ijt9:";i:1;s:37:"112:YToxOntpOjI5NztzOjM6IjMyMSI7fQ==:";i:1;}', '', 1, 28, 1, '93.79.134.21', 1, 1, '', '2015-09-29 13:06:40'),
(25, 0, 'sf', 'sf', '3759326@ukr.net', '0503759326', '', '595cba189fac54fba3dd552a45e4ccdc7f0fba90', '6fb0acac6', 'a:0:{}', '', 1, 23, 1, '217.27.156.66', 1, 1, '', '2015-09-22 14:51:52'),
(31, 0, 'Марина', 'Левицька', 'm.levitskaya@mail.ru', '0632406977', '', 'd6f30172f85dd7bd0a4357c812b575fdcb64ae27', 'b5ed891eb', 'a:1:{s:32:"41:YToxOntpOjIzMztzOjI6IjM3Ijt9:";i:1;}', '', 1, 29, 1, '95.158.38.244', 1, 1, '', '2015-10-10 21:44:47'),
(32, 0, 'Елена', 'Андрущук', 'an_elena@mail.ua', '0677801759', '', 'dbe784a7c3ad390a89f5d95e06ffc5b7585e045b', '6d5d3e3d7', 'a:0:{}', '', 0, 30, 1, '94.240.167.91', 1, 1, '', '2015-10-15 21:59:36'),
(33, 0, 'Ганна', 'Ковальчук', 'anjakov@ukr.net', '096-46-29-015', '', '7e59f664d21f62f422ae17c5d5ea78763b8ccc46', 'f3594dae7', 'a:0:{}', '', 0, 31, 1, '94.153.10.139', 1, 1, '', '2015-10-16 15:48:38'),
(34, 0, 'Валентина', 'Минчева', 'valekvalera@mail.ru', '380972785751', '', '6f1f3cc0945e0d3f37e5ef204e974ceeaad03328', '645f07c11', 'a:0:{}', '', 1, 33, 1, '193.160.224.117', 1, 1, '', '2016-02-19 19:46:09'),
(36, 0, 'Анастасія', 'Коваленко', 'koval1996@rambler.ru', '+380636830443', '', '39041d6d19c621e0f4bf828698a6d11674574851', '5b46767d1', 'a:0:{}', '', 1, 35, 1, '178.92.166.57', 1, 1, '', '2016-03-05 16:24:52'),
(37, 0, 'Ганна', 'Акименко', 'akianna@gmail.com', '0661665809', '', '5d3b669dfa6dc9e55ab17a5cfb716da7a4da2400', '76e1c9352', 'a:2:{s:37:"161:YToxOntpOjMyMDtzOjM6IjQyMSI7fQ==:";i:1;s:37:"152:YToxOntpOjMxMTtzOjM6IjM4NSI7fQ==:";i:1;}', '', 1, 36, 1, '91.247.221.59', 1, 1, '', '2016-03-13 20:46:51'),
(38, 0, 'CВІТЛАНА', 'ЮХИМОВИЧ', 'sveta_8828@mail.ru', '0661138666', '', '68e82b50cdac23339a6ea867c31d49d20b976e9e', '5944238cf', 'a:0:{}', '', 1, 37, 1, '192.162.113.85', 1, 1, '', '2016-04-01 16:43:33'),
(39, 0, 'Мариша', 'Блинова', 'marfyne4kam@gmail.com', '+380987611036', '', '5ad42f37966f19c1010cfce095c06871ee08603a', '5898213ae', 'a:1:{s:32:"41:YToxOntpOjIzMztzOjI6IjM1Ijt9:";i:2;}', '', 0, 38, 1, '66.36.192.48', 1, 1, '', '2016-04-06 16:10:34'),
(40, 0, 'Ірина', 'Жила', 'ira_zhila@ukr.net', '093-97-096-79', '', 'c892ca59674ac0275746f4e3190e5c8486a76136', 'e4b0dba19', 'a:1:{s:37:"152:YToxOntpOjMxMTtzOjM6IjM4OCI7fQ==:";i:1;}', '', 1, 39, 1, '185.3.148.83', 1, 1, '', '2016-04-25 19:57:23'),
(41, 0, 'Наталия', 'Яковлева', 'Yakovlevantl@rambler.ru', '0950101725', '', 'b3777bd9cbd7f3826eec13e9898ea44b79e2727e', 'dbfe53e5c', 'a:0:{}', '', 0, 40, 1, '193.202.91.11', 1, 1, '', '2016-06-07 11:55:25'),
(42, 0, 'Анна', 'Савицкая', 'anna.savytskaya@gmail.com', '0953070877', '', '3c0f844a4c09d62350d71da24edfeaffb32e6787', 'afbec29f0', 'a:0:{}', '', 1, 41, 1, '178.54.17.77', 1, 1, '', '2016-06-16 22:34:45'),
(43, 0, 'Наталя', 'Раєвська', 'rayevska@gmail.com', '063-058-39-04', '', 'ee326ec9f042cda1289da06183917ca693c6824d', '85da003a6', 'a:1:{s:37:"104:YToxOntpOjI5ODtzOjM6IjMyNSI7fQ==:";i:1;}', '', 1, 42, 1, '212.98.33.194', 1, 1, '', '2016-09-01 11:57:14'),
(44, 0, 'Ірина', 'Дубина', 'iryn4ik777@mail.ru', '0990664403', '', '1ea78a9579cb4e7959df880911624b27f607ddd5', '5989f8e8c', 'a:0:{}', 'a:2:{i:0;s:3:"204";i:1;s:3:"211";}', 0, 43, 1, '94.244.183.248', 1, 1, '', '2016-09-03 22:06:33'),
(45, 0, 'Людмила', 'Фарион', 'Zenich77@bigmir.net', '06727897777', '', '4fbc14a500f8045d9e550d01280daf2a58d911d3', 'eea009a91', 'a:0:{}', '', 1, 44, 1, '195.211.140.251', 1, 1, '', '2016-09-05 14:46:29'),
(46, 0, 'Ольга', 'Коломоєць', 'OlgaKolomoets@gmail.com', '0637245813', '', '86cbe778f09e2699ccd5f1c3e6769428cce5fa08', '7eddf67a9', 'a:0:{}', '', 1, 45, 1, '91.209.55.29', 1, 1, '', '2016-10-06 18:40:46'),
(47, 0, 'Елена', 'Шеронина', 'Sheronina@ukr.net', '0662963377', '', 'f88a2d7e6cfc30609460ddce53603f84a1f53cd2', '1a3945ad3', 'a:0:{}', '', 1, 46, 1, '93.72.218.48', 1, 1, '', '2016-10-18 03:48:36'),
(48, 0, 'Лара', 'Лара', 'Dovglar@ukr.net', '0674024546', '', '7c378c8de96f5f429406f9d8d7301b10b59dd886', '83f040d72', 'a:1:{s:37:"201:YToxOntpOjM4MztzOjM6IjYxMCI7fQ==:";i:1;}', '', 1, 47, 1, '178.214.220.80', 1, 1, '', '2016-10-29 10:16:14'),
(49, 0, 'Віта', 'Терещенко', 'vita.tve@gmail.com', '0984590292', '', '45657f745227fc830565977cbda46ca88ab5234a', 'c4cea3d76', 'a:1:{s:37:"208:YToxOntpOjM5MTtzOjM6IjY0MyI7fQ==:";i:1;}', '', 1, 48, 1, '93.72.43.81', 1, 1, '', '2016-10-29 21:04:20'),
(50, 0, 'Ірина', 'Анічина', 'irabritvina@yandex.ru', '0660352850', '', '5706a295b945f064528f7fa3635f0bfcaca4ee73', '219d5ee7b', 'a:0:{}', '', 0, 49, 1, '159.224.80.100', 1, 1, '', '2016-11-09 23:38:42'),
(51, 0, 'Инна', 'Кедык', 'innakedyk@rambler.ru', '+380984306210', '', '490d14a4bba7684f463d825b759b24f684824394', 'b856914ad', 'a:1:{s:37:"152:YToxOntpOjMxMTtzOjM6IjM4NiI7fQ==:";i:1;}', '', 0, 50, 1, '77.122.253.4', 1, 1, '', '2016-11-21 11:35:26'),
(52, 0, 'Олена', 'Эфiмова', 'Y-helen@yandex.ua', '0503631205', '', '6ce21d4441721ed2d723163159dafd1f527f892d', 'a43163282', 'a:1:{s:37:"208:YToxOntpOjM5MTtzOjM6IjY0MyI7fQ==:";i:1;}', 'a:2:{i:0;s:3:"209";i:1;s:3:"208";}', 1, 51, 1, '195.60.228.16', 1, 1, '', '2017-01-18 23:36:13'),
(53, 0, 'Олена', 'Грубнікова', 'grubnikova@gmail.com', '+380638932342', '', '799f63688f187307a803d5fc8da42a781e081710', '98a673afa', 'a:0:{}', '', 1, 52, 1, '31.42.48.179', 1, 1, '', '2017-01-28 19:18:54'),
(54, 0, 'Наталія', 'Мошковська', 'rugvedan7@gmail.com', '0675852823', '', '121da98947c6f9fa107523babeb57884a75ff0f8', 'dd3f95c22', 'a:1:{s:37:"214:YToxOntpOjM5OTtzOjM6IjY2OSI7fQ==:";i:1;}', '', 1, 53, 1, '89.22.206.119', 1, 1, '', '2017-03-28 18:12:14'),
(55, 0, 'Єлизавета', 'Деревянко', 'lizok1975@ukr.net', '0503838360', '', 'd266c99fd8e81cbccc6311027d4247d97d4a4400', '52432ac84', 'a:1:{s:37:"218:YToxOntpOjQwMztzOjM6IjY4MCI7fQ==:";i:1;}', '', 1, 54, 1, '37.115.147.68', 1, 1, '', '2017-04-17 22:36:09'),
(56, 0, 'Юлия', 'Смойловская', 'Smilic.j@gmail.com', '0988112236', '', 'aef6e38ba58b25e2b1dd7933cf03a6a02f2c01ff', '24607a33a', 'a:2:{s:37:"208:YToxOntpOjM5MTtzOjM6IjY0MiI7fQ==:";i:1;s:37:"248:YToxOntpOjQzMztzOjM6Ijc3NCI7fQ==:";i:1;}', '', 0, 55, 1, '176.37.21.220', 1, 1, '', '2017-05-06 14:30:42'),
(59, 0, 'Оксана', 'Шаповалова', 'shapovalova.uk@gmail.com', '+380509491535', '', 'f924061ce2957a6f5ae97c9a644c37057687d7e5', 'ffa8a2e05', 'a:3:{s:37:"259:YToxOntpOjQ0NjtzOjM6IjgxOCI7fQ==:";i:1;s:37:"192:YToxOntpOjM3NDtzOjM6IjU3NyI7fQ==:";i:1;s:37:"190:YToxOntpOjM3MjtzOjM6IjU3MCI7fQ==:";i:1;}', '', 1, 58, 1, '159.224.171.229', 1, 1, '', '2017-06-26 16:34:30'),
(57, 0, 'Наталя', 'Михальчук', 'mna.76@in.ua', '0507175035', '', '7d783b01beb7aa95924ea922e53f6907d79562f3', '15941ddbc', 'a:0:{}', '', 1, 56, 1, '193.109.129.22', 1, 1, '', '2017-05-29 20:34:10'),
(58, 0, 'Євгенія', 'Бабчинецька', 'kerusha85@gmail.com', '0975382283', '', '3aa072ca59e64116898a1df5f74a7b9cdb0767c5', 'bee34e73a', 'a:0:{}', '', 0, 57, 1, '93.183.205.158', 1, 1, '', '2017-06-07 12:58:06'),
(60, 0, 'Алла', 'Плєшко', 'alla.pleshko75@gmail.com', '0502774004', '', '6e3524ea07bc194d9fbde40d55dfb8c67e5eecb2', '7faba11ba', 'a:2:{s:37:"209:YToxOntpOjM5MjtzOjM6IjY0NiI7fQ==:";i:1;s:37:"259:YToxOntpOjQ0NjtzOjM6IjgyMCI7fQ==:";i:1;}', '', 1, 60, 1, '109.200.243.207', 1, 1, '', '2017-09-16 20:05:05'),
(61, 0, 'Людмила', 'Петрищенко', 'perekaz.dumok@gmail.com', '0939718908', '', '357af1d92bcd5af1e8a588ee9bca3691c33a44a1', '308b2ccc4', 'a:0:{}', '', 0, 61, 1, '37.73.203.46', 1, 1, '', '2017-10-09 14:07:14'),
(62, 0, 'Marina', 'Marina', 'artmaa@ukr.net', '0674444554', '', '68da2709446b84e4c54d1aa744457d51f48053f3', '2e59d1260', 'a:0:{}', '', 1, 62, 1, '95.67.29.218', 1, 1, '', '2017-10-12 20:26:57'),
(63, 0, 'Елена', 'Дороцкая', 'dorotskaya@gmail.com', '+380971636334', '', 'a24905600221bff39586a8495eb779ef82a7380c', '82b47c917', 'a:0:{}', 'a:9:{i:0;s:3:"266";i:1;s:3:"283";i:2;s:3:"291";i:3;s:3:"284";i:4;s:3:"208";i:5;s:3:"209";i:6;s:3:"285";i:7;s:3:"201";i:8;s:3:"204";}', 1, 63, 1, '93.78.13.60', 1, 1, '', '2017-10-17 07:36:15'),
(65, 0, 'Оксана', 'Кравець', 'Oksana.kravets.med@gmail.com', '0971303999', '', '097dfcb6ed291314bf40695d71b4e69ddb08c122', 'deccfa65d', 'a:1:{s:37:"209:YToxOntpOjM5MjtzOjM6IjY0NCI7fQ==:";i:1;}', '', 1, 65, 1, '188.163.74.50', 1, 1, '', '2017-10-30 13:31:01'),
(64, 0, 'Вероніка', 'Корнатовська', 'kornatovskayaya@gmail.com', '0683307016', '', 'dd80a352956dcd64cd9f912cec2a3fd2fa54b52c', 'e47041508', 'a:0:{}', '', 1, 64, 1, '178.159.236.139', 1, 1, '', '2017-10-20 20:31:02'),
(66, 0, 'Наіра', 'Агакарян', 'ans.naira@gmail.com', '380970625408', '', 'abf1844bc9c2b9aa69cf72b66d07b4463ec7ba8c', 'd68948cbd', 'a:2:{s:37:"209:YToxOntpOjM5MjtzOjM6IjY0NiI7fQ==:";i:1;s:37:"208:YToxOntpOjM5MTtzOjM6IjY0MSI7fQ==:";i:1;}', '', 1, 67, 1, '207.154.221.188', 1, 1, '', '2017-11-09 20:37:14'),
(67, 0, 'Олена', 'Дячук', 'dyachuklena1978@gmail.com', '0674980698', '', 'd48515160e641152f1c6baa7ae147d0d25366481', '7d5cae518', 'a:0:{}', '', 1, 68, 1, '185.36.57.102', 1, 1, '', '2017-11-10 12:21:15'),
(68, 0, 'Наталия', 'Хуторная', 'Natalia.777@ukr.net', '0500604554', '', 'e1cd29650a378a4b0876d2ceef20b64680588c89', '024c50a4f', 'a:1:{s:37:"213:YToxOntpOjM5ODtzOjM6IjY2NSI7fQ==:";i:1;}', '', 1, 69, 1, '92.113.209.72', 1, 1, '', '2017-11-16 13:10:47'),
(69, 0, 'Ірина', 'Кевлюк', 'Ivkevlyuk@icloud.com', '+380672984538', '', 'ef08084e07495f666039d1ca3331581759c8429b', '951fad406', 'a:0:{}', '', 1, 70, 1, '46.211.98.241', 1, 1, '', '2017-11-17 16:38:27'),
(70, 0, 'Марія', 'Мудра', 'mary_mudra@ukr.net', '0983356824', '', '2b3df8e16f65344ec9f92791f515f64aeb576fb3', 'd1f30aeca', 'a:0:{}', '', 1, 71, 1, '93.79.122.159', 1, 1, '', '2017-11-29 16:52:10'),
(71, 0, 'Кристина', 'Сомова', 'Kristina.Somova@gmail.com', '0504784342', '', '37c22f1f6fd8da8755f9f29a91ed6a7e90425b74', '3e44bb33d', 'a:1:{s:37:"201:YToxOntpOjM4MztzOjM6IjYwOCI7fQ==:";i:1;}', '', 1, 72, 1, '79.110.131.94', 1, 1, '', '2017-12-05 13:55:57'),
(72, 0, 'Инна', 'Олищук', 'innaoli@hotmail.com', '0509154717', '', '5147f69564845ab7b5597e8826942d3aa0cebc2b', '9008531fd', 'a:0:{}', '', 1, 73, 1, '93.79.163.134', 1, 1, '', '2017-12-30 22:13:26'),
(73, 0, 'София', 'Гаранина', 'So_Fia_Ga@i.ua', '380639700875', '', '470c72d5bf23363790c99327f907644c6549a149', '40b35d27b', 'a:0:{}', 'a:0:{}', 1, 74, 1, '178.158.203.132', 1, 1, '', '2018-01-31 16:10:34'),
(74, 0, 'Оксана', 'Томашенко', 'oksana98673@gmail.com', '0983891175', '', 'cbcd00558275ee567b9c24dbd6c7ec2d6dd4c3fc', '1ad47c46f', 'a:0:{}', '', 0, 75, 1, '188.163.2.108', 1, 1, '', '2018-02-18 10:32:36'),
(75, 0, 'miss', 'kostuk', 'Kostukmisa@.gmail.com', '0508061253', '', 'c96c9a399ad518bda27ec146331dc66ed04f99b8', '36a9f15b7', 'a:0:{}', '', 1, 76, 1, '46.133.195.79', 1, 1, '', '2018-02-27 01:30:05'),
(76, 0, 'Elena', 'Motrenko', 'Hmotrenko@gmil.com', '±380682073376', '', 'ca33794ef67ca33891307a83a9608e1059a57d94', 'aa2dec8a5', 'a:0:{}', '', 1, 77, 1, '193.110.23.181', 1, 1, '', '2018-03-04 10:55:48'),
(77, 0, 'Marta', 'Bilous', 'marta.marta.may@gmail.com', '0937609036', '', 'd49851d2794d283f63f34d8c7bea24a9b6039a8f', 'de3907475', 'a:1:{s:37:"209:YToxOntpOjM5MjtzOjM6IjY0NCI7fQ==:";i:1;}', '', 1, 79, 1, '62.221.63.65', 1, 1, '', '2018-03-07 14:53:27');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer_ban_ip`
--

TRUNCATE TABLE `oc_customer_ban_ip`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_field`
--

DROP TABLE IF EXISTS `oc_customer_field`;
CREATE TABLE IF NOT EXISTS `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_customer_field`
--

TRUNCATE TABLE `oc_customer_field`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer_group`
--

TRUNCATE TABLE `oc_customer_group`;
--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 1),
(2, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_customer_group_description`
--

TRUNCATE TABLE `oc_customer_group_description`;
--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test'),
(2, 3, 'постоянные 10%', 'с третей покупки - постоянная скидка -  10% (кроме товара со скидкой)'),
(2, 2, 'постійні 10%', 'з третьої покупки - постійна знижка - 10% (крім товару зі знижкою)'),
(2, 1, 'постоянные 10%', 'з третьої покупки - постійна знижка - 10% (крім товару зі знижкою)');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer_history`
--

TRUNCATE TABLE `oc_customer_history`;
--
-- Дамп данных таблицы `oc_customer_history`
--

INSERT INTO `oc_customer_history` (`customer_history_id`, `customer_id`, `comment`, `date_added`) VALUES
(1, 4, 'hhj,j,', '2014-07-11 12:54:08');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=119 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer_ip`
--

TRUNCATE TABLE `oc_customer_ip`;
--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(19, 9, '91.142.170.56', '2015-04-08 13:43:01'),
(18, 4, '91.142.170.56', '2015-04-08 11:39:46'),
(14, 6, '91.123.156.202', '2015-03-28 09:43:53'),
(17, 8, '81.26.159.13', '2015-04-08 09:33:00'),
(16, 6, '217.27.156.66', '2015-03-29 09:25:39'),
(8, 4, '176.37.98.6', '2014-07-11 00:04:39'),
(9, 4, '217.27.156.182', '2014-07-11 12:24:26'),
(10, 4, '91.142.170.44', '2014-10-27 18:01:31'),
(15, 7, '82.193.99.46', '2015-03-29 00:16:46'),
(13, 5, '95.158.48.184', '2015-03-28 09:24:06'),
(20, 10, '91.142.170.56', '2015-04-08 14:15:26'),
(21, 8, '46.98.142.139', '2015-04-11 21:15:38'),
(22, 11, '95.133.127.229', '2015-04-17 22:08:16'),
(23, 12, '83.170.197.30', '2015-05-08 15:04:46'),
(24, 13, '46.174.69.72', '2015-05-20 19:30:04'),
(25, 14, '79.135.195.142', '2015-05-26 01:42:18'),
(26, 15, '176.8.7.128', '2015-06-20 21:51:40'),
(27, 16, '194.44.218.243', '2015-06-24 11:22:58'),
(28, 17, '95.158.60.226', '2015-07-28 12:23:51'),
(29, 17, '92.249.100.87', '2015-07-28 19:33:03'),
(30, 18, '89.105.237.201', '2015-09-08 16:23:24'),
(31, 19, '46.98.217.79', '2015-09-09 23:06:58'),
(32, 20, '178.93.77.179', '2015-09-17 15:50:34'),
(33, 20, '178.94.26.134', '2015-09-22 11:03:33'),
(41, 28, '92.113.151.194', '2015-09-28 11:30:47'),
(43, 30, '93.79.134.21', '2015-09-29 13:06:41'),
(38, 25, '217.27.156.66', '2015-09-22 14:51:53'),
(42, 29, '46.201.0.162', '2015-09-28 21:40:54'),
(44, 31, '95.158.38.244', '2015-10-10 21:44:57'),
(45, 32, '94.240.167.91', '2015-10-15 21:59:36'),
(46, 33, '194.44.204.246', '2015-10-16 15:48:39'),
(47, 33, '94.153.10.139', '2015-10-21 20:39:40'),
(48, 8, '217.27.156.66', '2015-10-28 15:56:45'),
(49, 4, '91.142.161.30', '2016-02-11 15:00:29'),
(50, 34, '193.160.224.117', '2016-02-19 19:46:09'),
(51, 35, '46.98.132.252', '2016-02-22 16:07:28'),
(52, 36, '178.92.166.57', '2016-03-05 16:24:52'),
(53, 35, '46.98.96.17', '2016-03-06 00:07:06'),
(54, 37, '93.76.217.160', '2016-03-13 20:47:07'),
(55, 37, '91.247.221.59', '2016-03-15 12:32:55'),
(56, 38, '192.162.113.85', '2016-04-01 16:43:34'),
(57, 39, '188.163.68.101', '2016-04-06 16:10:34'),
(58, 40, '185.3.148.83', '2016-04-25 19:57:29'),
(59, 41, '193.202.91.11', '2016-06-07 11:55:29'),
(60, 42, '178.54.17.77', '2016-06-16 22:34:47'),
(61, 43, '212.98.33.194', '2016-09-01 11:58:10'),
(62, 44, '46.133.214.211', '2016-09-03 22:06:35'),
(63, 44, '46.133.20.105', '2016-09-03 22:11:50'),
(64, 44, '94.244.183.248', '2016-09-03 22:15:30'),
(65, 45, '195.211.140.251', '2016-09-05 14:46:31'),
(66, 46, '91.209.55.29', '2016-10-06 18:40:49'),
(67, 47, '93.72.218.48', '2016-10-18 03:48:40'),
(68, 48, '109.251.216.199', '2016-10-29 10:16:21'),
(69, 49, '93.72.43.81', '2016-10-29 21:04:22'),
(70, 39, '66.36.192.48', '2016-11-02 17:25:54'),
(71, 48, '178.214.220.80', '2016-11-09 10:39:39'),
(72, 50, '159.224.80.100', '2016-11-09 23:38:44'),
(73, 50, '80.92.233.80', '2016-11-10 12:38:58'),
(74, 51, '77.122.253.4', '2016-11-21 11:35:30'),
(75, 52, '212.90.63.180', '2017-01-18 23:36:14'),
(76, 53, '31.42.48.179', '2017-01-28 19:18:55'),
(77, 54, '89.22.206.119', '2017-03-28 18:12:15'),
(78, 55, '37.115.147.68', '2017-04-17 22:36:10'),
(79, 56, '176.37.21.220', '2017-05-06 14:30:43'),
(80, 57, '193.109.129.22', '2017-05-29 20:34:59'),
(81, 58, '93.183.205.158', '2017-06-07 12:58:07'),
(82, 59, '159.224.171.229', '2017-06-26 16:37:39'),
(83, 60, '46.250.26.100', '2017-09-16 20:05:05'),
(84, 60, '46.250.21.126', '2017-09-21 14:36:27'),
(85, 60, '109.200.243.207', '2017-09-23 21:46:56'),
(86, 61, '194.1.195.102', '2017-10-09 14:07:15'),
(87, 61, '37.73.204.236', '2017-10-09 14:09:58'),
(88, 62, '95.67.29.218', '2017-10-12 20:27:27'),
(89, 63, '46.211.120.92', '2017-10-17 07:36:16'),
(90, 63, '46.211.121.141', '2017-10-19 14:40:33'),
(91, 63, '46.211.4.173', '2017-10-19 14:52:54'),
(92, 63, '46.211.154.176', '2017-10-19 15:09:59'),
(93, 63, '46.211.127.188', '2017-10-19 15:12:36'),
(94, 64, '178.159.236.139', '2017-10-20 20:31:03'),
(95, 63, '93.78.13.60', '2017-10-27 00:42:16'),
(96, 65, '188.163.74.50', '2017-10-30 13:31:02'),
(97, 61, '37.73.195.179', '2017-11-07 13:45:31'),
(98, 61, '37.73.212.58', '2017-11-07 18:26:47'),
(99, 52, '195.60.228.16', '2017-11-09 10:14:39'),
(100, 66, '207.154.221.188', '2017-11-09 20:37:14'),
(101, 67, '185.36.57.102', '2017-11-10 12:21:16'),
(102, 68, '92.113.209.72', '2017-11-16 13:10:56'),
(103, 69, '46.211.123.92', '2017-11-17 16:38:28'),
(104, 69, '46.211.98.241', '2017-11-17 17:10:28'),
(105, 61, '37.73.210.63', '2017-11-19 10:52:02'),
(106, 61, '37.73.171.64', '2017-11-19 14:02:37'),
(107, 61, '89.22.205.181', '2017-11-19 18:37:17'),
(108, 61, '37.73.134.67', '2017-11-24 22:27:23'),
(109, 61, '37.73.203.46', '2017-11-25 16:34:08'),
(110, 70, '93.79.122.159', '2017-11-29 16:52:30'),
(111, 71, '79.110.131.94', '2017-12-05 13:55:58'),
(112, 72, '93.79.163.134', '2017-12-30 22:14:37'),
(113, 73, '178.158.203.132', '2018-01-31 16:10:35'),
(114, 6, '62.80.171.246', '2018-02-09 11:19:05'),
(115, 74, '188.163.2.108', '2018-02-18 10:32:38'),
(116, 75, '46.133.195.79', '2018-02-27 01:30:07'),
(117, 76, '193.110.23.181', '2018-03-04 11:56:24'),
(118, 77, '62.221.63.65', '2018-03-07 14:53:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_customer_online`
--

TRUNCATE TABLE `oc_customer_online`;
--
-- Дамп данных таблицы `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('178.154.200.49', 0, 'http://kamizelka.in.ua/home/', '', '2018-03-24 17:22:30'),
('95.108.181.88', 0, 'http://kamizelka.in.ua/home/', '', '2018-03-24 16:54:24'),
('5.3.146.2', 0, 'http://kamizelka.in.ua/bodi/', 'http://www.yandex.ru/', '2018-03-24 16:49:55'),
('157.55.39.168', 0, 'http://kamizelka.in.ua/zima-2018/', '', '2018-03-24 16:51:37'),
('157.55.39.146', 0, 'http://kamizelka.in.ua/bodi/rubashka-bodi-belaya-s-potaynoy-zastezhkoy-art-b-16.html', '', '2018-03-24 17:41:40');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer_reward`
--

TRUNCATE TABLE `oc_customer_reward`;
--
-- Дамп данных таблицы `oc_customer_reward`
--

INSERT INTO `oc_customer_reward` (`customer_reward_id`, `customer_id`, `order_id`, `description`, `points`, `date_added`) VALUES
(4, 4, 0, 'За красивые глазки ;)', 100, '2014-07-11 12:44:24'),
(7, 4, 0, 'Заказ №: 23', -400, '2014-07-11 14:32:13'),
(9, 4, 0, 'Заказ №: 24', -100, '2014-07-11 16:47:34'),
(10, 4, 0, 'Заказ №: 25', -500, '2014-07-11 16:51:54'),
(11, 4, 0, 'Заказ №: 26', -100, '2014-07-11 16:57:50'),
(12, 4, 0, 'снято', -1600, '2014-07-11 17:07:49'),
(15, 4, 0, 'Заказ №: 28', -50, '2014-07-11 17:34:31'),
(17, 4, 0, 'Заказ №: 29', -25, '2014-07-11 17:49:43');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_customer_transaction`
--

TRUNCATE TABLE `oc_customer_transaction`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_custom_field`
--

TRUNCATE TABLE `oc_custom_field`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_custom_field_description`
--

TRUNCATE TABLE `oc_custom_field_description`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_to_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_custom_field_to_customer_group`
--

TRUNCATE TABLE `oc_custom_field_to_customer_group`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_custom_field_value`
--

TRUNCATE TABLE `oc_custom_field_value`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_custom_field_value_description`
--

TRUNCATE TABLE `oc_custom_field_value_description`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_download`
--

TRUNCATE TABLE `oc_download`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_download_description`
--

TRUNCATE TABLE `oc_download_description`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=476 ;

--
-- Очистить таблицу перед добавлением данных `oc_extension`
--

TRUNCATE TABLE `oc_extension`;
--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(441, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(411, 'module', 'affiliate'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'bestseller'),
(429, 'module', 'special'),
(430, 'shipping', 'free'),
(437, 'shipping', 'novaposhta'),
(435, 'payment', 'cheque'),
(436, 'payment', 'bank_transfer'),
(438, 'shipping', 'citylink'),
(439, 'shipping', 'pickup'),
(440, 'module', 'simple'),
(443, 'module', 'vqmod_manager'),
(449, 'feed', 'google_base'),
(446, 'module', 'news'),
(450, 'module', 'google_maps'),
(451, 'module', 'deadcow_seo'),
(452, 'module', 'welcome'),
(453, 'feed', 'google_sitemap'),
(456, 'shipping', 'courier'),
(457, 'shipping', 'courier_ua'),
(458, 'module', 'latest'),
(460, 'shipping', 'ukrpost'),
(470, 'total', 'total_customer_group_discount'),
(469, 'module', 'langmark'),
(468, 'module', 'langmark'),
(471, 'module', 'codemanager'),
(474, 'module', 'oc_smsc'),
(475, 'module', 'discount');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_filter`
--

TRUNCATE TABLE `oc_filter`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_filter_description`
--

TRUNCATE TABLE `oc_filter_description`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_filter_group`
--

TRUNCATE TABLE `oc_filter_group`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_filter_group_description`
--

TRUNCATE TABLE `oc_filter_group_description`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Очистить таблицу перед добавлением данных `oc_geo_zone`
--

TRUNCATE TABLE `oc_geo_zone`;
--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Очистить таблицу перед добавлением данных `oc_information`
--

TRUNCATE TABLE `oc_information`;
--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 0),
(4, 1, 0, 1),
(5, 0, 4, 1),
(6, 1, 1, 1),
(7, 1, 2, 0),
(8, 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_information_description`
--

TRUNCATE TABLE `oc_information_description`;
--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(3, 1, 'Privacy Policy', '&lt;p&gt;Privacy Policy&lt;/p&gt;\r\n'),
(3, 2, 'Privacy Policy', '&lt;p&gt;Privacy Policy&lt;/p&gt;\r\n'),
(3, 3, 'Privacy Policy', '&lt;p&gt;Privacy Policy&lt;/p&gt;\r\n'),
(7, 3, 'Оплата', '&lt;p&gt;Платите нам ваши денежки&lt;/p&gt;\r\n'),
(7, 2, 'Оплата', '&lt;p&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Платите нам ваши денежки&lt;/span&gt;&lt;/p&gt;\r\n'),
(7, 1, 'Payment', '&lt;p&gt;Платите нам ваши денежки&lt;/p&gt;\r\n'),
(8, 3, 'Размерная сетка', '&lt;div id=&quot;sizetable&quot; style=&quot;float: left;padding-left: 40px;&quot;&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;sizegrid&quot; width=&quot;451&quot;&gt;\r\n	&lt;caption&gt;Размерная сетка&lt;/caption&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr style=&quot;background-color: #C42726;  color: white;&quot;&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Украинский размер&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;42&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;44&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;46&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;48&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;50&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style=&quot;background-color: #C42726;  color: white;&quot;&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;400&quot;&gt;Международный размер&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;XS&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;XS-S&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;M&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;M-L&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;L&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style=&quot;background-color: #C42726;  color: white;&quot;&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Европейский размер&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;38&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;40&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;42&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;44&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Обхват груди&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;84&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;88&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;92&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;96&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;100&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Обхват талии&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;66&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;70&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;74&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;78&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;82&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Обхват бедер&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;90&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;94&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;98&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;102&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;106&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Обхват плеча&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;26,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;27,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;28,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;29,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;30,5&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Обхват шеи&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;35,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;37&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;37,5&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;300&quot;&gt;Длина рукава&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;60&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;60&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;61&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;61&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;62&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div style=&quot;float: right;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;image/data/size_girl.png&quot; style=&quot;width: 250px; height: 500px; margin: 10px;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div style=&quot;\r\n    width: 70%;\r\n    float: left;\r\n    padding-bottom: 20px;\r\n    padding-top: 20px;\r\n&quot;&gt;\r\n&lt;h2&gt;Как правильно снять мерки:&lt;/h2&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;ОБХВАТ ШЕИ: Сантиметровую ленту нижним краем накладывают сзади над шейной точкой (седьмой шейный позвонок). Сбоку и спереди лента проходит по основанию шеи (наиболее выступающим местам боковых участков обхвата шеи) и замыкается над яремной впадиной.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ ПЛЕЧА: Измеряют при свободно опущенной руке горизонтально по наиболее полной части плеча.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ ГРУДИ: Сантиметровая лента должна проходить горизонтально вокруг туловища через выступающие точки грудных желез без учёта выступа лопаток. Половина значения данной мерки определяет размер плечевого изделия.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ ТАЛИИ: Сантиметровая лента должна проходить горизонтально по самой тонкой части туловища.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ БЁДЕР: Сантиметровая лента должна проходить горизонтально вокруг туловища, сзади – по наиболее выступающим точкам ягодиц.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ДЛИНА РУКАВА: Измеряют от плечевого шва (плечевой точки) по наружной поверхности плеча и предплечья до уровня края рукава (начала запястья) при свободно опущенной руке.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/div&gt;\r\n'),
(8, 2, 'Розмірна сітка', '&lt;div id=&quot;sizetable&quot; style=&quot;float: left;padding-left: 40px;&quot;&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;sizegrid&quot; width=&quot;451&quot;&gt;\r\n	&lt;caption&gt;Розмірна сітка&lt;/caption&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr style=&quot;background-color: #C42726;  color: white;&quot;&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Український розмір&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;42&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;44&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;46&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;48&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;50&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style=&quot;background-color: #C42726;  color: white;&quot;&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Міжнародний розмір&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;XS&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;XS-S&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;M&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;M-L&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;L&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr style=&quot;background-color: #C42726;  color: white;&quot;&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Європейський розмір&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;38&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;40&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;42&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;44&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Обхват грудей&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;84&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;88&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;92&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;96&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;100&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Обхват талії&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;66&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;70&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;74&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;78&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;82&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Обхват стегон&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;90&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;94&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;98&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;102&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;106&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Обхват плеча&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;26,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;27,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;28,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;29,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;30,5&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Обхват шиї&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;35,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;37&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;37,5&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;Довжина рукава&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;60&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;60&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;61&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;61&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;62&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;float: right;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;image/data/size_girl.png&quot; style=&quot;width: 250px; height: 500px; margin: 10px;&quot; /&gt;&lt;/div&gt;\r\n&lt;div style=&quot;\r\n    width: 70%;\r\n    float: left;\r\n    padding-bottom: 20px;\r\n    padding-top: 20px;\r\n&quot;&gt;\r\n&lt;h2&gt;Як правильно зняти мірки:&lt;/h2&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;ОБХВАТ ШИЇ: Сантиметрову стрічку нижнім краєм накладають ззаду над шийною точкою (сьомий шийний хребець). Збоку і спереду стрічка проходить по підставі шиї (найбільш виступаючим місцям бічних ділянок обхвату шиї) і замикається над яремної западиною.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ ПЛЕЧА: Вимірюють при вільно опущеній руці горизонтально по найбільш повній частині плеча.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ ГРУДЕЙ: Сантиметрова стрічка повинна проходити горизонтально навколо тулуба через виступаючі точки грудей без урахування виступу лопаток. Половина цього значення визначає розмір плечового виробу.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ ТАЛІЇЇ: Сантиметрова стрічка повинна проходити горизонтально по найтоншій частині тулуба.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ОБХВАТ СТЕГОН: Сантиметрова стрічка повинна проходити горизонтально навколо тулуба, с заду – по найбільш виступаючим точкам.&lt;/li&gt;\r\n	&lt;br /&gt;\r\n	&lt;li&gt;ДОВЖИНА РУКАВА: Вимірюють від плечового шва (плечової точки) по зовнішній поверхні плеча та передпліччя до рівня краю рукава (початку зап''ястя) при вільно опущеній руці.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;/div&gt;'),
(4, 3, 'О нас', '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;О нас…, так о нас!&lt;/p&gt;\r\n\r\n&lt;p&gt;Мастерская Камизелька родилась после встречи и знакомства трех людей. Да и не могла она не родиться!&lt;/p&gt;\r\n\r\n&lt;p&gt;Когда первый занимается швейным делом более 20-ти лет, второй на «ты» с компьютером и фотоаппаратом, а третий в детстве мечтал быть дизайнером одежды, то оставалось только - объединить усилия и творить. Чем мы и занялись!&lt;/p&gt;\r\n\r\n&lt;p&gt;Раз уж вы читаете эту статью, смеем предположить, что интересуетесь женской одеждой и её производителями. Это мы и есть!&lt;/p&gt;\r\n\r\n&lt;p&gt;На данном этапе процесс &amp;nbsp;создания одежды происходит от А до Я - сами придумываем, сами моделируем, сами шьём в нашей&amp;nbsp;мастерской, и, как видите, сами продаем.&lt;/p&gt;\r\n\r\n&lt;p&gt;Главным и важным в создании одежды считаем филигранный пошив изделий, так сказать «строчечка в строчечку». Для своих изделий стараемся отбирать только качественные ткани, которые перед пошивом первого изделия: мнем – стираем-гладим. Так мы можем быть уверены, что наш покупатель станет счастливым обладателем&amp;nbsp; стильной и качественной одежды.&amp;nbsp;&lt;/p&gt;\r\n'),
(4, 2, 'Про нас', '&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Про нас ..., так про нас!&lt;/p&gt;\r\n\r\n&lt;p&gt;Майстерня Камізелька народилася після зустрічі і знайомства трьох людей. Та й не могла вона не народитися!&lt;/p&gt;\r\n\r\n&lt;p&gt;Коли перший займається швейною справою більше 20-ти років, другий на «ти» з комп''ютером і фотоапаратом, а третій в дитинстві мріяв бути дизайнером одягу, то залишалося тільки одне - об''єднати зусилля і творити. Чим ми і зайнялися!&lt;/p&gt;\r\n\r\n&lt;p&gt;Раз вже ви читаєте цю статтю, сміємо припустити, що цікавитеся жіночим одягом і його виробниками. Це ми і є!&lt;/p&gt;\r\n\r\n&lt;p&gt;На даному етапі процес &amp;nbsp;створення одягу проходить від А до Я - самі вигадуємо, самі моделюємо, самі шиємо в нашій майстерні, і, як бачите, самі продаємо.&lt;/p&gt;\r\n\r\n&lt;p&gt;Головним і найважливішим у створенні одягу вважаємо філігранний пошив виробів, так би мовити «строчечка в строчечку». Для своїх виробів намагаємося відбирати тільки якісні тканини, які перед пошиттям першого виробу: мнемо - перемо - прасуємо. Так ми можемо бути впевнені, що наш покупець стане щасливим володарем стильного і якісного одягу.&lt;/p&gt;\r\n'),
(4, 1, 'About Us', '&lt;p&gt;About Us&lt;/p&gt;\r\n'),
(6, 3, 'Доставка и оплата', '&lt;p&gt;→ Доставка осуществляется на территории всей Украины ( доставка за границу- при 100% предоплате)&lt;/p&gt;\r\n\r\n&lt;p&gt;→ После оформления покупки с Вами свяжется наш менеджер для уточнения деталей.&lt;/p&gt;\r\n\r\n&lt;p&gt;→ При наличии товара на складе посылка будет сформирована и отправлена в течение&amp;nbsp;1-2 рабочих дней.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;→ При отсутствии товара и при наличии материалов изделие будет отшито и отправлено в течении 3-4 рабочих дней&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;→ Доставка товара на сумму от 1500,00 грн. осуществляется БЕСПЛАТНО.&lt;/p&gt;\r\n\r\n&lt;p align=&quot;center&quot;&gt;&lt;u&gt;ВАРИАНТЫ ДОСТАВКИ И ОПЛАТЫ&lt;/u&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;1.&lt;/strong&gt; &lt;strong&gt;ДОСТАВКА&amp;nbsp; НОВОЙ ПОЧТОЙ&lt;/strong&gt;: тарифы и сроки доставки на сайте &lt;a href=&quot;http://www.novaposhta.ua&quot; target=&quot;_blank&quot;&gt;www.novaposhta.ua&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;&lt;strong&gt;-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Оплата наложенным платежом&lt;/strong&gt;.&amp;nbsp; Доставка осуществляется за счет покупателя ( от 1500,00 грн. БЕСПЛАТНО) + комиссия за наложенный платеж согласно тарифам перевозчика&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:35.4pt;&quot;&gt;&lt;strong&gt;&amp;nbsp;-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 100 % предоплата на карту Приватбанка&lt;/strong&gt;. В данном случае покупатель оплачивает только доставку по тарифу перевозчика ( от 1500,00 грн.БЕСПЛАТНО)&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:35.4pt;&quot;&gt;&lt;strong&gt;2. ДОСТАВКА УКРПОЧТОЙ: &lt;/strong&gt;тарифы и сроки доставки на сайте&amp;nbsp;&lt;a href=&quot;http://www.ukrposhta.com&quot;&gt;&lt;span style=&quot;color: rgb(0, 102, 33); font-family: arial, sans-serif; font-size: 14px; line-height: 16px; white-space: nowrap; background-color: rgb(255, 255, 255);&quot;&gt;www.ukrposhta.com&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:35.4pt;&quot;&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, ''Trebuchet MS''; font-size: 13px; line-height: 20.7999992370605px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 100 % предоплата на карту Приватбанка&lt;/strong&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, ''Trebuchet MS''; font-size: 13px; line-height: 20.7999992370605px; background-color: rgb(255, 255, 255);&quot;&gt;. В данном случае покупатель оплачивает стоимость покупки + стоимость доставки (от 25,00 грн.)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;&lt;strong&gt;3.&lt;/strong&gt; &lt;strong&gt;ДОСТАВКА &amp;nbsp;НАШИМ КУРЬЕРОМ&lt;/strong&gt; ( Только на территории г. Киева и г. Вишневое)&amp;nbsp; - &lt;strong&gt;&amp;nbsp;50.00&amp;nbsp;грн&lt;/strong&gt;.( от 1500,00-БЕСПЛАТНО). Оплата наличными при получении.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;&lt;strong&gt;4.&lt;/strong&gt; &lt;strong&gt;САМОВЫВОЗ&lt;/strong&gt;. Вы можете забрать выбранный вами товар, предварительно согласовав с менеджером, в нашей мастерской в г. Вишневое. Оплата наличными при получении.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;Доставка за границу обсуждается отдельно через переписку.&lt;/p&gt;\r\n'),
(6, 2, 'Доставка та оплата', '&lt;p&gt;→ Доставка здійснюється на території всієї України ( за кордон при 100% передоплаті)&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;→ Після оформлення покупки з Вами зв`яжеться наш менеджер для уточнення деталей.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;→ При наявності товару на складі посилка буде сформована та відправлена &amp;nbsp;протягом 1-2 робочих днів.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;→&amp;nbsp;&lt;/span&gt;При відсутності товару і при наявності матеріалів виріб буде выдшито і відправлено на протязі 3-4 робочих днів&lt;/p&gt;\r\n\r\n&lt;p&gt;→ Доставка товару на суму від 1500,00 грн. здійснюється БЕЗКОШТОВНО.&lt;/p&gt;\r\n\r\n&lt;p align=&quot;center&quot;&gt;&lt;u&gt;ВАРІАНТИ ДОСТАВКИ І ОПЛАТИ&lt;/u&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1.&lt;/strong&gt; &lt;strong&gt;ДОСТАВКА&amp;nbsp; НОВОЮ ПОШТОЮ&lt;/strong&gt;: тарифи та строки доставки на сайті &lt;a href=&quot;http://www.novaposhta.ua&quot; target=&quot;_blank&quot;&gt;www.novaposhta.ua&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;&lt;strong&gt;-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Післяплата&lt;/strong&gt;.&amp;nbsp; Доставка здійснюється за рахунок покупця ( від 1500,00 грн. БЕЗКОШТОВНО) + комісія за післяплату згідно тарифа&amp;nbsp;перевізника.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:35.4pt;&quot;&gt;&lt;strong&gt;&amp;nbsp;-&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 100 % передоплата на карту Приватбанку&lt;/strong&gt;. В цьому випадку покупець сплачує тільки доставку за тарифом перевізника&amp;nbsp;( від 1500,00 грн. БЕЗКОШТОВНО)&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:35.4pt;&quot;&gt;&lt;strong style=&quot;line-height: 20.7999992370605px;&quot;&gt;2. ДОСТАВКА УКРПОШТОЮ&lt;/strong&gt;&lt;strong style=&quot;line-height: 20.7999992370605px;&quot;&gt;:&amp;nbsp;&lt;/strong&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;тарифи&amp;nbsp;та сроки доставки на сайті&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;http://www.ukrposhta.com&quot; style=&quot;line-height: 20.7999992370605px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 102, 33); font-family: arial, sans-serif; font-size: 14px; line-height: 16px; white-space: nowrap;&quot;&gt;www.ukrposhta.com&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:35.4pt;&quot;&gt;&lt;strong style=&quot;color: rgb(51, 51, 51); font-family: sans-serif, Arial, Verdana, ''Trebuchet MS''; font-size: 13px; line-height: 20.7999992370605px; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;- &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/strong&gt;&lt;strong style=&quot;line-height: 20.7999992370605px;&quot;&gt;100 % передоплата на карту Приватбанку&lt;/strong&gt;&lt;span style=&quot;line-height: 20.7999992370605px;&quot;&gt;. В цьому випадку покупець сплачує додатково до вартості товару вартість доставки (від15,00 грн.)&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;&lt;strong&gt;3.&lt;/strong&gt; &lt;strong&gt;ДОСТАВКА &amp;nbsp;НАШИМ КУР`ЄРОМ&lt;/strong&gt; ( тільки на території м. Києва та м. Вишневе)&amp;nbsp; - &lt;strong&gt;50.00&amp;nbsp;грн&lt;/strong&gt;.( від 1500,00 грн. БЕЗКОШТОВНО). Оплата готівкою при отриманні.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;&lt;strong&gt;4.&lt;/strong&gt; &lt;strong&gt;САМОВИВІЗ&lt;/strong&gt;. Ви можете забрати вибраний вами товар, попередньо домовившись з нашим менеджером, у нашій майстерні в м. Вишневе. Оплата готівкою при отриманні.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left:36.0pt;&quot;&gt;Доставка за кордон обговорюэться окремо через листування.&lt;/p&gt;\r\n'),
(8, 1, 'Size Grid', '&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;Как правильно снять мерки:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ГРУДИ:&lt;/strong&gt;&amp;nbsp;Сантиметровая лента должна проходить горизонтально вокруг туловища&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;через выступающие точки грудных желез без учёта выступа лопаток. Половина значения&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;данной мерки определяет размер плечевого изделия.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ГРУДЕЙ:&lt;/strong&gt;&amp;nbsp;Сантиметрова стрічка повинна проходити горизонтально навколо тулуба&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;через виступаючі точки грудей без урахування виступу лопаток. Половина цього значення&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;визначає розмір плечового виробу.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ТАЛИИ:&lt;/strong&gt;&amp;nbsp;Сантиметровая лента должна проходить горизонтально по самой тонкой&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;части туловища .&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ТАЛІЇЇ:&lt;/strong&gt;&amp;nbsp;Сантиметрова стрічка повинна проходити горизонтально по найтоншій частині&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;тулуба.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ БЁДЕР:&lt;/strong&gt;&amp;nbsp;Сантиметровая лента должна проходить горизонтально вокруг туловища,&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;сзади – по наиболее выступающим точкам ягодиц.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ СТЕГОН:&lt;/strong&gt;&amp;nbsp;Сантиметрова стрічка повинна проходити горизонтально навколо тулуба, с&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;заду – по найбільш виступаючим точкам.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ПЛЕЧА:&lt;/strong&gt;&amp;nbsp;Измеряют при свободно опущенной руке горизонтально по наиболее полной&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;части плеча.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ПЛЕЧА:&lt;/strong&gt;&amp;nbsp;Вимірюють при вільно опущеній руці горизонтально по найбільш повній&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;частині плеча.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ШЕИ:&lt;/strong&gt;&amp;nbsp;Сантиметровую ленту нижним краем накладывают сзади над шейной точкой&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;(седьмой шейный позвонок). Сбоку и спереди лента проходит по основанию шеи (наиболее&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;выступающим местам боковых участков обхвата шеи) и замыкается над яремной впадиной.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ОБХВАТ ШИЇ:&lt;/strong&gt;&amp;nbsp;Сантиметрову стрічку нижнім краєм накладають ззаду над шийною точкою&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;(сьомий шийний хребець). Збоку і спереду стрічка проходить по підставі шиї (найбільш&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;виступаючим місцям бічних ділянок обхвату шиї) і замикається над яремної западиною.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ДЛИНА РУКАВА:&lt;/strong&gt;&amp;nbsp;Измеряют от плечевого шва (плечевой точки) по наружной поверхности плеча&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;и предплечья до уровня края рукава (начала запястья) при свободно опущенной руке.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&lt;strong&gt;ДОВЖИНА РУКАВА:&lt;/strong&gt;&amp;nbsp;Вимірюють від плечового шва (плечової точки) по зовнішній поверхні&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;плеча та передпліччя до рівня краю рукава (початку зап''ястя) при вільно опущеній руці.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;div id=&quot;sizetable&quot;&gt;\r\n&lt;table border=&quot;1&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; class=&quot;sizegrid&quot; width=&quot;451&quot;&gt;\r\n	&lt;caption&gt;Розмірна сітка&lt;/caption&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Український розмір&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;42&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;44&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;46&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;48&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;50&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Міжнародний розмір&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;XS&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;XS-S&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;M&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;M-L&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;L&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Європейський розмір&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;38&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;40&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;42&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;44&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Обхват грудей&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;84&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;88&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;92&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;96&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;100&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Обхват талії&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;66&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;70&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;74&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;78&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;82&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Обхват стегон&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;88&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;92&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;96&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;100&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;104&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Обхват плеча&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;26,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;27,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;28,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;29,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;30,5&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Обхват шиї&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;35,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;36,5&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;37&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;37,5&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;250&quot;&gt;&lt;strong&gt;Довжина рукава&lt;/strong&gt;&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;60&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;60&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;61&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;61&lt;/td&gt;\r\n			&lt;td align=&quot;center&quot; width=&quot;100&quot;&gt;62&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;/div&gt;\r\n'),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;Terms &amp;amp; Conditions&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(5, 3, 'Соглашение', '&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;Настоящее Соглашение о конфиденциальности и защите персональных данных (далее — Соглашение) регулирует отношения по обработке (сбор, накопление, хранение, уточнение, использование, передачу, блокирование, уничтожение) между Администрацией Мастерской &amp;nbsp;«Камизелька» (далее — Администрация), персональных данных любого &amp;nbsp;физического лица , которое&amp;nbsp;зарегистрировалось на сайте Каmizelka.in.ua&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;Зарегистрировавшись на сайте Kamizelka.in.ua (далее — Сайт) и предоставив свои персональные данные, Пользователь подтверждает, что прочитал и выразил полное согласие с условиями Соглашения без какого-либо изменения или дополнения, а также разрешил Администрации обработку своих персональных данных.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;1. ИСТОЧНИКИ ИНФОРМАЦИИ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;1.1. Администрации доступна информация, получаемая следующими способами:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– информация, предоставляемая Пользователями при:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 60px;&quot;&gt;а) регистрации Пользователя на Сайте,&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 60px;&quot;&gt;б) в рамках мероприятий, проводимых Администрацией (опросах, заявках, формах обратной связи),&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 60px;&quot;&gt;в) путем внесения записей Пользователем в регистрационные онлайн-формы при использовании услуг, предоставленных на Сайте;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– при переписке Администрации с Пользователями посредством электронной почты;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– техническая информация — данные об интернет-провайдере Пользователя, IP-адресе, характеристиках используемого ПК и программного обеспечения, данные о загруженных и выгруженных на Сайт файлах и т.п.;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– статистические данные о предпочтениях отдельно взятого Пользователя (тематика просмотренных страниц).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;1.2. Конфиденциальной в понимании настоящего соглашения может быть признана лишь информация, хранящаяся в базе данных Сайта в зашифрованном виде и доступная для просмотра исключительно Администрации.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;1.3. Информация о лице, добровольно размещенная им в общих разделах Сайта (отзывы)&amp;nbsp;при заполнении регистрационных онлайн-форм и доступная любому другому Пользователю Сайта, или информация, которая может быть свободно получена из других общедоступных источников, не является конфиденциальной.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;2. БЕЗОПАСНОСТЬ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;2.1. Администрация использует современные технологии обеспечения конфиденциальности персональных данных, а также данных, полученных из регистрационных онлайн-форм, оставляемых Пользователями, с целью обеспечения максимальной защиты информации.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;2.2. Доступ к личной информации Пользователя осуществляется через систему авторизации с логином и паролем. Пользователь обязуется самостоятельно обеспечить сохранность авторизационных данных, ни под каким предлогом не разглашать их третьим лицам. Любые изменения личной информации, внесенные посредством авторизационных данных, будут считаться осуществленными лично Пользователем.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;3. ИСПОЛЬЗОВАНИЕ ИНФОРМАЦИИ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.1. Администрация осуществляет обработку только той информации, которую Пользователь предоставляет добровольно.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.2. Администрация имеет право на обработку персональной информации о Пользователе, полученной согласно п.1.1.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.3. Персональной информацией Пользователя, полученной согласно п.1.1., является:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– электронный адрес, контактная информация;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– IP-адрес Пользователя;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– информация, которая может быть получена с файлов cookies;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– любая другая информацию, которую Пользователь оставил о себе при заполнении регистрационных онлайн-форм на Сайте.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.4. Администрация обрабатывает персональную информацию Пользователя для:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– предоставления услуг Информационного сервиса;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– оценки заинтересованности Пользователей в наших услугах и информирования их о новых услугах и обновлениях Сайта;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– разрешения споров и затруднительных ситуаций;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– других целей, о которых Администрация дает знать Пользователю, запрашивая частную информацию.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.5. Администрация может использовать персональные данные Пользователя с целью рассылки сообщений технического и административного характера, новостей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.6. Администрация использует технологии отслеживания (файлы cookies) для сбора таких персональных данных, как тип браузера или операционная система, ссылочная страница, путь на Сайте, домен интернет-провайдера и т.п., в целях получения общей информации о том, как Сайт используется Пользователями. Файлы cookies позволяют совершенствовать данный Сайт в соответствии с требованиями его Пользователей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.7. Администрация сохраняет всю информацию, собранную с использованием файлов cookies, в формате, не предполагающем идентификации личности. Информация, получаемая через файлы cookies, не может быть раскрыта третьим лицам. Эта информация не будет несанкционированно передаваться третьим лицам.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.8. Информация, собранная о Пользователе, не подлежит разглашению третьим лицам, кроме случаев, предусмотренных законодательством Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;4. ЗАКЛЮЧИТЕЛЬНЫЕ ПОЛОЖЕНИЯ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.1. Заполняя форму регистрации на Сайте или посещая страницы Сайта, Пользователь автоматически принимает условия Соглашения.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.2. При обработке Администрацией персональных данных Пользователя, он имеет те же права, что и субъект персональных данных, предусмотренных&amp;nbsp;&lt;a href=&quot;http://zakon2.rada.gov.ua/laws/show/2297-17&quot; style=&quot;color: rgb(17, 180, 177); text-decoration: none;&quot;&gt;ст. 8 ЗУ «О защите персональных данных»&lt;/a&gt;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.3. Деятельность Администрации осуществляется в соответствии с законодательством Украины. Любые претензии, споры, официальные обращения будут рассматриваться исключительно в порядке, предусмотренном законодательством Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.4. Условия настоящего Соглашения могут быть изменены Администрацией в одностороннем порядке и вступят в силу в течение семи календарных дней с момента их публикации на Сайте. Если изменения будут существенными, Администрация сообщит Пользователю по электронной почте (отправляется на адрес электронной почты, указанный в регистрации) либо посредством уведомления на этом Сайте, до вступления в силу изменений.&lt;/p&gt;\r\n'),
(5, 2, 'Згода', '&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;Настоящее Соглашение о конфиденциальности и защите персональных данных (далее — Соглашение) регулирует отношения по обработке (сбор, накопление, хранение, уточнение, использование, передачу, блокирование, уничтожение) Обществом с ограниченной ответственностью «ТАКСЕР» — Администрацией Информационного сервиса «TAXER» (далее — Администрация), персональных данных любого юридического лица, или физического лица — предпринимателя, или их сотрудников, которые зарегистрировались на сайте Информационного сервиса «TAXER» (далее — Пользователь).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;Зарегистрировавшись на сайте Информационного сервиса «TAXER» (далее — Сайт) и предоставив свои персональные данные, Пользователь подтверждает, что прочитал и выразил полное согласие с условиями Соглашения без какого-либо изменения или дополнения, а также разрешил Администрации обработку своих персональных данных.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;1. ИСТОЧНИКИ ИНФОРМАЦИИ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;1.1. Администрации доступна информация, получаемая следующими способами:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– информация, предоставляемая Пользователями при:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 60px;&quot;&gt;а) регистрации Пользователя на Сайте,&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 60px;&quot;&gt;б) в рамках мероприятий, проводимых Администрацией (опросах, заявках, формах обратной связи),&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 60px;&quot;&gt;в) путем внесения записей Пользователем в регистрационные онлайн-формы при использовании услуг, предоставленных на Сайте;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– при переписке Администрации с Пользователями посредством электронной почты;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– техническая информация — данные об интернет-провайдере Пользователя, IP-адресе, характеристиках используемого ПК и программного обеспечения, данные о загруженных и выгруженных на Сайт файлах и т.п.;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– статистические данные о предпочтениях отдельно взятого Пользователя (тематика просмотренных страниц).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;1.2. Конфиденциальной в понимании настоящего соглашения может быть признана лишь информация, хранящаяся в базе данных Сайта в зашифрованном виде и доступная для просмотра исключительно Администрации.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;1.3. Информация о лице, добровольно размещенная им в общих разделах Сайта при заполнении регистрационных онлайн-форм и доступная любому другому Пользователю Сайта, или информация, которая может быть свободно получена из других общедоступных источников, не является конфиденциальной.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;2. БЕЗОПАСНОСТЬ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;2.1. Администрация использует современные технологии обеспечения конфиденциальности персональных данных, а также данных, полученных из регистрационных онлайн-форм, оставляемых Пользователями, с целью обеспечения максимальной защиты информации.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;2.2. Доступ к личной информации Пользователя осуществляется через систему авторизации с логином и паролем. Пользователь обязуется самостоятельно обеспечить сохранность авторизационных данных, ни под каким предлогом не разглашать их третьим лицам. Любые изменения личной информации, внесенные посредством авторизационных данных, будут считаться осуществленными лично Пользователем.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;3. ИСПОЛЬЗОВАНИЕ ИНФОРМАЦИИ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.1. Администрация осуществляет обработку только той информации, которую Пользователь предоставляет добровольно.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.2. Администрация имеет право на обработку персональной информации о Пользователе, полученной согласно п.1.1.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.3. Персональной информацией Пользователя, полученной согласно п.1.1., является:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– электронный адрес, идентификационный код, контактная информация;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– IP-адрес Пользователя;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– информация, которая может быть получена с файлов cookies;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– любая другая информацию, которую Пользователь оставил о себе при заполнении регистрационных онлайн-форм на Сайте.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.4. Администрация обрабатывает персональную информацию Пользователя для:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– предоставления услуг Информационного сервиса «TAXER»;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– оценки заинтересованности Пользователей в наших услугах и информирования их о новых услугах и обновлениях Сайта;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– разрешения споров и затруднительных ситуаций;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;– других целей, о которых Администрация дает знать Пользователю, запрашивая частную информацию.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.5. Администрация может использовать персональные данные Пользователя с целью рассылки сообщений технического и административного характера, новостей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.6. Администрация использует технологии отслеживания (файлы cookies) для сбора таких персональных данных, как тип браузера или операционная система, ссылочная страница, путь на Сайте, домен интернет-провайдера и т.п., в целях получения общей информации о том, как Сайт используется Пользователями. Файлы cookies позволяют совершенствовать данный Сайт в соответствии с требованиями его Пользователей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.7. Администрация сохраняет всю информацию, собранную с использованием файлов cookies, в формате, не предполагающем идентификации личности. Информация, получаемая через файлы cookies, не может быть раскрыта третьим лицам. Эта информация не будет несанкционированно передаваться третьим лицам.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;3.8. Информация, собранная о Пользователе, не подлежит разглашению третьим лицам, кроме случаев, предусмотренных законодательством Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;&lt;b&gt;4. ЗАКЛЮЧИТЕЛЬНЫЕ ПОЛОЖЕНИЯ&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.1. Заполняя форму регистрации на Сайте или посещая страницы Сайта, Пользователь автоматически принимает условия Соглашения.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.2. При обработке Администрацией персональных данных Пользователя, он имеет те же права, что и субъект персональных данных, предусмотренных&amp;nbsp;&lt;a href=&quot;http://zakon2.rada.gov.ua/laws/show/2297-17&quot; style=&quot;color: rgb(17, 180, 177); text-decoration: none;&quot;&gt;ст. 8 ЗУ «О защите персональных данных»&lt;/a&gt;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.3. Деятельность Администрации осуществляется в соответствии с законодательством Украины. Любые претензии, споры, официальные обращения будут рассматриваться исключительно в порядке, предусмотренном законодательством Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; color: rgb(88, 88, 88); font-family: ''Segoe UI'', Arimo, sans-serif; font-size: 14px; line-height: 20px; text-indent: 30px;&quot;&gt;4.4. Условия настоящего Соглашения могут быть изменены Администрацией в одностороннем порядке и вступят в силу в течение семи календарных дней с момента их публикации на Сайте. Если изменения будут существенными, Администрация сообщит Пользователю по электронной почте (отправляется на адрес электронной почты, указанный в регистрации) либо посредством уведомления на этом Сайте, до вступления в силу изменений.&lt;/p&gt;\r\n'),
(6, 1, 'Delivery Information', '&lt;p&gt;Delivery Information&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_information_to_layout`
--

TRUNCATE TABLE `oc_information_to_layout`;
--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(6, 0, 11),
(4, 0, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_information_to_store`
--

TRUNCATE TABLE `oc_information_to_store`;
--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Очистить таблицу перед добавлением данных `oc_language`
--

TRUNCATE TABLE `oc_language`;
--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 1, 0),
(2, 'Українська', 'ua', 'ua_UA', 'ua.png', 'ukrainian', 'ukrainian', 0, 1),
(3, 'Русский', 'ru', 'ru_RU.UTF-8', 'ru.png', 'russian', 'russian', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Очистить таблицу перед добавлением данных `oc_layout`
--

TRUNCATE TABLE `oc_layout`;
--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'OneCheckOut'),
(13, 'Latest'),
(14, 'Search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Очистить таблицу перед добавлением данных `oc_layout_route`
--

TRUNCATE TABLE `oc_layout_route`;
--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(34, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(35, 12, 0, 'onecheckout/'),
(36, 13, 0, 'product/latest'),
(37, 14, 0, 'product/search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Очистить таблицу перед добавлением данных `oc_length_class`
--

TRUNCATE TABLE `oc_length_class`;
--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Очистить таблицу перед добавлением данных `oc_length_class_description`
--

TRUNCATE TABLE `oc_length_class_description`;
--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Сантиметр', 'см'),
(2, 2, 'Міліметр', 'мм'),
(3, 1, 'Inch', 'in'),
(3, 2, 'Inch', 'in'),
(1, 3, 'Сантиметр', 'см'),
(2, 3, 'Милиметр', 'мм'),
(3, 3, 'Inch', 'in'),
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Очистить таблицу перед добавлением данных `oc_manufacturer`
--

TRUNCATE TABLE `oc_manufacturer`;
--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(11, 'Майстерня Камізелька', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_manufacturer_to_store`
--

TRUNCATE TABLE `oc_manufacturer_to_store`;
--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_multi_discounts`
--

DROP TABLE IF EXISTS `oc_multi_discounts`;
CREATE TABLE IF NOT EXISTS `oc_multi_discounts` (
  `multi_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `fulltime` int(11) DEFAULT NULL,
  `discount_option` int(11) DEFAULT NULL,
  `discount_start` datetime DEFAULT NULL,
  `discount_stop` datetime DEFAULT NULL,
  `discount_value` int(11) DEFAULT NULL,
  `subcategories` int(11) DEFAULT NULL,
  PRIMARY KEY (`multi_discount_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=8 ;

--
-- Очистить таблицу перед добавлением данных `oc_multi_discounts`
--

TRUNCATE TABLE `oc_multi_discounts`;
--
-- Дамп данных таблицы `oc_multi_discounts`
--

INSERT INTO `oc_multi_discounts` (`multi_discount_id`, `type`, `id`, `discount_type`, `fulltime`, `discount_option`, `discount_start`, `discount_stop`, `discount_value`, `subcategories`) VALUES
(7, 'total', 0, 'percentage', 0, 2, '2017-11-24 00:00:00', '2017-11-27 00:00:00', 20, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_news`
--

DROP TABLE IF EXISTS `oc_news`;
CREATE TABLE IF NOT EXISTS `oc_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `image_size` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Очистить таблицу перед добавлением данных `oc_news`
--

TRUNCATE TABLE `oc_news`;
--
-- Дамп данных таблицы `oc_news`
--

INSERT INTO `oc_news` (`news_id`, `status`, `image`, `image_size`, `date_added`, `viewed`) VALUES
(1, 1, '', 0, '2014-06-30 23:27:05', 522),
(2, 0, '', 0, '2014-06-30 23:33:45', 36),
(3, 0, '', 0, '2014-07-11 15:03:09', 11),
(4, 1, '', 0, '2015-01-13 21:59:18', 507),
(5, 1, 'data/products/vesna 16/Capture00293_2.jpg', 0, '2016-04-26 11:57:44', 383),
(6, 1, '', 0, '2017-01-08 14:23:33', 201);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_news_description`
--

DROP TABLE IF EXISTS `oc_news_description`;
CREATE TABLE IF NOT EXISTS `oc_news_description` (
  `news_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_news_description`
--

TRUNCATE TABLE `oc_news_description`;
--
-- Дамп данных таблицы `oc_news_description`
--

INSERT INTO `oc_news_description` (`news_id`, `language_id`, `title`, `meta_description`, `description`, `keyword`) VALUES
(2, 3, 'Как одеваться стильно и недорого!', '', '&lt;p&gt;Все мы имеем разные&amp;nbsp;достатки&amp;nbsp;и разные возможности. Но в одном мы похожи - НАМ ХОЧЕТСЯ ВЫГЛЯДЕТЬ СТИЛЬНО! Есть несколько базовых принципов, которые позволяют при минимальных затратах составить свой стильный гардероб:&lt;/p&gt;\r\n\r\n&lt;p&gt;1. &lt;strong&gt;В гардеробе каждой женщины просто обязана быть белая классическая рубашка (&lt;a href=&quot;http://kamizelka.in.ua/bodi/bodi-b-01.html&quot;&gt;&lt;span style=&quot;color:#000000;&quot;&gt;или рубашка боди&lt;/span&gt;&lt;/a&gt;).&lt;/strong&gt; Она смотрится уместно всегда. Другой вопрос, как её &quot;обыграть&quot;, чтобы образ был нескучный. Мы рекомендуем для выхода на работу дополнить рубашку стильным галстуком или &lt;a href=&quot;http://kamizelka.in.ua/akssesuary/&quot;&gt;&lt;span style=&quot;color:#000000;&quot;&gt;горжеткой&lt;/span&gt;&lt;/a&gt;, можно подобрать стильные женские подтяжки. За счет аксессуаров и их контраста с рубашкой, ваше лицо будет выглядеть более свежим и молодым, и по окончании рабочего дня вы будете так же милы, как и в его начале. Для выхода на прогулку ваш образ должен быть более свободным и раскованным. Поэтому можно слегка закатать рукава рубашки, дополнительно расстегнуть пуговичку и обыграть все аксессуаром ( шарфик, бусы, те же подтяжки или стильное ожерелье).&lt;/p&gt;\r\n', ''),
(3, 3, 'НОВАЯ ВЕСЕННЯЯ КОЛЛЕКЦИЯ!', '', '&lt;p&gt;Кофе?&lt;/p&gt;\r\n', ''),
(3, 2, 'ДОЩ,,,,', '', '&lt;p&gt;кава?&lt;/p&gt;\r\n', ''),
(1, 3, 'НЕМНОЖКО О РУБАШКЕ', 'О женской рубашке. С чем носить женскую рубашку.', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://kamizelka.in.ua/image/data/products/368-Studio-Session.jpg&quot; style=&quot;opacity: 0.9; line-height: 20.7999992370605px; width: 150px; height: 226px; float: left; margin: 10px; border-width: 0px; border-style: solid;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; Женская &lt;span style=&quot;font-size:16px;&quot;&gt;&lt;a href=&quot;http://kamizelka.in.ua/rubashki-bluzy/&quot;&gt;&lt;span style=&quot;color:#800080;&quot;&gt;р&lt;span style=&quot;line-height: 1.6em;&quot;&gt;у&lt;/span&gt;&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;a href=&quot;http://kamizelka.in.ua/rubashki-bluzy/&quot;&gt;&lt;span style=&quot;color:#800080;&quot;&gt;башка&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;color:#800080;&quot;&gt; &lt;/span&gt;&lt;/span&gt;– один из самых универсальных предметов гардероба наших дам, а потому никогда не выйдет из моды. Она подчеркивает все достоинства женской фигуры, одинаково эффектно смотрится и с классической&lt;span style=&quot;color:#800080;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;a href=&quot;http://kamizelka.in.ua/yubki/&quot;&gt;&lt;span style=&quot;color:#800080;&quot;&gt;юбкой&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;, и с джинсами, и с разными моделями брюк.&lt;/span&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; Для офисного гардероба незаменимый вариант - рубашки из мягкого хлопка разных оттенков. Обязательным является минимум - черная, белая и рубашка любимого цвета. В офисе замечательно смотрится рубашка, заправлен&lt;/p&gt;\r\n\r\n&lt;p&gt;ная в юбку или брюки, желательно с любимым аксессуаром. А еще лучше одеть рубашку боди и не переживать о том, что после того ,как Вы встали со стула рубашка «выскользнула» из под пояса юбки.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp; А после окончания рабочего дня, можно закатать рукава до локтя, приподнять воротник, слегка небрежно накинуть шарфик &amp;nbsp;и преобразиться из «офисной» дамы в стильную и современную леди. Если на улице прохладно, образ можно дополнить стильной&lt;span style=&quot;color:#800080;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;a href=&quot;http://kamizelka.in.ua/zhiletki/&quot;&gt;&lt;span style=&quot;color:#800080;&quot;&gt;жилеткой&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color:#800080;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; &amp;nbsp;Поэтому, милые дамы, не отказывайте себе в удовольствии радовать себя и окружающих своим очарованием и стилем! А мы Вам в этом постараемся помочь!&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(1, 2, 'ТРІШКИ ПРО СОРОЧКУ', 'про жіночу сорочку, з чим носити сорочку', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://kamizelka.in.ua/image/data/products/368-Studio-Session.jpg&quot; style=&quot;width: 150px; height: 226px; margin: 10px; float: left;&quot; /&gt;&amp;nbsp;&amp;nbsp;Жіноча &lt;a href=&quot;http://kamizelka.in.ua/rubashki-bluzy/&quot;&gt;сорочка&lt;/a&gt; - один з найбільш універсальних предметів гардероба наших дам, а тому ніколи не вийде з моди. Вона підкреслює всі достоїнства жіночої фігури, однаково ефектно виглядає і з класичною спідницею, і з джинсами, і з різними моделями брюк.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp; Для офісного гардероба незамінний варіант - сорочки з м''якого бавовни різних відтінків. Обов''язковим є мінімум - чорна, біла і сорочка улюбленого кольору. В офісі чудово виглядає сорочка, заправлена ​​в спідницю або брюки, бажано з улюбленим аксесуаром. А ще краще одягнути &lt;a href=&quot;http://kamizelka.in.ua/bodi/&quot;&gt;сорочку боді&lt;/a&gt; і не переживати про те, що після того, як Ви встали зі стільця сорочка «вислизнула» з під пояса спідниці.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; А після закінчення робочого дня, можна закатати рукава до ліктя, підняти комір, злегка недбало накинути шалик і перетворитися з «офісної» дами в стильну і сучасну леді. Якщо на вулиці прохолодно, образ можна доповнити стильною &lt;a href=&quot;http://kamizelka.in.ua/zhiletki/&quot;&gt;камізелькою&lt;/a&gt;.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; Тому, милі дами, не відмовляйте собі в задоволенні радувати себе та оточуючих своєю чарівністю і стилем! А ми Вам в цьому спробуємо допомогти!&lt;/p&gt;\r\n', ''),
(4, 3, 'А ТЕПЕРЬ О ЖИЛЕТКЕ:', 'жилетка, женская жилетка, купить с чем носить жилетку, стильная жилетка цена в Украине', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://kamizelka.in.ua/image/data/products/349-Studio-Session.jpg&quot; style=&quot;width: 150px; height: 226px; float: right;margin: 10px;&quot; /&gt;​&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://kamizelka.in.ua/ru/zhiletki/&quot;&gt;Женская жилетка&lt;/a&gt; – это один из самых интересных и неоднозначных предметов женского гардероба. Исторически сложилось так: первыми жилетки начали носить модники-французы. Потом они приглянулись довольно консервативным англичанам. Кстати, жилетки поначалу носили только мужчины. &amp;nbsp;А теперь весь мир имеет такое удовольствие))).&lt;/p&gt;\r\n\r\n&lt;p&gt;Казалось бы, жилетка – очень строгий и официальный предмет гардероба. А нет!&amp;nbsp;Если к жилетке надеть джинсы, хлопковую или льняную рубашку и добавить нескучный шарфик, то получится образ игривый и лёгкий. А можно под жилетку одеть майку, а можно футболку, а… можно и ничего не одевать, главное чтобы в меру и стильно.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ну а если, выглядеть нужно сдержанно и представительно, то надеваем любимую рубашку и не стесняемся добавить аксессуар, такой как галстук, бабочка, брошка, шарфик или &lt;a href=&quot;http://kamizelka.in.ua/ru/akssesuary/&quot;&gt;горжетка&lt;/a&gt; - и стильно и официально, и в конце концов КРАСИВО!&lt;/p&gt;\r\n\r\n&lt;p&gt;Потому, милые дамы, экспериментируйте, балуйте себя стильными вещами и восхищённые взгляды не заставят себя долго ждать!&lt;/p&gt;\r\n', ''),
(4, 2, 'А ЗАРАЗ ПРО КАМІЗЕЛЬКУ', 'жіноча камізелька, жіночий жилет, купити  з чим носити жилет', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://kamizelka.in.ua/image/data/products/349-Studio-Session.jpg&quot; style=&quot;width: 150px; height: 226px; float: right;margin: 10px;&quot; /&gt;​&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://kamizelka.in.ua/zhiletki/&quot;&gt;Жіноча камізелька&lt;/a&gt;, або звично жилет&amp;nbsp;&amp;nbsp;- це один з найцікавіших і неоднозначних предметів жіночого гардеробу. Історично склалося так: першими жилети почали носити модники-французи. Потім вони придивилися досить консервативним англійцям. До речі, жилети спочатку носили тільки чоловіки. &amp;nbsp;А тепер весь світ має таке задоволення))).&amp;nbsp;&lt;br /&gt;\r\nЗдавалося б, жилет - дуже строгий і офіційний предмет гардеробу. А ні. Якщо до жилета надіти джинси, бавовняну або льняну сорочку і додати ненудний шалик, то вийде образ грайливий і легкий. А можна під жилет одягнути майку, а можна футболку, а. можна і нічого не одягати, головне щоб в міру і стильно.&lt;br /&gt;\r\nНу а якщо, виглядати треба стримано і представницьки, то надіваємо улюблену сорочку і не соромимося додати аксесуар, такий як краватка, метелик, брошка, шалик або &lt;a href=&quot;http://kamizelka.in.ua/akssesuary/&quot;&gt;горжетку&lt;/a&gt; - і стильно і офіційно, і врешті-решт КРАСИВО!&lt;br /&gt;\r\nПотому, милі пані, експериментуйте, балуйте себе стильними речами і захоплені погляди не змусять себе довго чекати!&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', ''),
(3, 1, 'фыв', '', '&lt;p&gt;фыва&lt;/p&gt;\r\n', ''),
(2, 2, 'Ирина Александровна!', '', '&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;По вашей просьбе, убрал из оформления заказа индекс, но &quot;купон&quot; и &quot;сертификат&quot; убрать затруднительно, точнее убрать можно, вернуть потом тяжело :(&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;Так же, заменил флажки переключения языков на надписи.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-size: 13px;&quot;&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;С уважением, Дмитрий!&lt;/span&gt;&lt;/p&gt;\r\n', ''),
(2, 1, '2я новость', '', '&lt;p&gt;2я новость&amp;nbsp;2я новость&amp;nbsp;2я новость&amp;nbsp;2я новость&amp;nbsp;2я новость&amp;nbsp;2я новость&amp;nbsp;2я новость&amp;nbsp;2я новость&lt;/p&gt;\r\n', ''),
(1, 1, 'WORK!', '', '&lt;p&gt;Ура! Работает&lt;/p&gt;\r\n', ''),
(4, 1, 'ааа', '', '&lt;p&gt;прррр&lt;/p&gt;\r\n', ''),
(5, 3, 'ЧЕМ ХОРОШ ЛЁН', 'Одежда из льна', '&lt;p&gt;Как правило, одежду изо льна на человеке мы распознаём издалека. Характерная помятость и мешковитость (иначе не скажешь) безошибочно подсказывает – это лён. Но, если «понять и принять» эту особенность льняной ткани, то в остальном сплошные ПЛЮСЫ.&lt;/p&gt;\r\n\r\n&lt;p&gt;Итак, одежду изо льна люди носили более пяти тысяч лет назад и носят по сегодняшний день. Более того, в Европе такая одежда относится к классу LUXE, а в древности носить льняные одежки считалось предметом роскоши. И дело тут не только в сложном и долгом процессе изготовления ткани из стебля льна, но и в особенностях одежды из него.&lt;/p&gt;\r\n\r\n&lt;p&gt;А теперь все ПЛЮСЫ по порядку.&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Прочность льняной нити в 2 раза выше хлопковой и в 4 раза – шерстяной. Изо всех натуральных волокон лен считается самым прочным. Вывод - льняная одежда ДОЛГОВЕЧНА.&lt;/li&gt;\r\n	&lt;li&gt;Лен, особенно неотбеленный, обладает бактерицидными свойствами. Вывод – одежда изо льна ПОЛЕЗНА ДЛЯ ЗДОРОВЬЯ. &amp;nbsp;Также специалисты говорят о способности отражать УФ-излучение.&lt;/li&gt;\r\n	&lt;li&gt;За счет хорошей способности впитывать влагу, в жаркую погоду льняная ткань создает ощущение прохлады. Вывод – такая одежда СПАСАЕТ ОТ ЖАРЫ.&lt;/li&gt;\r\n	&lt;li&gt;Лен – ГИПОАЛЕРГЕНЕН. Поэтому врачи советуют людям склонным к аллергии носить одежду изо льна, также постараться использовать льняные изделия в быту (полотенца, постельное белье).&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Всё вышеперечисленное натолкнуло нас на создание коллекции изо льна. Нам очень важно понимать, что наше изделие приносит здоровье, комфорт и просто эстетическое удовольствие его владельцу.&lt;/p&gt;\r\n\r\n&lt;p&gt;К слову, автор этой статьи более 10 лет влюблен в льняные вещи) . Летом-только льняные рубашечки, блузочки, маечки. Постельное белье – только льняное, поспав хоть раз на нем, никакое другое уже не нравится ). Разные мелочи – торбочки, шарфики, полотенца – тоже лен!&amp;nbsp; Не известно существует ли ЛЁНОМАНИЯ, но автор, уже болеет ею, и при этом счастлив! Чего и вам желает!&lt;/p&gt;\r\n', ''),
(5, 2, 'ЧИМ ГАРНИЙ ЛЬОН', 'Одяг з льону', '&lt;p&gt;Як правило, одяг з льону на людині ми розпізнаємо здалеку. Характерна пом’ятість і мішковитість (інакше не скажеш) безпомилково підказує - це льон. Але, якщо «зрозуміти і прийняти» цю особливість лляної тканини, то в іншому суцільні ПЛЮСИ.&lt;/p&gt;\r\n\r\n&lt;p&gt;Отже, одяг з льону люди носили більше п''яти тисяч років тому і носять по сьогоднішній день. Більш того, в Європі такий одяг належить до класу LUXE, а в давнину носити лляний одяг вважалося предметом розкоші. І справа тут не тільки в складному і довгому процесі виготовлення тканини з стебла льону, а й в особливостях одягу з нього.&lt;/p&gt;\r\n\r\n&lt;p&gt;А тепер всі ПЛЮСИ послідовно:&lt;/p&gt;\r\n\r\n&lt;p&gt;1. Міцність лляної нитки в 2 рази вище бавовняної та в 4 рази - вовняної. З усіх натуральних волокон льон вважається найміцнішим. Висновок - лляний одяг ДОВГОВІЧНИЙ.&lt;/p&gt;\r\n\r\n&lt;p&gt;2. Льон, особливо невибілений, має бактерицидні властивості. Висновок - одяг з льону КОРИСНИЙ ДЛЯ ЗДОРОВ''Я. Також фахівці говорять про здатність відображати УФ- випромінювання.&lt;/p&gt;\r\n\r\n&lt;p&gt;3. За рахунок високої здатності вбирати вологу, в жарку погоду лляна тканина створює відчуття прохолоди. Висновок - такий одяг РЯТУЄ від спеки.&lt;/p&gt;\r\n\r\n&lt;p&gt;4. Льон - гіпоалергенний. Тому лікарі радять людям схильним до алергії носити одяг з льону, також постаратися використовувати лляні вироби в побуті (рушники, постільна білизна).&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Все перераховане вище наштовхнуло нас на створення колекції з льону. Нам дуже важливо розуміти, що наш виріб приносить здоров''я, комфорт і просто естетичне задоволення його власникові.&lt;/p&gt;\r\n\r\n&lt;p&gt;До слова, автор цієї статті більше 10 років закоханий в лляні речі). Влітку-тільки лляні сорочки, блузочки, маєчки. Постільна білизна - тільки льняна, поспавши хоч раз на ньому, ніяке інше вже не подобається). Різні дрібниці - торбинки, шарфики, рушники - теж льон! Не відомо чи існує ЛЁНОМАНІЯ, але автор, вже хворіє нею, і при цьому щасливий! Чого і вам бажає!&lt;/p&gt;\r\n', ''),
(5, 1, 'Чим гарний льон', '', '&lt;p&gt;Чим гарний льон&lt;/p&gt;\r\n', ''),
(6, 3, 'СЕРЫЙ ЦВЕТ-САМЫЙ ФРАНЦУЗКИЙ ЦВЕТ', '', '&lt;p&gt;«Серая мышка» носит одежду серого цвета – вот уж точно неправда! Серый цвет &amp;nbsp;- это самый французский цвет, он наиболее любим теми, на кого равняются все модницы мира. У серого цвета есть масса достоинств, и вот некоторые из них:&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Серый цвет - универсален, он сочетается абсолютно со всеми цветами!&lt;/li&gt;\r\n	&lt;li&gt;Одежда серого цвета подходит абсолютно всем цветотипам.&amp;nbsp; Здесь главное определить свой оттенок. Если вам не подходит зеленый цвет, то просто не одевайте одежду &amp;nbsp;«серый с оттенком зеленого», а выбирайте более теплые цвета, &amp;nbsp;как «серый с оттенком розового».&lt;/li&gt;\r\n	&lt;li&gt;Серый цвет хорош, как для делового гардероба так и для прогулочного.&lt;/li&gt;\r\n	&lt;li&gt;«Французский цвет» уместен в любое время года. Разнообразие оттенков позволяет составлять как светлые летящие летние луки, так и монохромные сдержанные зимние и осенние.&lt;/li&gt;\r\n	&lt;li&gt;Серый цвет никогда не выходит из моды! И купив качественную и стильную базовую вещь серого цвета, вы сможете носить её пару сезонов, не переживая об актуальности модели, и тем самым сэкономив бюджет.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Это только основные достоинства серого цвета, но и их достаточно, для того, чтобы прикупить себе парочку стильных вещей «французского цвета»!&lt;/p&gt;\r\n', ''),
(6, 2, 'СІРИЙ КОЛІР - САМИЙ ФРАНЦУЗЬКИЙ КОЛІР', '', '&lt;p&gt;&quot;Сіра мишка&quot; носить одяг сірого кольору - ось вже точно неправда! Сірий колір&amp;nbsp; - це самий французький колір, він найбільш улюблений тими, на кого рівняються усі модниці світу. У сірого кольору є маса достоїнств, і ось деякі з них:&lt;/p&gt;\r\n\r\n&lt;p&gt;1.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Сірий колір - універсальний, він поєднується абсолютно з усіма кольорами!&lt;/p&gt;\r\n\r\n&lt;p&gt;2.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Одяг сірого кольору підходить абсолютно усім.&amp;nbsp; Тут головне визначити свій відтінок. Якщо вам не підходить зелений колір, то просто не одягайте одяг&amp;nbsp; &quot;сірий з відтінком зеленого&quot;, а вибирайте тепліші кольори,&amp;nbsp; як &quot;сірий з відтінком рожевого&quot;.&lt;/p&gt;\r\n\r\n&lt;p&gt;3.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Сірий колір гарно виглядає, як для у діловому гардеробі &amp;nbsp;так і у прогулочному.&lt;/p&gt;\r\n\r\n&lt;p&gt;4.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &quot;Французький колір&quot; доречний у будь-яку пору року. Різноманітність відтінків дозволяє складати як світлі літні луки, що летять, так і монохромні стримані зимові і осінні.&lt;/p&gt;\r\n\r\n&lt;p&gt;5.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Сірий колір ніколи не виходить з моди! І купивши якісну і стильну базову річ сірого кольору, ви зможете носити її пару сезонів, не переживаючи про актуальність моделі, і тим самим заощадивши бюджет.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Це тільки основні достоїнства сірого кольору, але і їх вистачає, для того, щоб прикупити собі парочку стильних речей &quot;французького кольору&quot;!&lt;/p&gt;\r\n', ''),
(6, 1, 'СІРИЙ КОЛІР - САМИЙ ФРАНЦУЗКИЙ КОЛІР', '', '&lt;p&gt;11111&lt;/p&gt;\r\n', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_news_to_store`
--

DROP TABLE IF EXISTS `oc_news_to_store`;
CREATE TABLE IF NOT EXISTS `oc_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_news_to_store`
--

TRUNCATE TABLE `oc_news_to_store`;
--
-- Дамп данных таблицы `oc_news_to_store`
--

INSERT INTO `oc_news_to_store` (`news_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_openbay_faq`
--

DROP TABLE IF EXISTS `oc_openbay_faq`;
CREATE TABLE IF NOT EXISTS `oc_openbay_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Очистить таблицу перед добавлением данных `oc_openbay_faq`
--

TRUNCATE TABLE `oc_openbay_faq`;
--
-- Дамп данных таблицы `oc_openbay_faq`
--

INSERT INTO `oc_openbay_faq` (`id`, `route`) VALUES
(1, 'extension/openbay');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Очистить таблицу перед добавлением данных `oc_option`
--

TRUNCATE TABLE `oc_option`;
--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1),
(13, 'radio', 0),
(14, 'checkbox', 1),
(15, 'checkbox', 2),
(16, 'radio', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_option_description`
--

TRUNCATE TABLE `oc_option_description`;
--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(1, 3, 'Radio'),
(2, 3, 'Checkbox'),
(4, 3, 'Text'),
(6, 3, 'Textarea'),
(8, 3, 'Date'),
(7, 3, 'File'),
(5, 3, 'Select'),
(9, 3, 'Time'),
(10, 3, 'Date &amp; Time'),
(12, 3, 'Delivery Date'),
(11, 3, 'Size'),
(13, 3, 'Размер'),
(13, 2, 'Розмір'),
(13, 1, 'Size'),
(14, 3, 'эта модель в виде боди'),
(14, 2, 'ця модель у вигляді боді'),
(14, 1, 'bodi'),
(15, 3, 'эта модель в виде рубашки'),
(15, 2, 'ця модель у вигляді сорочки'),
(15, 1, 'This model is a shirt'),
(16, 3, 'другой цвет'),
(16, 2, 'інший колір'),
(16, 1, 'інший колір');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Очистить таблицу перед добавлением данных `oc_option_value`
--

TRUNCATE TABLE `oc_option_value`;
--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, 'no_image.jpg', 1),
(53, 13, 'no_image.jpg', 3),
(50, 13, 'no_image.jpg', 1),
(49, 13, 'no_image.jpg', 0),
(51, 13, 'no_image.jpg', 2),
(52, 13, 'no_image.jpg', 4),
(47, 11, 'no_image.jpg', 2),
(48, 11, 'no_image.jpg', 3),
(54, 11, '', 4),
(55, 11, '', 5),
(60, 14, '', 0),
(58, 14, 'no_image.jpg', 3),
(59, 14, 'no_image.jpg', 4),
(56, 14, 'no_image.jpg', 1),
(57, 14, 'no_image.jpg', 2),
(61, 15, '', 2),
(62, 16, 'no_image.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_option_value_description`
--

TRUNCATE TABLE `oc_option_value_description`;
--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, '46'),
(48, 2, 11, '46'),
(48, 3, 11, '46'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(47, 1, 11, '44'),
(47, 2, 11, '44'),
(47, 3, 11, '44'),
(43, 3, 1, 'Large'),
(32, 3, 1, 'Small'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(31, 3, 1, 'Medium'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(46, 1, 11, '42'),
(46, 2, 11, '42'),
(46, 3, 11, '42'),
(53, 1, 13, '48'),
(53, 2, 13, '48'),
(53, 3, 13, '48'),
(50, 1, 13, '44'),
(50, 2, 13, '44'),
(50, 3, 13, '44'),
(49, 1, 13, '42'),
(49, 2, 13, '42'),
(49, 3, 13, '42'),
(51, 1, 13, '46'),
(51, 2, 13, '46'),
(51, 3, 13, '46'),
(52, 1, 13, '50'),
(52, 2, 13, '50'),
(52, 3, 13, '50'),
(54, 3, 11, '48'),
(54, 2, 11, '48'),
(54, 1, 11, '48'),
(55, 3, 11, '50'),
(55, 2, 11, '50'),
(55, 1, 11, '50'),
(59, 1, 14, '48'),
(59, 2, 14, '48'),
(59, 3, 14, '48'),
(58, 1, 14, '46'),
(58, 2, 14, '46'),
(58, 3, 14, '46'),
(56, 1, 14, '42'),
(56, 2, 14, '42'),
(56, 3, 14, '42'),
(57, 1, 14, '44'),
(57, 2, 14, '44'),
(57, 3, 14, '44'),
(60, 3, 14, 'боди '),
(60, 2, 14, 'боді'),
(60, 1, 14, 'bodi'),
(61, 3, 15, 'рубашка'),
(61, 2, 15, 'сорочка'),
(61, 1, 15, 'shirt'),
(62, 1, 16, 'чорний'),
(62, 2, 16, 'чорний'),
(62, 3, 16, 'черный');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- Очистить таблицу перед добавлением данных `oc_order`
--

TRUNCATE TABLE `oc_order`;
--
-- Дамп данных таблицы `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(63, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 14, 1, 'Катерина', 'Руденко', 'ek.rudenko@gmail.com', '+380639777079', '', 'Катерина', 'Руденко', '', '', '', 'вул. Середньофонтанська, 34', '', 'Одеса', '', 'Украина', 220, 'Одесса', 3495, '', 'Банківський переказ', 'bank_transfer', 'Катерина', 'Руденко', '', 'вул. Середньофонтанська, 34', '', 'Одеса', '', 'Украина', 220, 'Одесса', 3495, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олегiвна Номер відділення Нової Пошти: 24', '1220.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '79.135.195.142', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 'en-US,en;q=0.8,ru;q=0.6,de;q=0.4', '2015-05-26 01:47:47', '2015-05-31 18:29:25'),
(64, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 8, 2, 'Анастасия', 'Педоренко', 'ealanariel@gmail.com', '+380638338520', '', 'Анастасия', 'Педоренко', '', '', '', 'Днепропетровск', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банківський переказ', 'bank_transfer', 'Анастасия', 'Педоренко', '', 'Днепропетровск', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: 16 (пл. героев Майдана) Смогу ответить после 11:00\r\nСпасибо!', '873.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '81.26.159.13', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-06-09 11:30:29', '2015-06-11 15:19:11'),
(65, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Наталья', 'Загоруйко', 'zagnataly@gmail.com', '+380963878744', '', 'Наталья', 'Загоруйко', '', '', '', 'бул. Ивана Лепсе 4', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталья', 'Загоруйко', '', 'бул. Ивана Лепсе 4', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Анатольевна автосалон Фольксваген, с 10,00 до 18,00', '520.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '194.44.218.243', '172.22.0.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-06-11 15:14:15', '2015-06-15 17:21:05'),
(66, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 16, 1, 'Наталья', 'Загоруйко', 'zagnataly@gmail.com', '+380963878744', '', 'Наталья', 'Загоруйко', '', '', '', 'бул. И. Лепсе, 4', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталья', 'Загоруйко', '', 'бул. И. Лепсе, 4', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Анатольевна Большая просьба - если возможно, сделайте, плс., кружевные подтяжки немножко короче - на 2 см.\r\nДоставка с 10 до 18, ориентир - автосалон Фольксваген.', '520.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '194.44.218.243', '172.22.0.179', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-06-24 11:24:05', '2015-07-27 14:29:03'),
(67, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 17, 1, 'Олена', 'Шафієва', 'penka1212@gmail.com', '0503829178', '', 'Олена', 'Шафієва', '', '', '', 'пр-т Перемоги,67', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Олена', 'Шафієва', '', 'пр-т Перемоги,67', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Олександрівна', '1525.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '95.158.60.226', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-07-28 12:23:51', '2015-07-29 14:41:14'),
(53, 2, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 10, 1, 'Алла', 'Якупова', 'yav.cmk@gmail.com', '+380 67 541 67 45', '', 'Алла', 'Якупова', '', '', '', 'НП №16', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банковский перевод', 'bank_transfer', 'Алла', 'Якупова', '', 'НП №16', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Курьерская доставка по Украине', 'courier_ua.courier_ua', 'Служба доставки: Новая Почта Номер отделения службы доставки: отделение №16(шестнадцать) оплата на карту ПриватБанка, вышлите номер карточки для оплаты', '350.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '91.215.52.93', '192.168.205.53', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-01-28 09:57:28', '2015-01-30 13:30:53'),
(9, 0, 'INV-2013-00', 0, 'ЗигЗаг', 'http://mag-zigzag.tk/', 3, 1, 'di', 'li', '3759326@ukr.net', '2222', '', 'di', 'li', '', '', '', 'qqq', '', 'Kiev', '02222', 'Ukraine', 220, 'Kiev', 3490, '', 'Оплата при доставке', 'cod', 'di', 'li', '', 'qqq', '', 'Kiev', '02222', 'Ukraine', 220, 'Kiev', 3490, '', 'Самовывоз из магазина', 'pickup.pickup', '', '301.0000', 0, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '217.27.156.66', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-06-23 18:18:31', '2014-06-23 18:18:31'),
(54, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Даниил', 'Домащенко', 'ayto.tir@gmail.com', '+380664515291', '', 'Даниил', 'Домащенко', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставке', 'cod', 'Даниил', 'Домащенко', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовывоз из магазина', 'pickup.pickup', '', '310.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '176.36.95.254', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,de;q=0.2,uk;q=0.2', '2015-02-22 16:08:45', '2015-02-25 19:53:53'),
(55, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 10, 1, 'Алла', 'Якупова', 'yav.cmk@gmail.com', '067-541-67-45', '', 'Алла', 'Якупова', '', '', '', '', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банковский перевод', 'bank_transfer', 'Алла', 'Якупова', '', '', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Курьерская доставка по Украине', 'courier_ua.courier_ua', 'Служба доставки: Новая Почта Номер отделения службы доставки: 16 оплата на карту ПриватБанка', '325.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '93.127.107.136', '192.168.205.53', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-02-24 15:27:23', '2015-02-25 19:54:11'),
(56, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Татьяна', 'Татьяна', 'tanya450209@gmail.com', '0504122207', '', 'Татьяна', 'Татьяна', '', '', '', 'Майорова,7', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Банковский перевод', 'bank_transfer', 'Татьяна', 'Татьяна', '', 'Майорова,7', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка курьером по городу Киеву и Вишневое', 'courier.courier', 'может измениться адрес зависит от времени доставки', '1065.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '91.235.71.244', '', 'Mozilla/5.0 (Linux; U; Android 3.2; uk-ua; GT-P6800 Build/HTJ85B) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13', 'uk-UA, en-US', '2015-03-11 21:48:04', '2015-03-17 00:59:03'),
(57, 3, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Марина', 'Игонькина', 'migo13@mail.ru', '0931371617', '', 'Марина', 'Игонькина', '', '', '', 'НОВАЯ ПОЧТА 28', '', 'Одесса', '', 'Украина', 220, 'Одесса', 3495, '', 'Оплата при доставке', 'cod', 'Марина', 'Игонькина', '', 'Новая Почта 28', '', 'Одесса', '', 'Украина', 220, 'Одесса', 3495, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Номер отделения Новой Почты: 28', '460.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '79.142.206.83', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-03-28 20:29:09', '2015-04-09 12:44:34'),
(58, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 8, 1, 'Анастасия', 'Педоренко', 'ealanariel@gmail.com', '+380638338520', '', 'Анастасия', 'Педоренко', '', '', '', 'Днепропетровск', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банківський переказ', 'bank_transfer', 'Анастасия', 'Педоренко', '', 'Днепропетровск', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: Відділення №16: пл. Героїв Майдану, 1 Оплата на карту ПБ', '820.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '81.26.159.13', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-04-08 09:37:33', '2015-04-10 10:21:05'),
(59, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Анна', 'Скачко', 'Voll4demaar@yandex.ru', '067 493 07 06', '', 'Анна', 'Скачко', '', '', '', '', '', 'Коростишев, Житомирская обл.', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Анна', 'Скачко', '', '', '', 'Коростишев, Житомирская обл.', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: № 1 Звонить после 10:00 до 21:00, маленький ребенок.', '470.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '95.132.96.27', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-04-11 20:35:32', '2015-04-17 22:50:58'),
(60, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 12, 1, 'Наталя', 'Наунко', 'naunko11@ukr.net', '0672659925', '', 'Наталя', 'Наунко', '', '', '', '', '', 'Львів', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталя', 'Наунко', '', '', '', 'Львів', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: №1', '470.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '83.170.197.30', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2015-05-08 15:04:58', '2015-05-20 13:16:00'),
(61, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Татьяна Валентиновна', 'Киришун', 'itanya@csltd.com.ua', '0675711929', '', 'Татьяна Валентиновна', 'Киришун', '', '', '', '', '', 'Харків', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Татьяна', 'Киришун', '', '', '', 'Харків', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: 17', '395.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.241.109.178', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-05-15 11:29:14', '2015-09-02 18:07:22'),
(62, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 13, 1, 'Лилия', 'Кшнякина', 'lilia-kshnyakina@inbox.ru', '0668592177', '', 'Лилия', 'Кшнякина', '', '', '', 'ул. Харьковская, д. 23, кв. 53', '', 'Белицкое', '', 'Украина', 220, 'Донецк', 3485, '', 'Оплата при доставке', 'cod', 'Лилия', 'Кшнякина', '', 'ул. Харьковская, д. 23, кв. 53', '', 'Белицкое', '', 'Украина', 220, 'Донецк', 3485, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Отчество: Викторовна Номер отделения Новой Почты: 1 Новая Почта, наложенный платеж, г.Белицкое, отделение №1, ул.Донецкая, 14', '420.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '46.174.69.72', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-05-20 19:41:10', '2015-05-26 14:10:04'),
(22, 0, 'INV-2014-00', 0, 'ЗигЗаг', 'http://mag-zigzag.tk/', 4, 1, 'Ira', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', '', 'Ira', 'Gavrilenko', '', '', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киев', 3491, '', 'Банковский перевод', 'bank_transfer', 'Ira', 'Gavrilenko', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киев', 3491, '', 'Самовывоз из магазина', 'pickup.pickup', '', '266.4900', 0, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '217.27.156.182', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-07-11 12:43:55', '2014-07-11 12:43:55'),
(68, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Людмила', 'Кононець', 'lvkon2011@yandex.ua', '067 72 85 785', '', 'Людмила', 'Кононець', '', '', '', '', '', 'Київ', '16600', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Людмила', 'Кононець', '', '', '', 'Київ', '16600', 'Украина', 220, 'Киев', 3491, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Володимирівна Номер відділення Нової Пошти: 31', '495.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.72.118.175', '', 'Opera/9.80 (Windows NT 5.1; Edition Ukraine Local) Presto/2.12.388 Version/12.10', 'uk-UA,uk;q=0.9,en;q=0.8', '2015-08-27 22:57:56', '2015-08-31 09:25:11'),
(69, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 18, 1, 'Світлана', 'Дяків', 's1717s@ukr.net', '0676708288', '', 'Світлана', 'Дяків', '', '', '', '', '', 'Львів', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Світлана', 'Дяків', '', '', '', 'Львів', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Жалатдинівна Номер відділення Нової Пошти: 16', '450.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '89.105.237.201', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'ru,en-US;q=0.8,en;q=0.6,uk;q=0.4,cs;q=0.2,pl;q=0.2', '2015-09-08 16:23:24', '2015-09-16 22:04:54'),
(70, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 19, 1, 'Наталья', 'Короткова', 'tala.korotkova@gmail.com', '+380663690603', '', 'Наталья', 'Короткова', '', '', '', 'НП склад 59', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банківський переказ', 'bank_transfer', 'Наталья', 'Короткова', '', 'НП склад 59', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Юрьевна Номер відділення Нової Пошти: 59', '470.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '46.98.217.79', '', 'Mozilla/5.0 (Linux; Android 4.4.2; HTC One mini 2 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.133 Mobile Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-09-09 23:09:37', '2015-09-16 22:05:18'),
(30, 0, 'INV-2014-00', 0, 'ЗигЗаг', 'http://mag-zigzag.tk/', 4, 1, 'Ira', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', '', 'Ira', 'Gavrilenko', '', '', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киев', 3491, '', 'Банківський переказ', 'bank_transfer', 'Ira', 'Gavrilenko', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киев', 3491, '', 'Самовивіз зі складу', 'pickup.pickup', '', '475.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '217.27.156.182', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-07-11 18:18:12', '2014-07-11 18:18:12'),
(31, 0, 'INV-2014-00', 0, 'ЗигЗаг', 'http://mag-zigzag.tk/', 1, 1, 'Dmytro', 'Lirner', '3759326@gmail.com', '11111', '', 'Dmytro', 'Lirner', '', '', '', 'apt.81', 'apt.81', 'Kiev', '02217', 'Украина', 220, 'Киевская область', 3490, '', '', 'free_checkout', 'Dmytro', 'Lirner', '', 'apt.81', 'apt.81', 'Kiev', '02217', 'Украина', 220, 'Киевская область', 3490, '', 'Самовывоз из магазина', 'pickup.pickup', '', '0.0000', 0, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '217.27.156.66', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-07-11 18:18:06', '2014-07-11 18:18:06'),
(72, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 20, 1, 'Лариса', 'Левченко', 'loric_l@mail.ru', '050-130-43-12', '', 'Лариса', 'Левченко', '', '', '', 'Шенгелыя, б.2, кв.74', '', 'Херсон', '', 'Украина', 220, 'Херсон', 3970, '', 'Банківський переказ', 'bank_transfer', 'Лариса', 'Левченко', '', 'Шенгелия, б.2, кв.74', '', 'Херсон', '', 'Украина', 220, 'Херсон', 3970, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Владимировна Номер відділення Нової Пошти: отделение №15, Дорофеева, 30 ( маг.&quot;Велика Кишеня&quot;) просьба при оформлении посылки указать стоимость товара 200грн для удешевления пересылки. Спасибо! ', '890.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.94.26.134', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-09-22 11:15:31', '2015-09-22 14:01:10'),
(80, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Анна', 'Сервули', 'annaservuli@gmail.com', '0950202085', '', 'Анна', 'Сервули', '', '', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Анна', 'Сервули', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергеевна Номер відділення Нової Пошти: 19', '1210.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.79.134.21', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-09-29 07:48:25', '2015-09-29 07:48:25'),
(81, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 30, 1, 'Анна', 'Сервули', 'annaservuli@gmail.com', '0950202085', '', 'Анна', 'Сервули', '', '', '', 'Московская, 30', '', 'Херсон', '', 'Украина', 220, 'Херсон', 3970, '', 'Банківський переказ', 'bank_transfer', 'Анна', 'Сервули', '', 'Московская, 30', '', 'Херсон', '', 'Украина', 220, 'Херсон', 3970, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергеевна Номер відділення Нової Пошти: 19', '1210.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.79.134.21', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-09-29 13:09:37', '2015-10-01 22:47:19'),
(82, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 31, 1, 'Марина', 'Левицька', 'm.levitskaya@mail.ru', '0632406977', '', 'Марина', 'Левицька', '', '', '', 'Червоноармійська, 100', '', 'Київ', '03179', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Марина', 'Левицька', '', 'Червоноармійська, 100', '', 'Київ', '03179', 'Украина', 220, 'Киев', 3491, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Ігорівна 9.00-18.00', '460.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '95.158.38.244', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2015-10-10 21:44:57', '2015-10-15 22:20:29'),
(84, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 32, 1, 'Елена', 'Андрущук', 'an_elena@mail.ua', '0677801759', '', 'Елена', 'Андрущук', '', '', '', '', '', 'Запорожье', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Елена', 'Андрущук', '', '', '', 'Запорожье', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Александровна Номер відділення Нової Пошти: 10', '470.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '94.240.167.91', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 Safari/600.1.4', 'ru', '2015-10-15 21:59:36', '2015-10-20 16:43:21'),
(85, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 33, 1, 'Ганна', 'Ковальчук', 'anjakov@ukr.net', '096-46-29-015', '', 'Ганна', 'Ковальчук', '', '', '', 'Наукова', '', 'Львів', '', 'Украина', 220, 'Львов', 3493, '', 'Банківський переказ', 'bank_transfer', 'Ганна', 'Ковальчук', '', 'Наукова', '', 'Львів', '', 'Украина', 220, 'Львов', 3493, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Богданівна Номер відділення Нової Пошти: 10', '490.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '94.153.10.139', '', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 'uk,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-10-21 20:55:31', '2015-10-21 20:55:31'),
(39, 0, 'INV-2014-00', 0, 'Майстерня ЗігЗаг', 'http://mag-zigzag.tk/', 4, 1, 'Ira', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', '', 'Ira', 'Gavrilenko', '', '', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киевская область', 3490, '', 'Банківський переказ', 'bank_transfer', 'Ira', 'Gavrilenko', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киевская область', 3490, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', '', '1035.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '91.142.170.44', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-10-27 18:17:37', '2014-10-27 18:17:37'),
(40, 0, 'INV-2014-00', 0, 'Майстерня ЗігЗаг', 'http://mag-zigzag.tk/', 4, 1, 'Ira', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', '', 'Ira', 'Gavrilenko', '', '', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киевская область', 3490, '', 'Оплата при доставці', 'cod', 'Ira', 'Gavrilenko', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киевская область', 3490, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', '', '360.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '217.27.156.182', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-10-28 13:23:55', '2014-10-28 13:23:55'),
(86, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 33, 1, 'Ганна', 'Ковальчук', 'anjakov@ukr.net', '096-46-29-015', '', 'Ганна', 'Ковальчук', '', '', '', 'Наукова', '', 'Львів', '', 'Украина', 220, 'Львов', 3493, '', 'Банківський переказ', 'bank_transfer', 'Ганна', 'Ковальчук', '', 'Наукова', '', 'Львів', '', 'Украина', 220, 'Львов', 3493, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Богданівна Номер відділення Нової Пошти: 10', '490.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '94.153.10.139', '', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 'uk,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-10-22 07:37:45', '2015-10-28 17:15:42'),
(79, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 28, 1, 'Юлия', 'Чернова', 'yuliya.chernova83@gmail.com', '0672159858', '', 'Юлия', 'Чернова', '', '', '', 'ул. Большая Васильковская,100', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Юлия', 'Чернова', '', 'ул. Большая Васильковская,100', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Вадимовна Заказ могу принять 1 октября с 9 до 13 или с 14.30 до 18.00', '530.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '92.113.151.194', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-09-28 11:30:47', '2015-10-01 22:47:03'),
(87, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 8, 2, 'Анастасия', 'Педоренко', 'ealanariel@gmail.com', '+380503636467', '', 'Мельник', 'Марина', '', '', '', '', '', 'Днепропетровск', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Мельник', 'Марина', '', '', '', 'Днепропетровск', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: 16', '1201.5000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '81.26.159.13', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-10-27 16:28:00', '2015-10-27 16:28:00'),
(90, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Ирина', 'Дуленко', 'mishkarevich.irochka@gmail.com', '0965461080', '', 'Ирина', 'Дуленко', '', '', '', '', '', 'Новомосковск', '51283', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Ирина', 'Дуленко', '', '', '', 'Новомосковск', '51283', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Валентиновна Номер відділення Нової Пошти: 2', '420.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '31.42.125.0', '', 'Mozilla/5.0 (Linux; Android 5.0.2; LG-D724 Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.76 Mobile Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2015-10-31 08:32:03', '2015-11-11 22:00:28'),
(89, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 8, 2, 'Марина Александровна', 'Мельник', 'ealanariel@gmail.com', '+380503636467', '', 'Марина', 'Мельник', '', '', '', 'Днепропетровск', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банківський переказ', 'bank_transfer', 'Марина', 'Мельник', '', 'Днепропетровск', '', 'Днепропетровск', '', 'Украина', 220, 'Днепропетровск', 3484, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'Номер відділення Нової Пошти: 16', '778.5000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '81.26.159.13', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2015-10-28 16:19:50', '2015-10-31 11:51:42'),
(71, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Юлія', 'Садельська', 'yusad_93@mail.ru', '0993611884', '', 'Юлія', 'Садельська', '', '', '', '', '', 'Дніпропетровськ', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Юлія', 'Садельська', '', '', '', 'Дніпропетровськ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олександрівна Номер відділення Нової Пошти: 25', '420.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '82.207.51.214', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2015-09-15 17:44:29', '2015-09-15 17:44:29'),
(91, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 4, 2, 'Ira', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', '', 'Ira', 'Gavrilenko', '', '', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киевская область', 3490, '', 'Банківський переказ', 'bank_transfer', 'Ira', 'Gavrilenko', '', 'киев', '', 'киев', '', 'Украина', 220, 'Киевская область', 3490, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', '', '517.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '91.142.161.30', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-02-11 15:00:40', '2016-03-18 18:44:33'),
(92, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Ирина', 'Гавриленко', 'catering@cosmopolite-kiev.com', '0662634533', '', 'Ирина', 'Гавриленко', '', '', '', '', '', 'київ', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Ирина', 'Гавриленко', '', '', '', 'київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олександрівна Номер відділення Нової Пошти: 58', '495.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '91.142.161.30', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-02-11 15:04:10', '2016-03-18 18:44:55'),
(93, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 37, 1, 'Ганна', 'Акименко', 'akianna@gmail.com', '0661665809', '', 'Ганна', 'Акименко', '', '', '', '', '', 'Харків', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Ганна', 'Акименко', '', '', '', 'Харків', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олександрівна Номер відділення Нової Пошти: 42', '1450.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.76.217.160', '', 'Mozilla/5.0 (iPad; CPU OS 6_1_3 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10B329 Safari/8536.25', 'ru', '2016-03-13 20:46:51', '2016-03-22 20:20:18'),
(94, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 38, 1, 'CВІТЛАНА', 'ЮХИМОВИЧ', 'sveta_8828@mail.ru', '0661138666', '', 'CВІТЛАНА', 'ЮХИМОВИЧ', '', '', '', '', '', 'смт.Оржиця Полтавської області', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'CВІТЛАНА', 'ЮХИМОВИЧ', '', '', '', 'смт.Оржиця Полтавської області', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: АНДРІЇВНА Номер відділення Нової Пошти: вул. Мічуріна,№1', '450.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '192.162.113.85', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2016-04-01 16:43:33', '2016-04-07 18:07:00'),
(95, 4, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 39, 1, 'Мариша', 'Блинова', 'marfyne4kam@gmail.com', '+380987611036', '', 'Мариша', 'Блинова', '', '', '', 'ул.Горького', '', 'Измаил', '', 'Украина', 220, 'Одесса', 3495, '', 'Банковский перевод', 'bank_transfer', 'Мариша', 'Блинова', '', 'ул.Горького', '', 'Измаил', '', 'Украина', 220, 'Одесса', 3495, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Отчество: Юрьевна Номер отделения Новой Почты: 1 Новая Почта 1 отделение ул.Некрасова 3а', '420.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '188.163.68.101', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 OPR/36.0.2130.32', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-04-06 16:16:20', '2016-04-11 15:59:15'),
(96, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 40, 1, 'Ірина', 'Жила', 'ira_zhila@ukr.net', '093-97-096-79', '', 'Ірина', 'Жила', '', '', '', '', '', 'Черкаси', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Ірина', 'Жила', '', '', '', 'Черкаси', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Василівна Номер відділення Нової Пошти: №3', '450.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '185.3.148.83', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36 OPR/36.0.2130.65', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-04-25 19:57:29', '2016-05-14 23:08:57'),
(97, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Вікторія', 'Тороп', 'vi.kycja@gmail.com', '095 4555039', '', 'Вікторія', 'Тороп', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Вікторія', 'Тороп', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Юріївна Номер відділення Нової Пошти: №31, вул Московська 5/2а', '480.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.38.47.73', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2016-06-06 00:00:59', '2016-06-13 21:49:01'),
(98, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 41, 1, 'Наталия', 'Яковлева', 'Yakovlevantl@rambler.ru', '0950101725', '', 'Наталия', 'Яковлева', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталия', 'Яковлева', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', '', '1250.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '193.202.91.11', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 'en-US,en;q=0.8', '2016-06-07 11:55:29', '2016-06-22 15:23:35'),
(99, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 42, 1, 'Анна', 'Савицкая', 'anna.savytskaya@gmail.com', '0953070877', '', 'Анна', 'Савицкая', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Анна', 'Савицкая', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', 'Перезвоните, пожалуйста!', '375.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.54.17.77', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-06-16 22:34:46', '2016-07-02 22:39:12'),
(100, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'виктория', 'ляшенко', 'viasss296@gmail.com', '80930876195', '', 'виктория', 'ляшенко', '', '', '', 'Ивана пулюя 2.кв.224.9этаж 4 парадное', '', 'киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'виктория', 'ляшенко', '', 'Ивана пулюя 2.кв.224.9этаж 4 парадное', '', 'киев', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: анатольевна', '920.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '94.74.64.248', '', 'Mozilla/5.0 (Linux; Android 4.4.4; ru-ru; SAMSUNG SM-A500H Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.6 Chrome/28.0.1500.94 Mobile Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-08-08 17:42:08', '2016-08-30 22:48:33'),
(101, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 43, 1, 'Наталя', 'Раєвська', 'rayevska@gmail.com', '063-058-39-04', '', 'Наталя', 'Раєвська', '', '', '', 'Іллінська-8', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталя', 'Раєвська', '', 'Іллінська-8', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: В Довтавка в будні з 9 до 18', '560.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '212.98.33.194', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', 'en-US,en;q=0.8', '2016-09-01 11:58:18', '2016-09-11 23:13:25'),
(102, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Алина', 'Гараева', 'a.garayeva84@mail.ru', '0997206782', '', 'Алина', 'Гараева', '', '', '', '', '', 'Полтава', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Алина', 'Гараева', '', '', '', 'Полтава', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергеевна Номер відділення Нової Пошти: 11', '680.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.78.94.209', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_1_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D201 Safari/9537.53', 'ru', '2016-09-16 11:00:38', '2016-09-26 17:05:37'),
(103, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Інна', 'Аргучінцева', 'afiia@list.ru', '097 314 2117', '', 'Інна', 'Аргучінцева', '', '', '', 'вул. Лютеранська 27-29', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Інна', 'Аргучінцева', '', 'вул. Лютеранська 27-29', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Михайлівна у робочий час', '560.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '193.29.204.4', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2016-09-26 13:48:47', '2016-10-07 21:37:12'),
(104, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Валентина', 'Дычакивська', 'd17_dychakivska@gmail.ru', '+380501033320', '', 'Валентина', 'Дычакивська', '', '', '', '', '', 'Черновцы', '', 'Украина', 220, '', 0, '', 'Оплата при доставке', 'cod', 'Валентина', 'Дычакивська', '', '', '', 'Черновцы', '', 'Украина', 220, '', 0, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Отчество: Владимыровна Номер отделения Новой Почты: 8', '590.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '93.76.96.206', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-09-28 00:37:25', '2016-10-07 21:37:28'),
(105, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Ксения', 'Быкова', 'kseniya.bykova@gmail.com', '(067) 769-06-98', '', 'Ксения', 'Быкова', '', '', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Ксения', 'Быкова', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Валериевна Номер відділення Нової Пошти: 62', '590.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.241.153.69', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2016-10-02 16:05:31', '2016-10-07 21:37:47'),
(106, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 46, 1, 'Ольга', 'Коломоєць', 'OlgaKolomoets@gmail.com', '0637245813', '', 'Ольга', 'Коломоєць', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Ольга', 'Коломоєць', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', '', '620.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '91.209.55.29', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2016-10-06 18:40:49', '2016-10-18 08:59:02'),
(107, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 47, 1, 'Елена', 'Шеронина', 'Sheronina@ukr.net', '0662963377', '', 'Елена', 'Шеронина', '', '', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставке', 'cod', 'Елена', 'Шеронина', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Отчество: Майевна Номер отделения Новой Почты: 262 Метрополис Буду очень рада если юбка будет синяя или бордовая', '840.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '93.72.218.48', '', 'Mozilla/5.0 (iPad; CPU OS 9_3_5 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G36 Safari/601.1', 'ru', '2016-10-18 03:48:40', '2016-10-21 11:57:29');
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(108, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Татьяна', 'Исаева', 'Chern-845@mail.ru', '0983031974', '', 'Татьяна', 'Исаева', '', '', '', '', '', 'Мариуполь', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Татьяна', 'Исаева', '', '', '', 'Мариуполь', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Татьяна Номер відділення Нової Пошти: 11', '545.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.72.120.243', '', 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G900H Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.68 Mobile Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-10-27 22:20:41', '2016-11-03 21:26:18'),
(109, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 48, 1, 'Лара', 'Лара', 'Dovglar@ukr.net', '0674024546', '', 'Лара', 'Лара', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Лара', 'Лара', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', '', '610.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.251.216.199', '', 'Mozilla/5.0 (iPad; CPU OS 10_0_1 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) Mobile/14A403 [FBAN/MessengerForiOS;FBAV/94.0.0.28.70;FBBV/42395997;FBRV/0;FBDV/iPad4,7;FBMD/iPad;FBSN/iOS;FBSV/10.0.1;FBSS/2;FBCR/;FBID/tablet;FBLC/ru_RU;FBOP/5]', 'ru', '2016-10-29 10:16:35', '2016-11-03 21:25:44'),
(110, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 49, 1, 'Віта', 'Терещенко', 'vita.tve@gmail.com', '0984590292', '', 'Віта', 'Терещенко', '', '', '', 'пр-т. Григоренка, 38а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Віта', 'Терещенко', '', 'пр-т. Григоренка, 38а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Євгенівна', '670.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.72.43.81', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2016-10-29 21:07:46', '2016-11-03 21:26:30'),
(111, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 48, 1, 'Лара', 'Лара', 'Dovglar@ukr.net', '0674024546', '', 'Лара', 'Довгаленко', '', '', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Лара', 'Довгаленко', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Александровна Номер відділення Нової Пошти: 60', '595.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.214.220.80', '', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.87 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-11-09 10:41:06', '2016-11-23 22:18:21'),
(112, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 50, 1, 'Ірина', 'Анічина', 'irabritvina@yandex.ru', '0660352850', '', 'Ірина', 'Анічина', '', '', '', 'бульвар Жасміновий 4А', '', 'Харьков', '', 'Украина', 220, 'Харьков', 3487, '', 'Банківський переказ', 'bank_transfer', 'Ірина', 'Анічина', '', 'бульвар Жасміновий 4А', '', 'Харьков', '', 'Украина', 220, 'Харьков', 3487, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергіївна Номер відділення Нової Пошти: Отделение № 46  Адрес: ул. Слинько (нов. название бульв. Жасминовый), 9 Касательно юбки, она и &quot;в жизни&quot; немного пышная, как и на изображении? По поводу боди, как оно выглядит по спинке: гипюр или хлопок? \r\nТакже хочу уточнить правильный ли размер я подобрала на параметры 90-75-96 (обычно ношу М / 44). \r\nЗаранее спасибо', '1520.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '159.224.80.100', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2016-11-10 00:05:23', '2016-11-23 22:18:40'),
(113, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 0, 1, 'Екатерина', 'Барсукова', 'fluffycat71@gmail.com', '0507218900', '', 'Екатерина', 'Барсукова', '', '', '', '', '', 'Кировоград', '25019', 'Украина', 220, 'Кировоград', 3489, '', 'Оплата при доставці', 'cod', 'Екатерина', 'Барсукова', '', '', '', 'Кировоград', '25019', 'Украина', 220, 'Кировоград', 3489, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Борисовна Номер відділення Нової Пошти: 3', '590.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '78.154.191.183', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_1_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0 Mobile/14B100 Safari/602.1', 'ru', '2016-11-18 11:31:36', '2016-11-23 22:18:57'),
(114, 0, 'INV-2014-00', 0, 'КаМизелька', 'http://kamizelka.in.ua/', 51, 1, 'Инна', 'Кедык', 'innakedyk@rambler.ru', '+380984306210', '', 'Инна', 'Кедык', '', '', '', 'улица Солнечная, 19/55', '', 'Кривой Рог', '50102', 'Украина', 220, 'Днепропетровск', 3484, '', 'Банковский перевод', 'bank_transfer', 'Инна', 'Кедык', '', 'улица Солнечная, 19/55', '', 'Кривой Рог', '50102', 'Украина', 220, 'Днепропетровск', 3484, '', 'Доставка УкрПочтой', 'ukrpost.ukrpost', 'Отчество: Ивановна', '590.0000', 0, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '77.122.253.4', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'ru,en;q=0.8', '2016-11-21 11:36:38', '2016-11-21 11:36:38'),
(115, 0, 'INV-2014-00', 0, 'КаМізелька', 'http://kamizelka.in.ua/', 0, 1, 'Юлия', 'Лозович', 'Julia.lozovich@gmail.com', '0674450900', '', 'Юлия', 'Лозович', '', '', '', '', '', 'Буча', '', 'Украина', 220, 'Киевская область', 3490, '', 'Банківський переказ', 'bank_transfer', 'Юлия', 'Лозович', '', '', '', 'Буча', '', 'Украина', 220, 'Киевская область', 3490, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Александровна Номер відділення Нової Пошти: 2', '590.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '95.158.18.203', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_2 like Mac OS X) AppleWebKit/602.3.12 (KHTML, like Gecko) Mobile/14C92 [FBAN/FBIOS;FBAV/75.0.0.48.61;FBBV/45926345;FBRV/0;FBDV/iPhone9,3;FBMD/iPhone;FBSN/iOS;FBSV/10.2;FBSS/2;FBCR/Kyivstar;FBID/phone;FBLC/ru_RU;FBOP/5', 'ru', '2017-01-09 22:38:30', '2017-01-13 11:49:34'),
(116, 0, 'INV-2014-00', 0, 'КаМізелька', 'http://kamizelka.in.ua/', 53, 1, 'Олена', 'Грубнікова', 'grubnikova@gmail.com', '+380638932342', '', 'Олена', 'Грубнікова', '', '', '', 'вул, Боричів Тік, б. 25', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Олена', 'Грубнікова', '', 'вул, Боричів Тік, б. 25', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Сергіївна Хотелось бы получить доставку 31 вечером до 19.00 или 1 февраля в течении дня', '1112.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '31.42.48.179', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:51.0) Gecko/20100101 Firefox/51.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2017-01-28 19:18:54', '2017-02-22 20:43:32'),
(117, 0, 'INV-2014-00', 0, 'КаМізелька', 'http://kamizelka.in.ua/', 0, 1, 'Елена', 'Пульчо', 'Elenaa15@meta.ua', '0677356511', '', 'Елена', 'Пульчо', '', '', '', '', '', 'Одесса', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Елена', 'Пульчо', '', '', '', 'Одесса', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Алексеевна Номер відділення Нової Пошти: 41', '870.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '188.163.71.159', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B466 Safari/600.1.4', 'ru', '2017-02-21 23:38:10', '2017-03-01 14:53:15'),
(118, 0, 'INV-2014-00', 0, 'КаМізелька', 'http://kamizelka.in.ua/', 0, 1, 'Ольга', 'Бурко', 'burko85@mail.ru', '0683168600', '', 'Ольга', 'Бурко', '', '', '', '25, бул. Тараса Шевченка', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Ольга', 'Бурко', '', '25, бул. Тараса Шевченка', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: М Перетелефонуйте мені для підтвердження замовлення, я не впевнена чи правильно вибрала розмір', '740.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '46.203.72.60', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-02-26 19:13:23', '2017-03-01 14:52:46'),
(119, 0, 'INV-2014-00', 0, 'КаМізелька', 'http://kamizelka.in.ua/', 0, 1, 'Наталя', 'Михальчук', 'mna.76@inbox.ru', '0507175035', '', 'Наталя', 'Михальчук', '', '', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталя', 'Михальчук', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олександрівна Номер відділення Нової Пошти: 20', '1620.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '193.109.129.22', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2017-03-26 15:39:48', '2017-04-30 12:42:48'),
(120, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'http://kamizelka.in.ua/', 55, 1, 'Єлизавета', 'Деревянко', 'lizok1975@ukr.net', '0503838360', '', 'Єлизавета', 'Деревянко', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Єлизавета', 'Деревянко', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', '', '672.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.115.147.68', '', 'Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2017-04-17 22:36:10', '2017-04-20 09:43:14'),
(121, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'http://kamizelka.in.ua/', 0, 1, 'ленуца', 'попше', 'popse.lenuta-porge@yandex.ua', '0689991111', '', 'ленуца', 'попше', '', '', '', '', '', 'с.Середне Водяное', '', 'Украина', 220, '', 0, '', 'Оплата при доставке', 'cod', 'ленуца', 'попше', '', '', '', 'с.Середне Водяное', '', 'Украина', 220, '', 0, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Отчество: ивановна Номер отделения Новой Почты: отделение 1', '690.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '31.41.89.23', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'ru', '2017-04-28 21:54:20', '2017-05-05 21:31:13'),
(122, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'http://kamizelka.in.ua/', 56, 1, 'Юлия', 'Смойловская', 'Smilic.j@gmail.com', '0988112236', '', 'Юлия', 'Смойловская', '', '', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Юлия', 'Смойловская', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Андріївна Номер відділення Нової Пошти: 292 На ім''я Слов''янський Евген', '1500.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.37.21.220', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_1_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0 Mobile/14B100 Safari/602.1', 'ru', '2017-05-06 14:30:43', '2017-05-14 22:13:47'),
(123, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'http://kamizelka.in.ua/', 0, 1, 'Ленуца', 'Попше', 'popse.lenuta-porhe@yandex.ua', '380689991111', '', 'Ленуца', 'Попше', '', '', '', '', '', 'с.Середне Водяне', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Ленуца', 'Попше', '', '', '', 'с.Середне Водяне', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Ивановна Номер відділення Нової Пошти: отделение 1', '690.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '31.41.89.23', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'ru', '2017-05-13 16:47:20', '2017-05-28 08:40:42'),
(124, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'http://kamizelka.in.ua/', 0, 1, 'Вита', 'Терещекно', 'vita.tve@gmail.com', '0984590292', '', 'Вита', 'Терещекно', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Вита', 'Терещекно', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Віта Номер відділення Нової Пошти: Нова Пошта №1', '850.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '213.160.145.166', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2017-05-22 09:30:41', '2017-05-22 09:30:41'),
(125, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'http://kamizelka.in.ua/', 57, 1, 'Наталя', 'Михальчук', 'mna.76@in.ua', '0507175035', '', 'Наталя', 'Михальчук', '', '', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Наталя', 'Михальчук', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олександрівна Номер відділення Нової Пошти: 3', '340.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '193.109.129.22', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:53.0) Gecko/20100101 Firefox/53.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2017-05-29 20:34:11', '2017-05-30 22:34:07'),
(126, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Наталя', 'Мусійчук', 'parma.pikkollo@gmail.com', '0955595105', '', 'Наталя', 'Мусійчук', '', '', '', '', '', 'Миколаїв', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталя', 'Мусійчук', '', '', '', 'Миколаїв', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Ю. Номер відділення Нової Пошти: #6 Будь ласка, повідомьте, які дійсні довжина за спинкою та ширина по бедрам сукні.', '970.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '81.23.24.129', '', 'Mozilla/5.0 (Android; Mobile; rv:40.0) Gecko/40.0 Firefox/40.0', 'ru,ru-RU;q=0.8,en-US;q=0.5,en;q=0.3', '2017-06-17 21:33:25', '2017-09-17 16:26:32'),
(127, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Закусило', 'Наталья', 'hillary78@ukr.net', '0504439235', '', 'Закусило', 'Наталья', '', '', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Закусило', 'Наталья', '', '', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Николаевна Номер відділення Нової Пошти: 42', '530.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '78.27.161.20', '', 'Mozilla/5.0 (Windows NT 6.1; rv:53.0) Gecko/20100101 Firefox/53.0', 'ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3', '2017-06-18 18:28:08', '2017-07-08 23:11:16'),
(128, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 56, 1, 'Юлия', 'Смойловская', 'Smilic.j@gmail.com', '0988112236', '', 'Юлия', 'Смойловская', '', '', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Юлия', 'Смойловская', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Андріївна Номер відділення Нової Пошти: 292', '1070.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.37.21.220', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_1_1 like Mac OS X) AppleWebKit/602.2.14 (KHTML, like Gecko) Mobile/14B100 [FBAN/FBIOS;FBAV/98.0.0.48.70;FBBV/62465497;FBDV/iPhone7,2;FBMD/iPhone;FBSN/iOS;FBSV/10.1.1;FBSS/2;FBCR/Kyivstar;FBID/phone;FBLC/ru_RU;FBOP/5;F', 'ru', '2017-06-25 21:32:12', '2017-07-08 23:11:37'),
(129, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 59, 1, 'Оксана', 'Шаповалова', 'shapovalova.uk@gmail.com', '+380954268008', '', 'Оксана', 'Шаповалова', '', '', '', 'пр. Текстильщиков 9, кв 104', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Мария', 'Фридман', '', 'ул. Маршала Жукова 24а, кв 3', '', '', '', 'Украина', 220, 'Киев', 3491, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Леонидовна ', '2070.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '159.224.171.229', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.109 Safari/537.36', 'ru,uk;q=0.8,en-GB;q=0.6,en;q=0.4,en-US;q=0.2', '2017-06-26 16:42:47', '2017-07-08 23:11:57'),
(130, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 60, 1, 'Алла', 'Плєшко', 'alla.pleshko75@gmail.com', '0502774004', '', 'Алла', 'Плєшко', '', '', '', 'Заболотного 58/137', '', 'Одеса', '', 'Украина', 220, 'Одесса', 3495, '', 'Оплата при доставці', 'cod', 'Алла', 'Плєшко', '', 'Заболотного 58/137', '', 'Одеса', '', 'Украина', 220, 'Одесса', 3495, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Анатоліївна Номер відділення Нової Пошти: 41', '720.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '46.250.26.100', '', 'Mozilla/5.0 (Linux; U; Android 4.1.2; ru-ua; HTC Desire 600 dual sim Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 [FB_IAB/FB4A;FBAV/135.0.0.22.90;]', 'ru-UA, en-US', '2017-09-16 21:39:40', '2017-10-10 10:56:44'),
(131, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Елена', 'Киричек', 'ekir1920@gmail.com', '0675629591', '', 'Елена', 'Киричек', '', '', '', 'Калиновая 86/36', '', 'Днепр', '49087', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Елена', 'Киричек', '', 'Калиновая 86/36', '', 'Днепр', '49087', 'Украина', 220, '', 0, '', 'Доставка УкрПоштою', 'ukrpost.ukrpost', 'По батькові: Владимировна', '1500.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '46.211.99.193', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_1 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A402 Safari/604.1', 'ru', '2017-10-02 12:16:36', '2017-11-07 14:18:11'),
(132, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 61, 1, 'Людмила', 'Петрищенко', 'perekaz.dumok@gmail.com', '0939718908', '', 'Людмила', 'Петрищенко', '', '', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Людмила', 'Петрищенко', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Юріївна', '800.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.73.204.236', '', 'Mozilla/5.0 (Linux; Android 5.0.2; HTC One Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 YaBrowser/17.7.0.1178.00 Mobile Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2017-10-09 14:12:19', '2017-10-23 23:00:51'),
(133, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Alina', 'Rodionova', 'Ali.rodionova@gmail.com', '0956480505', '', 'Alina', 'Rodionova', '', '', '', 'вул. Миколи Амосова, 12 (бізнес центр)', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Alina', 'Rodionova', '', 'вул. Миколи Амосова, 12 (бізнес центр)', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Andriivna Доставка на четвер 12.10 ,після 13:00, в іншому разі, передзвоніть мені , будь-ласка', '740.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '46.133.230.252', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_3 like Mac OS X) AppleWebKit/603.3.8 (KHTML, like Gecko) Mobile/14G60 Instagram 18.0.0.26.85 (iPhone8,1; iOS 10_3_3; ru_UA; ru-UA; scale=2.00; gamut=normal; 750x1334)', 'ru', '2017-10-10 08:25:55', '2017-10-10 10:57:38'),
(134, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 62, 1, 'Marina', 'Marina', 'artmaa@ukr.net', '0674444554', '', 'Marina', 'Marina', '', '', '', 'пров Лабораторний, 6', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Marina', 'Marina', '', 'пров Лабораторний, 6', '', 'Киев', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: V', '1510.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '95.67.29.218', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Safari/604.1.38', 'ru', '2017-10-12 20:27:31', '2017-10-23 23:00:25'),
(135, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 64, 1, 'Вероніка', 'Корнатовська', 'kornatovskayaya@gmail.com', '0683307016', '', 'Вероніка', 'Корнатовська', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Вероніка', 'Корнатовська', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', '', '1220.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.159.236.139', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_3 like Mac OS X) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.0 Mobile/14G60 Safari/602.1', 'ru', '2017-10-20 20:31:03', '2017-10-23 22:59:44'),
(136, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 65, 1, 'Оксана', 'Кравець', 'Oksana.kravets.med@gmail.com', '0971303999', '', 'Оксана', 'Кравець', '', '', '', 'Плугова 4а', '', 'Львів', '', 'Украина', 220, 'Львов', 3493, '', 'Оплата при доставці', 'cod', 'Оксана', 'Кравець', '', 'Плугова 4а', '', 'Львів', '', 'Украина', 220, 'Львов', 3493, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Андріївна Номер відділення Нової Пошти: Відділення 8,Львів.', '690.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '188.163.74.50', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) CriOS/62.0.3202.70 Mobile/15A432 Safari/604.1', 'uk-ua', '2017-10-30 13:38:52', '2017-11-07 14:17:47'),
(137, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 61, 1, 'Людмила', 'Петрищенко', 'perekaz.dumok@gmail.com', '0939718908', '', 'Людмила', 'Петрищенко', '', '', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Людмила', 'Петрищенко', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Самовивіз зі складу', 'pickup.pickup', '', '880.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.73.195.179', '', 'Mozilla/5.0 (Linux; Android 5.0.2; HTC One Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 YaBrowser/17.9.0.523.00 Mobile Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2017-11-07 13:46:44', '2017-11-19 21:56:51'),
(138, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 56, 1, 'Юлия', 'Смойловская', 'Smilic.j@gmail.com', '0988112236', '', 'Юлия', 'Смойловская', '', '', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Юлия', 'Смойловская', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Андріївна Номер відділення Нової Пошти: 292', '1343.9000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.37.21.220', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 'en-US,en;q=0.8,ru;q=0.6,uk;q=0.4', '2017-11-08 22:02:58', '2017-11-19 21:57:06'),
(139, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 52, 1, 'Олена', 'Эфiмова', 'Y-helen@yandex.ua', '0503631205', '', 'Олена', 'Єфiмова', '', '', '', 'пр. Маяковського, 1в', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Олена', 'Єфiмова', '', 'пр. Маяковського, 1в', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Миколаiвна Номер відділення Нової Пошти: 193', '667.5000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '195.60.228.16', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36 OPR/48.0.2685.52', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2017-11-09 10:22:34', '2017-11-19 21:57:21'),
(140, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 66, 1, 'Наіра', 'Агакарян', 'ans.naira@gmail.com', '380970625408', '', 'Наіра', 'Агакарян', '', '', '', 'Кловський узвіз', '', 'Київ', '', 'Украина', 220, 'Киевская область', 3490, '', 'Оплата при доставці', 'cod', 'Наіра', 'Агакарян', '', 'Кловський узвіз', '', 'Київ', '', 'Украина', 220, 'Киевская область', 3490, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Сашовна Прошу здійснити доставку з 14-15.11. Дякую!', '1331.6000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '207.154.221.188', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A432 Safari/604.1', 'ru', '2017-11-09 20:42:37', '2017-11-19 21:57:34'),
(141, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Оксана', 'Томашенко', 'oksana98673@gmail.com', '+380983891175', '', 'Оксана', 'Томашенко', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Оксана', 'Томашенко', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергіївна Номер відділення Нової Пошти: 167', '890.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '188.163.2.108', '', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36', 'uk-UA,uk;q=0.9,ru;q=0.8,en-US;q=0.7,en;q=0.6', '2017-11-12 22:20:08', '2017-11-19 21:56:34'),
(142, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 68, 1, 'Наталия', 'Хуторная', 'Natalia.777@ukr.net', '0500604554', '', 'Наталия', 'Хуторная', '', '', '', '', '', 'Сосница', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Наталия', 'Хуторная', '', '', '', 'Сосница', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Петровна Номер відділення Нової Пошти: номер 1', '750.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '92.113.209.72', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2017-11-16 13:10:56', '2017-11-19 21:57:44'),
(143, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 61, 1, 'Людмила', 'Петрищенко', 'perekaz.dumok@gmail.com', '0939718908', '', 'Людмила', 'Петрищенко', '', '', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Людмила', 'Петрищенко', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Юріївна', '940.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.73.210.63', '', 'Mozilla/5.0 (Linux; Android 5.0.2; HTC One Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 YaBrowser/17.10.1.370.00 Mobile Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2017-11-19 10:52:50', '2017-11-20 15:57:29'),
(144, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Єлизавета', 'Деревянко', 'lizok1975@ukr.net', '0503838360', '', 'Єлизавета', 'Деревянко', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Єлизавета', 'Деревянко', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Олесандрівна Номер відділення Нової Пошти: 329', '552.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '195.49.150.131', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2017-11-24 09:39:01', '2017-11-27 21:59:16'),
(145, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 61, 1, 'Людмила', 'Петрищенко', 'perekaz.dumok@gmail.com', '0939718908', '', 'Людмила', 'Петрищенко', '', '', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставці', 'cod', 'Людмила', 'Петрищенко', '', 'Стеценка 1а', '', 'Київ', '', 'Украина', 220, 'Киев', 3491, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Юріївна', '762.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.73.134.67', '', 'Mozilla/5.0 (Linux; Android 5.0.2; HTC One Build/LRX22G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 YaBrowser/17.10.1.370.00 Mobile Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2017-11-24 22:28:05', '2017-12-05 21:30:04'),
(146, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 70, 1, 'Марія', 'Мудра', 'mary_mudra@ukr.net', '0983356824', '', 'Марія', 'Мудра', '', '', '', '', '', 'Тернопіль', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Марія', 'Мудра', '', '', '', 'Тернопіль', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Петрівна Номер відділення Нової Пошти: 4', '690.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.79.122.159', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7,uk;q=0.6', '2017-11-29 16:52:10', '2017-12-05 21:30:22'),
(147, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 71, 1, 'Кристина', 'Сомова', 'Kristina.Somova@gmail.com', '0504784342', '', 'Кристина', 'Сомова', '', '', '', 'Сикорского 4В', '', 'Киев', '', 'Украина', 220, 'Киев', 3491, '', 'Оплата при доставке', 'cod', 'Кристина', 'Сомова', '', 'Сикорского 4В', '', 'Киев', '', 'Украина', 220, 'Киев', 3491, '', 'Доставка курьером по городу Киеву и Вишневое', 'courier.courier', 'Отчество: Анатольевна', '660.0000', 5, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '79.110.131.94', '', 'Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7,uk;q=0.6', '2017-12-05 13:57:51', '2018-01-07 00:42:11'),
(148, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 72, 1, 'Инна', 'Олищук', 'innaoli@hotmail.com', '0509154717', '', 'Инна', 'Олищук', '', '', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Банковский перевод', 'bank_transfer', 'Инна', 'Олищук', '', '', '', 'Херсон', '', 'Украина', 220, '', 0, '', 'Доставка Новой Почтой', 'courier_ua.courier_ua', 'Отчество: Владимировна Номер отделения Новой Почты: 20 Оплата на карту', '690.0000', 7, 0, '0.0000', 3, 4, 'UAH', '1.00000000', '93.79.163.134', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2017-12-30 22:15:39', '2018-01-13 12:15:06'),
(149, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Татьяна', 'Чумак', 'Tatkachymak@gmail.com', '0975773444', '', 'Татьяна', 'Чумак', '', '', '', '', '', 'Николаев', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Татьяна', 'Чумак', '', '', '', 'Николаев', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Ивановна Номер відділення Нової Пошти: 14', '690.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.25.124.0', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac OS X) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0 Mobile/15C153 Safari/604.1', 'ru', '2018-01-02 21:34:33', '2018-01-07 00:42:37'),
(150, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Диана', 'Михеева', 'Miheevadiana34@gmail.com', '0630701982', '', 'Диана', 'Михеева', '', '', '', '', '', 'Одесса', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Диана', 'Михеева', '', '', '', 'Одесса', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Николаевна Номер відділення Нової Пошти: 36', '640.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '176.119.91.96', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_3 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A432 Safari/604.1', 'ru', '2018-01-11 10:58:31', '2018-01-13 12:14:12'),
(151, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Алла', 'Слыш', 'danila204832@gmail.com', '+380977083316', '', 'Алла', 'Слыш', '', '', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Алла', 'Слыш', '', '', '', '', '', 'Украина', 220, '', 0, '', 'Самовивіз зі складу', 'pickup.pickup', '', '258.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '91.193.166.104', '', 'Mozilla/5.0 (Linux; Android 6.0; U20 Build/MRA58K; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/44.0.2403.124 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/144.0.0.27.91;]', 'ru-RU,en-US;q=0.8', '2018-01-12 19:27:20', '2018-01-16 10:19:03'),
(152, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Тетяна', 'Войтун', 'tamumk@ukr.net', '0978686923', '', 'Тетяна', 'Войтун', '', '', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Тетяна', 'Войтун', '', '', '', 'Киів', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Валеріївна Номер відділення Нової Пошти: 75', '690.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '94.232.215.202', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_2 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) GSA/41.0.178428663 Mobile/15C202 Safari/604.1', 'ru', '2018-01-12 20:26:18', '2018-01-16 10:19:13'),
(153, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Діана', 'Тинна', 'dianatunna91@gmail.com', '0664331968', '', 'Діана', 'Тинна', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Діана', 'Тинна', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергіївна Номер відділення Нової Пошти: 76', '640.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.108.64.215', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_2 like Mac OS X) AppleWebKit/604.4.7 (KHTML, like Gecko) Mobile/15C202 Instagram 27.0.0.13.98 (iPhone8,1; iOS 11_2_2; uk_UA; uk-UA; scale=2.00; gamut=normal; 750x1334)', 'uk-ua', '2018-01-15 22:04:45', '2018-02-06 14:32:49'),
(154, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Инна', 'Белощук', 'Ipv6814048@gmail.com', '0636814048', '', 'Инна', 'Белощук', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Инна', 'Белощук', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Василівна Номер відділення Нової Пошти: 204 Замовлення на 44-й розмір!', '690.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '37.73.193.10', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_5 like Mac OS X) AppleWebKit/604.5.6 (KHTML, like Gecko) Version/11.0 Mobile/15D60 Safari/604.1', 'ru', '2018-02-06 10:09:49', '2018-02-25 19:56:42'),
(155, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Людмила', 'Петрищенко', 'perekaz.dumok@gmail.com', '093 971 89 08', '', 'Людмила', 'Петрищенко', '', '', '', 'вул Стеценко 1а', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Людмила', 'Петрищенко', '', 'вул Стеценко 1а', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка кур`єром по місту Києву та Вишневе', 'courier.courier', 'По батькові: Юріївна офіс', '1540.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '194.1.195.102', '10.248.129.114', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', 'en-US,en;q=0.8,uk;q=0.5,ru;q=0.3', '2018-02-16 15:36:28', '2018-02-25 19:56:56'),
(156, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 74, 1, 'Оксана', 'Томашенко', 'oksana98673@gmail.com', '0983891175', '', 'Оксана', 'Томашенко', '', '', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Оксана', 'Томашенко', '', '', '', 'Київ', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Сергіївна Номер відділення Нової Пошти: 167', '990.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '188.163.2.108', '', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'uk-UA,uk;q=0.9,ru;q=0.8,en-US;q=0.7,en;q=0.6', '2018-02-18 10:32:37', '2018-02-25 19:57:11'),
(157, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Лариса', 'Шидловська', 'kuka81@i.ua', '0977933053', '', 'Лариса', 'Шидловська', '', '', '', 'нова пошта, склад 2', '', 'Вараш', '34403', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Лариса', 'Шидловська', '', 'нова пошта, склад 2', '', 'Вараш', '34403', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Михайлівна Номер відділення Нової Пошти: 2', '640.0000', 5, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '91.225.173.33', '', 'Opera/9.80 (Windows NT 5.1; Edition Ukraine Local) Presto/2.12.388 Version/12.17', 'ru-RU,ru;q=0.9,en;q=0.8', '2018-02-28 10:34:04', '2018-03-01 15:35:01'),
(158, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 0, 1, 'Слав'' яна', 'Левицька', 'Slavyanal@ukr.net', '0679599822', '', 'Слав'' яна', 'Левицька', '', '', '', '', '', 'Дніпро', '', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Слав'' яна', 'Левицька', '', '', '', 'Дніпро', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Ігорівна Номер відділення Нової Пошти: 58', '690.0000', 7, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '46.219.233.142', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.168 Safari/537.36 OPR/51.0.2830.40', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2018-03-01 13:32:06', '2018-03-06 09:53:53'),
(159, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 76, 1, 'Elena', 'Motrenko', 'Hmotrenko@gmil.com', '±380682073376', '', 'Elena', 'Motrenko', '', '', '', '', '', 'Новомосковск', '', 'Украина', 220, '', 0, '', 'Оплата при доставці', 'cod', 'Elena', 'Motrenko', '', '', '', 'Новомосковск', '', 'Украина', 220, '', 0, '', 'Доставка Новою Поштою', 'courier_ua.courier_ua', 'По батькові: Владисдавлвна Номер відділення Нової Пошти: 4', '840.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '193.110.23.181', '', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S Build/MMB29M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/44.0.2403.119 Mobile Safari/537.36 ACHEETAHI/1', 'ru-RU,en-US;q=0.9', '2018-03-04 11:57:02', '2018-03-04 11:57:08'),
(160, 0, 'INV-2014-00', 0, 'KAMIZELьKA', 'https://kamizelka.in.ua/', 77, 1, 'Marta', 'Bilous', 'marta.marta.may@gmail.com', '0937609036', '', 'Marta', 'Bilous', '', '', '', 'Левандівська 16, 5', '', 'Львів', '79025', 'Украина', 220, '', 0, '', 'Банківський переказ', 'bank_transfer', 'Marta', 'Bilous', '', 'Левандівська 16, 5', '', 'Львів', '79025', 'Украина', 220, '', 0, '', 'Доставка УкрПоштою', 'ukrpost.ukrpost', 'По батькові: Анатоліївна', '690.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '62.221.63.65', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2018-03-07 14:53:28', '2018-03-07 14:53:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_download`
--

DROP TABLE IF EXISTS `oc_order_download`;
CREATE TABLE IF NOT EXISTS `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_download`
--

TRUNCATE TABLE `oc_order_download`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_field`
--

DROP TABLE IF EXISTS `oc_order_field`;
CREATE TABLE IF NOT EXISTS `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_order_field`
--

TRUNCATE TABLE `oc_order_field`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_order_fraud`
--

TRUNCATE TABLE `oc_order_fraud`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=329 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_history`
--

TRUNCATE TABLE `oc_order_history`;
--
-- Дамп данных таблицы `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(66, 55, 15, 1, '', '2015-02-24 16:15:04'),
(67, 54, 5, 0, '', '2015-02-25 19:53:53'),
(64, 54, 1, 1, '', '2015-02-22 16:08:46'),
(65, 55, 1, 1, 'Инструкции по банковскому переводу\n\nВ ближайшее время наш менеджер свяжется с Вами для уточнения подробностей и сообщит номер банковской карты для оплаты покупки. \n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счёт.', '2015-02-24 15:27:30'),
(62, 53, 1, 1, 'Инструкции по банковскому переводу\n\nВ ближайшее время наш менеджер свяжется с Вами для уточнения подробностей и сообщит номер банковской карты для оплаты покупки. \n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счёт.', '2015-01-28 09:57:52'),
(63, 53, 15, 0, '', '2015-01-29 00:34:14'),
(68, 55, 5, 0, '', '2015-02-25 19:54:11'),
(69, 56, 1, 1, 'Инструкции по банковскому переводу\n\nВ ближайшее время наш менеджер свяжется с Вами для уточнения подробностей и сообщит номер банковской карты для оплаты покупки. \n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счёт.', '2015-03-11 21:48:09'),
(70, 56, 15, 1, '', '2015-03-12 12:08:23'),
(71, 56, 15, 0, 'Доставка на 16.03.15 после 18:00. Предварительно связаться с заказчиком.\nОплата при получении.', '2015-03-12 12:12:13'),
(72, 56, 5, 0, '', '2015-03-17 00:59:03'),
(73, 57, 1, 1, '', '2015-03-28 20:29:09'),
(74, 57, 15, 0, 'РАЗМЕР 44.', '2015-03-30 11:58:04'),
(75, 58, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-04-08 09:37:51'),
(76, 58, 15, 0, '', '2015-04-08 10:11:58'),
(77, 57, 5, 0, '', '2015-04-09 12:44:34'),
(78, 58, 5, 0, '', '2015-04-10 10:21:05'),
(79, 59, 1, 1, '', '2015-04-11 20:35:32'),
(80, 59, 15, 0, '', '2015-04-13 10:07:12'),
(81, 59, 15, 0, 'Размер рубашки боди Б-14 изменен с 42 на 48р.', '2015-04-13 11:28:51'),
(82, 59, 5, 0, '', '2015-04-17 22:50:58'),
(83, 60, 1, 1, '', '2015-05-08 15:05:01'),
(84, 60, 15, 1, '', '2015-05-08 15:21:25'),
(85, 61, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-05-15 11:30:00'),
(86, 61, 15, 1, 'Отчество покупателя: Валентиновна', '2015-05-15 12:13:37'),
(87, 60, 5, 0, '', '2015-05-20 13:16:00'),
(88, 61, 5, 0, '', '2015-05-20 13:16:20'),
(89, 62, 1, 1, '', '2015-05-20 19:41:11'),
(90, 62, 15, 1, '', '2015-05-21 11:13:35'),
(91, 63, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-05-26 01:48:01'),
(92, 63, 15, 1, '', '2015-05-26 13:00:08'),
(93, 62, 5, 0, '', '2015-05-26 14:10:04'),
(94, 63, 5, 0, '', '2015-05-31 18:29:25'),
(95, 64, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-06-09 11:30:32'),
(96, 64, 15, 0, '', '2015-06-09 12:02:23'),
(97, 65, 1, 1, '', '2015-06-11 15:14:15'),
(98, 64, 5, 0, '', '2015-06-11 15:19:11'),
(99, 65, 15, 0, '', '2015-06-11 15:21:22'),
(100, 65, 5, 0, '', '2015-06-15 17:21:05'),
(101, 66, 1, 1, '', '2015-06-24 11:24:05'),
(102, 66, 15, 0, '', '2015-06-24 11:51:46'),
(103, 66, 15, 0, 'Размер 44', '2015-06-24 11:52:42'),
(104, 66, 5, 0, '', '2015-07-27 14:29:03'),
(105, 67, 1, 1, '', '2015-07-28 12:23:52'),
(106, 67, 15, 0, '', '2015-07-28 13:07:26'),
(107, 67, 5, 0, '', '2015-07-29 14:41:14'),
(108, 68, 1, 1, '', '2015-08-27 22:57:58'),
(109, 68, 15, 0, '', '2015-08-30 22:59:36'),
(110, 68, 7, 1, '', '2015-08-31 09:25:11'),
(111, 61, 5, 1, 'На Ваш отзыв был оставлен комментарий на сайте.', '2015-09-02 18:07:22'),
(112, 69, 1, 1, '', '2015-09-08 16:23:24'),
(113, 69, 15, 1, '', '2015-09-08 16:54:10'),
(114, 70, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-09-09 23:09:47'),
(115, 70, 15, 0, '', '2015-09-10 10:23:16'),
(116, 69, 5, 0, '', '2015-09-16 22:04:54'),
(117, 70, 5, 0, '', '2015-09-16 22:05:15'),
(118, 70, 5, 0, '', '2015-09-16 22:05:18'),
(119, 72, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-09-22 11:15:46'),
(121, 72, 15, 0, 'Указать оценочную стоимость 200 грн.', '2015-09-22 12:39:31'),
(123, 72, 5, 0, '', '2015-09-22 14:01:10'),
(136, 81, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-09-29 13:09:43'),
(130, 79, 1, 1, '', '2015-09-28 11:30:48'),
(135, 79, 15, 1, '', '2015-09-28 12:41:51'),
(137, 81, 15, 0, 'Отправка в пятницу (02.10.15)', '2015-09-29 13:37:04'),
(138, 79, 5, 0, '', '2015-10-01 22:47:03'),
(139, 81, 5, 0, '', '2015-10-01 22:47:19'),
(140, 82, 1, 1, '', '2015-10-10 21:44:58'),
(141, 82, 15, 1, 'Доставка 15.10.15 с 09:00 до 18:00 с предварительным (за 1 час) звонком.\nКурьер привезет несколько размерных вариантов модели.', '2015-10-12 14:00:33'),
(144, 84, 1, 1, '', '2015-10-15 21:59:37'),
(145, 82, 5, 0, '', '2015-10-15 22:20:29'),
(146, 84, 15, 0, '', '2015-10-16 10:18:53'),
(147, 84, 5, 0, '', '2015-10-20 16:43:21'),
(148, 86, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-10-22 07:37:51'),
(150, 89, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2015-10-28 16:20:10'),
(154, 90, 1, 1, '', '2015-10-31 08:32:04'),
(152, 86, 5, 0, '', '2015-10-28 17:15:42'),
(153, 89, 15, 0, '', '2015-10-28 17:29:16'),
(155, 90, 15, 0, '', '2015-10-31 11:46:15'),
(156, 89, 5, 0, '', '2015-10-31 11:51:42'),
(157, 90, 5, 0, '', '2015-11-11 22:00:28'),
(158, 91, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2016-02-11 15:00:47'),
(159, 92, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2016-02-11 15:04:26'),
(160, 93, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2016-03-13 20:47:07'),
(161, 93, 15, 0, '', '2016-03-15 13:24:20'),
(162, 93, 15, 0, 'Длина юбки от талии- 40 см.\nдлина рукава -55 см.', '2016-03-15 14:17:35'),
(163, 91, 7, 0, '', '2016-03-18 18:44:33'),
(164, 92, 7, 0, '', '2016-03-18 18:44:55'),
(165, 93, 5, 0, '', '2016-03-22 20:20:18'),
(166, 94, 1, 1, '', '2016-04-01 16:43:34'),
(167, 94, 15, 1, '', '2016-04-01 16:58:19'),
(168, 95, 1, 1, 'Инструкции по банковскому переводу\n\nВ ближайшее время наш менеджер свяжется с Вами для уточнения подробностей и сообщит номер банковской карты для оплаты покупки. \n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счёт.', '2016-04-06 16:17:33'),
(169, 95, 15, 0, '', '2016-04-06 18:02:18'),
(170, 95, 15, 0, 'При отправке на Новой Почте Мариша=Марина)', '2016-04-06 18:02:57'),
(171, 94, 5, 0, '', '2016-04-07 18:07:00'),
(172, 95, 15, 1, 'Спасибо, оплата прошла успешно. В пятницу Ваш заказ будет отправлен.\n', '2016-04-07 18:08:01'),
(173, 95, 5, 0, '', '2016-04-11 15:59:15'),
(174, 96, 1, 1, '', '2016-04-25 19:57:30'),
(175, 96, 15, 0, '', '2016-04-26 11:47:17'),
(176, 96, 5, 0, '', '2016-05-14 23:08:57'),
(177, 97, 1, 1, '', '2016-06-06 00:01:08'),
(178, 98, 1, 1, '', '2016-06-07 11:55:30'),
(179, 97, 15, 0, '', '2016-06-07 12:32:41'),
(180, 97, 5, 0, '', '2016-06-13 21:48:51'),
(181, 97, 5, 0, '', '2016-06-13 21:49:01'),
(182, 99, 1, 1, '', '2016-06-16 22:34:47'),
(183, 99, 15, 0, '', '2016-06-22 15:23:18'),
(184, 98, 7, 1, '', '2016-06-22 15:23:35'),
(185, 99, 5, 0, '', '2016-07-02 22:39:12'),
(186, 100, 1, 1, '', '2016-08-08 17:42:08'),
(187, 100, 5, 0, '', '2016-08-30 22:48:33'),
(188, 101, 1, 1, '', '2016-09-01 11:58:27'),
(189, 101, 15, 1, '', '2016-09-01 13:28:15'),
(190, 101, 15, 0, 'Рост - 162\nБедра-96\nТалия-70\nДлинна юбки- до колена.\nПеред доставкой-созвон.', '2016-09-01 13:29:23'),
(191, 101, 5, 0, '', '2016-09-11 23:13:25'),
(192, 102, 1, 1, '', '2016-09-16 11:00:38'),
(193, 103, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2016-09-26 13:49:06'),
(194, 102, 5, 0, '', '2016-09-26 17:05:37'),
(195, 103, 15, 0, '', '2016-09-26 17:05:56'),
(196, 104, 1, 1, '', '2016-09-28 00:37:26'),
(197, 104, 15, 0, '', '2016-09-28 20:40:39'),
(198, 105, 1, 1, '', '2016-10-02 16:05:31'),
(199, 106, 1, 1, '', '2016-10-06 18:40:49'),
(200, 105, 15, 0, '', '2016-10-07 21:36:50'),
(201, 103, 5, 0, '', '2016-10-07 21:37:12'),
(202, 104, 5, 0, '', '2016-10-07 21:37:28'),
(203, 105, 5, 0, '', '2016-10-07 21:37:47'),
(204, 107, 1, 1, '', '2016-10-18 03:48:41'),
(205, 106, 5, 0, '', '2016-10-18 08:59:02'),
(206, 107, 5, 0, '', '2016-10-21 11:57:29'),
(207, 108, 1, 1, '', '2016-10-27 22:20:42'),
(208, 109, 1, 1, '', '2016-10-29 10:16:36'),
(209, 108, 15, 0, '', '2016-10-29 10:58:28'),
(210, 110, 1, 1, '', '2016-10-29 21:07:46'),
(211, 109, 5, 0, '', '2016-11-03 21:25:44'),
(212, 108, 5, 0, '', '2016-11-03 21:26:18'),
(213, 110, 5, 0, '', '2016-11-03 21:26:30'),
(214, 111, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2016-11-09 10:41:11'),
(215, 112, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2016-11-10 00:05:44'),
(216, 111, 15, 0, '', '2016-11-10 20:52:24'),
(217, 112, 15, 0, '', '2016-11-10 20:52:57'),
(218, 113, 1, 1, '', '2016-11-18 11:31:36'),
(219, 113, 15, 1, 'Замена на Б-16', '2016-11-18 19:01:06'),
(220, 111, 5, 0, '', '2016-11-23 22:18:21'),
(221, 112, 5, 0, '', '2016-11-23 22:18:40'),
(222, 113, 5, 0, '', '2016-11-23 22:18:57'),
(223, 115, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2017-01-09 22:38:43'),
(224, 115, 5, 0, '', '2017-01-13 11:49:34'),
(225, 116, 1, 1, '', '2017-01-28 19:18:55'),
(226, 117, 1, 1, '', '2017-02-21 23:38:10'),
(227, 116, 5, 0, '', '2017-02-22 20:43:32'),
(228, 117, 15, 0, '', '2017-02-22 20:43:53'),
(229, 118, 1, 1, '', '2017-02-26 19:13:29'),
(230, 118, 5, 0, '', '2017-03-01 14:52:46'),
(231, 117, 5, 0, '', '2017-03-01 14:53:15'),
(232, 119, 1, 1, '', '2017-03-26 15:39:49'),
(233, 119, 15, 0, '', '2017-03-26 16:12:55'),
(234, 120, 1, 1, '', '2017-04-17 22:36:11'),
(235, 120, 5, 0, '', '2017-04-20 09:43:14'),
(236, 121, 1, 1, '', '2017-04-28 21:54:20'),
(237, 119, 5, 0, '', '2017-04-30 12:42:48'),
(238, 121, 5, 0, '', '2017-05-05 21:31:13'),
(239, 122, 1, 1, '', '2017-05-06 14:30:43'),
(240, 123, 1, 1, '', '2017-05-13 16:47:21'),
(241, 122, 5, 0, '', '2017-05-14 22:13:47'),
(242, 123, 5, 0, '', '2017-05-24 20:59:36'),
(243, 123, 7, 1, '', '2017-05-28 08:40:42'),
(244, 125, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2017-05-29 20:34:59'),
(245, 125, 7, 0, '', '2017-05-30 22:34:07'),
(246, 126, 1, 1, '', '2017-06-17 21:33:28'),
(247, 127, 1, 1, '', '2017-06-18 18:28:09'),
(248, 126, 15, 0, '', '2017-06-19 19:24:51'),
(249, 127, 15, 0, '', '2017-06-19 19:25:05'),
(250, 128, 1, 1, '', '2017-06-25 21:32:13'),
(251, 129, 1, 1, '', '2017-06-26 16:43:23'),
(252, 127, 5, 0, '', '2017-07-08 23:11:16'),
(253, 128, 5, 0, '', '2017-07-08 23:11:37'),
(254, 129, 5, 0, '', '2017-07-08 23:11:57'),
(255, 130, 1, 1, '', '2017-09-17 08:08:31'),
(256, 126, 7, 0, '', '2017-09-17 16:26:32'),
(257, 131, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2017-10-02 12:16:46'),
(258, 132, 1, 1, '', '2017-10-09 14:12:20'),
(259, 133, 1, 1, '', '2017-10-10 08:25:55'),
(260, 130, 5, 0, '', '2017-10-10 10:56:44'),
(261, 132, 15, 0, '', '2017-10-10 10:57:24'),
(262, 133, 7, 1, '', '2017-10-10 10:57:38'),
(263, 134, 1, 1, '', '2017-10-12 20:27:40'),
(264, 135, 1, 1, '', '2017-10-20 20:31:04'),
(265, 135, 7, 1, '', '2017-10-23 22:59:44'),
(266, 134, 5, 0, '', '2017-10-23 23:00:25'),
(267, 132, 5, 0, '', '2017-10-23 23:00:51'),
(268, 136, 1, 1, '', '2017-10-30 13:38:52'),
(269, 136, 15, 0, '', '2017-10-30 23:00:44'),
(270, 137, 1, 1, '', '2017-11-07 13:46:45'),
(271, 137, 15, 0, '', '2017-11-07 14:17:34'),
(272, 136, 5, 0, '', '2017-11-07 14:17:47'),
(273, 131, 7, 1, '', '2017-11-07 14:18:11'),
(274, 138, 1, 1, '', '2017-11-08 22:03:03'),
(275, 139, 1, 1, '', '2017-11-09 10:22:34'),
(276, 140, 1, 1, '', '2017-11-09 20:42:38'),
(277, 138, 15, 0, 'Отправка 14-15 октября', '2017-11-09 22:47:32'),
(278, 139, 15, 0, '', '2017-11-09 22:47:48'),
(279, 140, 15, 0, '', '2017-11-09 22:48:02'),
(280, 141, 1, 1, '', '2017-11-12 22:20:08'),
(281, 142, 1, 1, '', '2017-11-16 13:10:57'),
(282, 143, 1, 1, '', '2017-11-19 10:53:00'),
(283, 141, 5, 0, '', '2017-11-19 21:56:34'),
(284, 137, 5, 0, '', '2017-11-19 21:56:51'),
(285, 138, 5, 0, '', '2017-11-19 21:57:06'),
(286, 139, 5, 0, '', '2017-11-19 21:57:21'),
(287, 140, 5, 0, '', '2017-11-19 21:57:34'),
(288, 142, 5, 0, '', '2017-11-19 21:57:44'),
(289, 143, 7, 1, '', '2017-11-20 15:57:29'),
(290, 144, 1, 1, '', '2017-11-24 09:39:02'),
(291, 145, 1, 1, '', '2017-11-24 22:28:05'),
(292, 144, 5, 0, '', '2017-11-27 21:59:16'),
(293, 145, 15, 0, '', '2017-11-27 22:03:16'),
(294, 146, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2017-11-29 16:52:31'),
(295, 147, 1, 1, '', '2017-12-05 13:57:51'),
(296, 145, 5, 0, '', '2017-12-05 21:30:04'),
(297, 146, 5, 0, '', '2017-12-05 21:30:22'),
(298, 147, 15, 0, '', '2017-12-05 21:30:44'),
(299, 148, 1, 1, 'Инструкции по банковскому переводу\n\nВ ближайшее время наш менеджер свяжется с Вами для уточнения подробностей и сообщит номер банковской карты для оплаты покупки. \n\nЗаказ не будет обработан, пока деньги не поступят на наш расчетный счёт.', '2017-12-30 22:16:00'),
(300, 149, 1, 1, '', '2018-01-02 21:34:33'),
(301, 147, 5, 0, '', '2018-01-07 00:42:11'),
(302, 148, 5, 0, '', '2018-01-07 00:42:27'),
(303, 149, 5, 0, '', '2018-01-07 00:42:37'),
(304, 150, 1, 1, '', '2018-01-11 10:58:31'),
(305, 151, 1, 1, '', '2018-01-12 19:27:20'),
(306, 152, 1, 1, '', '2018-01-12 20:26:18'),
(307, 150, 5, 0, '', '2018-01-13 12:14:12'),
(308, 148, 7, 0, '', '2018-01-13 12:15:06'),
(309, 153, 1, 1, '', '2018-01-15 22:04:45'),
(310, 151, 5, 0, '', '2018-01-16 10:19:03'),
(311, 152, 5, 0, '', '2018-01-16 10:19:13'),
(312, 154, 1, 1, '', '2018-02-06 10:09:49'),
(313, 153, 5, 0, '', '2018-02-06 14:32:49'),
(314, 154, 15, 0, '', '2018-02-06 14:33:04'),
(315, 155, 1, 1, '', '2018-02-16 15:36:29'),
(316, 156, 1, 1, '', '2018-02-18 10:32:38'),
(317, 155, 15, 0, '', '2018-02-18 12:24:03'),
(318, 156, 15, 0, '', '2018-02-18 23:27:08'),
(319, 154, 5, 0, '', '2018-02-25 19:56:42'),
(320, 155, 5, 0, '', '2018-02-25 19:56:56'),
(321, 156, 7, 0, '', '2018-02-25 19:57:11'),
(322, 157, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2018-02-28 10:34:08'),
(323, 158, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2018-03-01 13:55:53'),
(324, 157, 5, 0, '', '2018-03-01 15:35:01'),
(325, 158, 1, 0, 'Прийдет на фестиваль 03-04.03.18 в Днепре', '2018-03-01 15:35:42'),
(326, 159, 1, 1, '', '2018-03-04 11:57:08'),
(327, 158, 7, 0, '', '2018-03-06 09:53:53'),
(328, 160, 1, 1, 'Інструкції банківського переказу\n\nУ найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.\n\nВаше замовлення не буде виконане до отримання оплати.', '2018-03-07 14:53:47');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=359 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_option`
--

TRUNCATE TABLE `oc_order_option`;
--
-- Дамп данных таблицы `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(192, 57, 213, 303, 348, 'Размер', '44', 'radio'),
(193, 58, 214, 243, 76, 'Розмір', '46', 'radio'),
(194, 58, 215, 304, 356, 'Розмір', '46', 'radio'),
(195, 59, 216, 272, 215, 'Розмір', '48', 'radio'),
(197, 60, 218, 237, 53, 'Розмір', '48', 'radio'),
(198, 61, 219, 242, 72, 'Розмір', '44', 'radio'),
(185, 53, 206, 240, 65, 'Размер', '48', 'radio'),
(186, 54, 207, 245, 84, 'Размер', '44', 'radio'),
(187, 55, 208, 233, 37, 'Размер', '48', 'radio'),
(188, 56, 209, 251, 108, 'Размер', '44', 'radio'),
(189, 56, 210, 265, 165, 'Размер', '44', 'radio'),
(190, 56, 211, 234, 38, 'Размер', '42', 'radio'),
(34, 22, 73, 222, 0, 'File', '.xls.db2db9855a4a942b47fc85b5271681d1', 'file'),
(33, 22, 73, 209, 0, 'Textarea', 'asdfghj', 'textarea'),
(32, 22, 73, 208, 0, 'Text', 'test', 'text'),
(31, 22, 73, 223, 11, 'Checkbox', 'Checkbox 4', 'checkbox'),
(30, 22, 73, 217, 3, 'Select', 'Blue', 'select'),
(35, 22, 73, 221, 0, 'Time', '22:25', 'time'),
(229, 69, 250, 311, 388, 'Розмір', '48', 'radio'),
(217, 65, 238, 264, 159, 'Розмір', '42', 'radio'),
(216, 64, 237, 299, 330, 'Розмір', '46', 'radio'),
(215, 64, 236, 288, 283, 'Розмір', '46', 'radio'),
(199, 62, 220, 233, 35, 'Размер', '44', 'radio'),
(214, 63, 235, 258, 137, 'Розмір', '44', 'radio'),
(213, 63, 234, 274, 225, 'Розмір', '44', 'radio'),
(212, 63, 233, 248, 97, 'Розмір', '44', 'radio'),
(145, 30, 166, 227, 16, 'Розмір', 'S', 'radio'),
(144, 31, 165, 228, 21, 'Размер', 'M', 'radio'),
(223, 66, 244, 264, 160, 'Розмір', '44', 'radio'),
(224, 67, 245, 264, 159, 'Розмір', '42', 'radio'),
(225, 67, 246, 240, 62, 'Розмір', '42', 'radio'),
(226, 67, 247, 301, 337, 'Розмір', '42', 'radio'),
(228, 68, 249, 260, 145, 'Розмір', '46', 'radio'),
(162, 39, 183, 235, 42, 'Розмір', '42', 'radio'),
(163, 40, 184, 233, 34, 'Розмір', '42', 'radio'),
(230, 70, 251, 313, 395, 'Розмір', '46', 'radio'),
(231, 71, 252, 233, 34, 'Розмір', '42', 'radio'),
(232, 72, 253, 233, 35, 'Розмір', '44', 'radio'),
(233, 72, 254, 272, 216, 'Розмір', '44', 'radio'),
(242, 80, 262, 242, 73, 'Розмір', '46', 'radio'),
(243, 80, 263, 243, 76, 'Розмір', '46', 'radio'),
(244, 80, 264, 297, 321, 'Розмір', '46', 'radio'),
(245, 81, 265, 242, 73, 'Розмір', '46', 'radio'),
(246, 81, 266, 243, 76, 'Розмір', '46', 'radio'),
(247, 81, 267, 297, 321, 'Розмір', '46', 'radio'),
(241, 79, 261, 306, 365, 'Розмір', '44', 'radio'),
(248, 82, 268, 233, 37, 'Розмір', '48', 'radio'),
(250, 84, 270, 234, 40, 'Розмір', '46', 'radio'),
(251, 85, 271, 306, 364, 'Розмір', '42', 'radio'),
(252, 86, 272, 306, 364, 'Розмір', '42', 'radio'),
(253, 87, 273, 237, 52, 'Розмір', '46', 'radio'),
(254, 87, 274, 242, 73, 'Розмір', '46', 'radio'),
(255, 87, 275, 239, 60, 'Розмір', '46', 'radio'),
(261, 90, 281, 233, 34, 'Розмір', '42', 'radio'),
(259, 89, 279, 242, 73, 'Розмір', '46', 'radio'),
(260, 89, 280, 237, 52, 'Розмір', '46', 'radio'),
(262, 91, 282, 348, 490, 'Розмір', '42', 'radio'),
(263, 92, 283, 275, 230, 'Розмір', '44', 'radio'),
(264, 93, 284, 248, 98, 'Розмір', '42', 'radio'),
(265, 93, 285, 299, 328, 'Розмір', '42', 'radio'),
(266, 93, 286, 275, 229, 'Розмір', '42', 'radio'),
(267, 93, 286, 326, 443, 'ця модель у вигляді сорочки', 'сорочка', 'checkbox'),
(268, 94, 287, 311, 388, 'Розмір', '48', 'radio'),
(269, 95, 288, 233, 35, 'Размер', '44', 'radio'),
(270, 96, 289, 311, 388, 'Розмір', '48', 'radio'),
(271, 97, 290, 297, 320, 'Розмір', '44', 'radio'),
(272, 98, 291, 318, 414, 'Розмір', '44', 'radio'),
(273, 98, 292, 352, 508, 'Розмір', '46', 'radio'),
(274, 99, 293, 233, 35, 'Розмір', '44', 'radio'),
(275, 99, 293, 363, 550, 'ця модель у вигляді сорочки', 'сорочка', 'checkbox'),
(276, 100, 294, 308, 375, 'Розмір', '46', 'radio'),
(278, 101, 296, 298, 325, 'Розмір', '46', 'radio'),
(279, 102, 297, 275, 229, 'Розмір', '42', 'radio'),
(280, 103, 298, 245, 85, 'Розмір', '46', 'radio'),
(281, 104, 299, 392, 646, 'Размер', '42', 'radio'),
(282, 105, 300, 392, 644, 'Розмір', '46', 'radio'),
(283, 106, 301, 391, 641, 'Розмір', '42', 'radio'),
(284, 107, 302, 389, 638, 'Размер', '48', 'radio'),
(285, 108, 303, 233, 35, 'Розмір', '44', 'radio'),
(286, 108, 303, 363, 550, 'ця модель у вигляді сорочки', 'сорочка', 'checkbox'),
(287, 109, 304, 387, 629, 'Розмір', '44', 'radio'),
(288, 110, 305, 391, 643, 'Розмір', '46', 'radio'),
(289, 111, 306, 383, 610, 'Розмір', '46', 'radio'),
(290, 112, 307, 389, 637, 'Розмір', '46', 'radio'),
(291, 112, 308, 275, 231, 'Розмір', '46', 'radio'),
(292, 113, 309, 233, 34, 'Розмір', '42', 'radio'),
(293, 114, 310, 311, 386, 'Размер', '44', 'radio'),
(294, 115, 311, 392, 645, 'Розмір', '44', 'radio'),
(295, 116, 312, 402, 677, 'Розмір', '42', 'radio'),
(296, 117, 313, 275, 232, 'Розмір', '48', 'radio'),
(298, 118, 315, 392, 646, 'Розмір', '42', 'radio'),
(299, 119, 316, 392, 647, 'Розмір', '48', 'radio'),
(300, 119, 317, 389, 638, 'Розмір', '48', 'radio'),
(301, 120, 318, 403, 680, 'Розмір', '44', 'radio'),
(302, 121, 319, 392, 645, 'Размер', '44', 'radio'),
(303, 122, 320, 439, 791, 'Розмір', '44', 'radio'),
(304, 122, 321, 311, 386, 'Розмір', '44', 'radio'),
(305, 122, 321, 451, 833, 'ця модель у вигляді боді', 'боді', 'checkbox'),
(306, 123, 322, 392, 646, 'Розмір', '42', 'radio'),
(307, 124, 323, 424, 746, 'Розмір', '44', 'radio'),
(308, 125, 324, 248, 200, 'Розмір', '50', 'radio'),
(309, 126, 325, 456, 850, 'Розмір', '46', 'radio'),
(310, 127, 326, 372, 570, 'Розмір', '46', 'radio'),
(311, 128, 327, 459, 858, 'Розмір', '44', 'radio'),
(312, 128, 328, 468, 890, 'Розмір', '44', 'radio'),
(318, 129, 334, 372, 570, 'Розмір', '46', 'radio'),
(317, 129, 333, 374, 577, 'Розмір', '46', 'radio'),
(316, 129, 332, 446, 818, 'Розмір', '46', 'radio'),
(319, 130, 335, 384, 615, 'Розмір', '42', 'radio'),
(320, 131, 336, 410, 703, 'Розмір', '42', 'radio'),
(321, 131, 337, 385, 619, 'Розмір', '42', 'radio'),
(322, 132, 338, 409, 700, 'Розмір', '44', 'radio'),
(323, 133, 339, 392, 646, 'Розмір', '42', 'radio'),
(324, 134, 340, 391, 642, 'Розмір', '44', 'radio'),
(325, 134, 341, 433, 774, 'Розмір', '44', 'radio'),
(326, 135, 342, 383, 609, 'Розмір', '44', 'radio'),
(327, 136, 343, 392, 644, 'Розмір', '46', 'radio'),
(328, 137, 344, 430, 766, 'Розмір', '44', 'radio'),
(332, 138, 348, 433, 774, 'Розмір', '44', 'radio'),
(331, 138, 347, 391, 642, 'Розмір', '44', 'radio'),
(333, 139, 349, 391, 643, 'Розмір', '46', 'radio'),
(334, 140, 350, 392, 646, 'Розмір', '42', 'radio'),
(335, 140, 351, 391, 641, 'Розмір', '42', 'radio'),
(336, 141, 352, 478, 921, 'Розмір', '46', 'radio'),
(337, 142, 353, 398, 665, 'Розмір', '46', 'radio'),
(339, 143, 355, 471, 900, 'Розмір', '44', 'radio'),
(340, 144, 356, 421, 736, 'Розмір', '44', 'radio'),
(341, 145, 357, 478, 923, 'Розмір', '44', 'radio'),
(342, 146, 358, 392, 644, 'Розмір', '46', 'radio'),
(343, 147, 359, 383, 608, 'Размер', '42', 'radio'),
(344, 148, 360, 392, 646, 'Размер', '42', 'radio'),
(345, 149, 361, 392, 644, 'Розмір', '46', 'radio'),
(346, 150, 362, 392, 646, 'Розмір', '42', 'radio'),
(347, 150, 362, 393, 648, 'ця модель у вигляді сорочки', 'сорочка', 'checkbox'),
(348, 151, 363, 463, 871, 'Розмір', '44', 'radio'),
(349, 152, 364, 392, 646, 'Розмір', '42', 'radio'),
(350, 153, 365, 392, 645, 'Розмір', '44', 'radio'),
(351, 153, 365, 393, 648, 'ця модель у вигляді сорочки', 'сорочка', 'checkbox'),
(352, 154, 366, 392, 645, 'Розмір', '44', 'radio'),
(353, 155, 367, 452, 835, 'Розмір', '44', 'radio'),
(354, 156, 368, 475, 914, 'Розмір', '44', 'radio'),
(355, 157, 369, 396, 659, 'Розмір', '44', 'radio'),
(356, 158, 370, 392, 646, 'Розмір', '42', 'radio'),
(357, 159, 371, 382, 612, 'Розмір', '44', 'radio'),
(358, 160, 372, 392, 644, 'Розмір', '46', 'radio');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=373 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_product`
--

TRUNCATE TABLE `oc_order_product`;
--
-- Дамп данных таблицы `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(208, 55, 41, 'БОДИ (Б-01)', 'БОДІ Б-01', 1, '325.0000', '325.0000', '0.0000', 0),
(209, 56, 78, 'Блуза женская (БЛ-02)', 'Блуза БЛ-02', 1, '295.0000', '295.0000', '0.0000', 0),
(210, 56, 92, 'ЖИЛЕТКА (КА-05)', 'КАМІЗЕЛЬКА КА-05', 1, '410.0000', '410.0000', '0.0000', 0),
(211, 56, 47, 'БОДИ (Б-03)', 'БОДІ Б-03', 1, '360.0000', '360.0000', '0.0000', 5),
(213, 57, 137, 'Рубашка женская (Р-16)', 'Рубашка Р-16', 1, '460.0000', '460.0000', '0.0000', 0),
(206, 53, 55, 'БОДИ (Б-09)', 'БОДІ Б-09', 1, '350.0000', '350.0000', '0.0000', 0),
(207, 54, 72, 'Рубашка женская (Р-04)', 'Рубашка Р-04', 1, '310.0000', '310.0000', '0.0000', 0),
(39, 9, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(38, 9, 28, 'HTC Touch HD', 'Product 1', 2, '100.0000', '200.0000', '0.0000', 800),
(214, 58, 61, 'Сорочка жіноча (Р-02)', 'Рубашка Р-02', 1, '385.0000', '385.0000', '0.0000', 0),
(215, 58, 135, 'Сорочка жіноча (Р-14)', 'Рубашка Р-14', 1, '435.0000', '435.0000', '0.0000', 0),
(216, 59, 123, 'БОДІ (Б-14)', 'БОДІ Б-14', 1, '470.0000', '470.0000', '0.0000', 0),
(218, 60, 51, 'БОДІ (Б-06)', 'БОДІ Б-06', 1, '470.0000', '470.0000', '0.0000', 0),
(219, 61, 59, 'Сорочка жіноча (Р-01)', 'Рубашка Р-01', 1, '395.0000', '395.0000', '0.0000', 0),
(220, 62, 41, 'БОДИ (Б-01)', 'БОДІ Б-01', 1, '420.0000', '420.0000', '0.0000', 0),
(237, 64, 110, 'СПІДНИЦЯ (С-12)', 'Спідниця С-12', 1, '475.0000', '475.0000', '0.0000', 0),
(236, 64, 107, 'СПІДНИЦЯ (С-09)', 'Спідниця С-09', 1, '495.0000', '495.0000', '0.0000', 0),
(235, 63, 85, 'СПІДНИЦЯ (С-03)', 'Спідниця С-03', 1, '395.0000', '395.0000', '0.0000', 0),
(234, 63, 119, 'БОДІ (Б-10)', 'БОДІ Б-10', 1, '485.0000', '485.0000', '0.0000', 0),
(233, 63, 75, 'Блуза жіноча (БЛ-01)', 'Блуза БЛ-01', 1, '340.0000', '340.0000', '0.0000', 0),
(74, 22, 49, 'Samsung Galaxy Tab 10.1', 'SAM1', 1, '199.9900', '199.9900', '0.0000', 1000),
(73, 22, 42, 'сорочка жіноча', '1420', 1, '133.0000', '133.0000', '0.0000', 500),
(246, 67, 55, 'БОДІ (Б-09)', 'БОДІ Б-09', 1, '455.0000', '455.0000', '0.0000', 0),
(238, 65, 91, 'КАМІЗЕЛЬКА (КА-04)', 'КАМІЗЕЛЬКА КА-04', 1, '485.0000', '485.0000', '0.0000', 0),
(244, 66, 91, 'КАМІЗЕЛЬКА (КА-04)', 'КАМІЗЕЛЬКА КА-04', 1, '485.0000', '485.0000', '0.0000', 0),
(245, 67, 91, 'КАМІЗЕЛЬКА (КА-04)', 'КАМІЗЕЛЬКА КА-04', 1, '485.0000', '485.0000', '0.0000', 0),
(166, 30, 50, 'Плаття', '1', 1, '500.0000', '500.0000', '0.0000', 25),
(165, 31, 28, 'HTC Touch HD', 'Product 1', 1, '75.0000', '75.0000', '0.0000', 0),
(247, 67, 134, 'СПІДНИЦЯ (С-014)', 'Спідниця С-14', 1, '585.0000', '585.0000', '0.0000', 0),
(249, 68, 87, 'СПІДНИЦЯ (С-05)', 'Спідниця С-05', 1, '495.0000', '495.0000', '0.0000', 0),
(250, 69, 152, 'Сорочка жіноча (Р-17)', 'Рубашка Р-17', 1, '450.0000', '450.0000', '0.0000', 0),
(251, 70, 154, 'Сорочка жіноча (Р-19)', 'Рубашка Р-19', 1, '470.0000', '470.0000', '0.0000', 0),
(252, 71, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '420.0000', '420.0000', '0.0000', 0),
(183, 39, 46, 'БОДІ (Б04)', 'БОДІ Б04', 3, '345.0000', '1035.0000', '0.0000', 0),
(184, 40, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '325.0000', '325.0000', '0.0000', 0),
(254, 72, 123, 'БОДІ (Б-14)', 'БОДІ Б-14', 1, '470.0000', '470.0000', '0.0000', 0),
(262, 80, 59, 'Сорочка жіноча (Р-01)', 'Рубашка Р-01', 1, '395.0000', '395.0000', '0.0000', 0),
(263, 80, 61, 'Сорочка жіноча (Р-02)', 'Рубашка Р-02', 1, '385.0000', '385.0000', '0.0000', 0),
(264, 80, 112, 'КОРСЕТ (К-05)', 'КОРСЕТ К-05', 1, '430.0000', '430.0000', '0.0000', 0),
(265, 81, 59, 'Сорочка жіноча (Р-01)', 'Рубашка Р-01', 1, '395.0000', '395.0000', '0.0000', 0),
(266, 81, 61, 'Сорочка жіноча (Р-02)', 'Рубашка Р-02', 1, '385.0000', '385.0000', '0.0000', 0),
(253, 72, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '420.0000', '420.0000', '0.0000', 0),
(261, 79, 140, 'БОДІ (БТ-17)', 'БОДІ БТ-17', 1, '490.0000', '490.0000', '0.0000', 0),
(267, 81, 112, 'КОРСЕТ (К-05)', 'КОРСЕТ К-05', 1, '430.0000', '430.0000', '0.0000', 0),
(268, 82, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '420.0000', '420.0000', '0.0000', 0),
(270, 84, 47, 'БОДІ (Б-03)', 'БОДІ Б-03', 1, '470.0000', '470.0000', '0.0000', 5),
(271, 85, 140, 'БОДІ (БТ-17)', 'БОДІ БТ-17', 1, '490.0000', '490.0000', '0.0000', 0),
(272, 86, 140, 'БОДІ (БТ-17)', 'БОДІ БТ-17', 1, '490.0000', '490.0000', '0.0000', 0),
(273, 87, 51, 'БОДІ (Б-06)', 'БОДІ Б-06', 1, '470.0000', '470.0000', '0.0000', 0),
(274, 87, 59, 'Сорочка жіноча (Р-01)', 'Рубашка Р-01', 1, '395.0000', '395.0000', '0.0000', 0),
(275, 87, 54, 'БОДІ (Б-08)', 'БОДІ Б-08', 1, '470.0000', '470.0000', '0.0000', 0),
(281, 90, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '420.0000', '420.0000', '0.0000', 0),
(280, 89, 51, 'БОДІ (Б-06)', 'БОДІ Б-06', 1, '470.0000', '470.0000', '0.0000', 0),
(279, 89, 59, 'Сорочка жіноча (Р-01)', 'Рубашка Р-01', 1, '395.0000', '395.0000', '0.0000', 0),
(282, 91, 172, 'КАМІЗЕЛЬКА (КА-10)', 'КАМІЗЕЛЬКА КА-10', 1, '530.0000', '530.0000', '0.0000', 0),
(283, 92, 120, 'БОДІ (Б-11)', 'БОДІ Б-11', 1, '495.0000', '495.0000', '0.0000', 0),
(284, 93, 75, 'Блуза жіноча (БЛ-01)', 'Блуза БЛ-01', 1, '440.0000', '440.0000', '0.0000', 0),
(285, 93, 110, 'СПІДНИЦЯ (С-12)', 'Спідниця С-12', 1, '560.0000', '560.0000', '0.0000', 0),
(286, 93, 120, 'БОДІ (Б-11)', 'БОДІ Б-11', 1, '450.0000', '450.0000', '0.0000', 0),
(287, 94, 152, 'Сорочка жіноча (Р-17)', 'Рубашка Р-17', 1, '450.0000', '450.0000', '0.0000', 0),
(288, 95, 41, 'БОДИ (Б-01)', 'БОДІ Б-01', 1, '420.0000', '420.0000', '0.0000', 0),
(289, 96, 152, 'Сорочка жіноча (Р-17)', 'Рубашка Р-17', 1, '450.0000', '450.0000', '0.0000', 0),
(290, 97, 112, 'КОРСЕТ (К-05)', 'КОРСЕТ К-05', 1, '480.0000', '480.0000', '0.0000', 0),
(291, 98, 159, 'ТУНІКА (Т-02)', 'Туніка Т-02', 1, '560.0000', '560.0000', '0.0000', 0),
(292, 98, 151, 'СПІДНИЦЯ (С-18)', 'Спідниця С-18', 1, '690.0000', '690.0000', '0.0000', 0),
(293, 99, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '375.0000', '375.0000', '0.0000', 0),
(294, 100, 139, 'СУКНЯ (П-06)', 'Сукня П-06', 1, '880.0000', '880.0000', '0.0000', 0),
(296, 101, 104, 'СПІДНИЦЯ (С-06)', 'Спідниця С-06', 1, '510.0000', '510.0000', '0.0000', 0),
(297, 102, 120, 'БОДІ (Б-11)', 'БОДІ Б-11', 1, '680.0000', '680.0000', '0.0000', 0),
(298, 103, 72, 'Сорочка жіноча під запонки (арт. Р-04)', 'Рубашка Р-04', 1, '510.0000', '510.0000', '0.0000', 0),
(299, 104, 209, 'Рубашка боди белая с потайной застежкой (арт. Б-16)', 'БОДІ Б-16', 1, '590.0000', '590.0000', '0.0000', 0),
(300, 105, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '590.0000', '590.0000', '0.0000', 0),
(301, 106, 208, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', 'БОДІ Б-15', 1, '620.0000', '620.0000', '0.0000', 0),
(302, 107, 207, 'Черная юбка миди с запахом (арт. С-23)', 'Спідниця С-23', 1, '840.0000', '840.0000', '0.0000', 0),
(303, 108, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '545.0000', '545.0000', '0.0000', 0),
(304, 109, 205, 'Біла сорочка з потайною застібкою із складками (арт. Р- 28)', 'Рубашка Р-28', 1, '610.0000', '610.0000', '0.0000', 0),
(305, 110, 208, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', 'БОДІ Б-15', 1, '620.0000', '620.0000', '0.0000', 0),
(306, 111, 201, 'Жіноча біла сорочка зі спущеним рукавом (арт. Р-24)', 'Рубашка Р-24', 1, '595.0000', '595.0000', '0.0000', 0),
(307, 112, 207, 'Чорна спідниця міді із запахом (арт. С- 23)', 'Спідниця С-23', 1, '840.0000', '840.0000', '0.0000', 0),
(308, 112, 120, 'БОДІ (Б-11)', 'БОДІ Б-11', 1, '680.0000', '680.0000', '0.0000', 0),
(309, 113, 41, 'БОДІ (Б-01)', 'БОДІ Б-01', 1, '590.0000', '590.0000', '0.0000', 0),
(310, 114, 152, 'Рубашка женская (арт. Р-17)', 'Рубашка Р-17', 1, '590.0000', '590.0000', '0.0000', 0),
(311, 115, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '590.0000', '590.0000', '0.0000', 0),
(312, 116, 217, 'СУКНЯ ТРИКОТАЖНА МІДІ КЛЬОШ (П- 13)', 'СУКНЯ П-13', 1, '1112.0000', '1112.0000', '0.0000', 0),
(313, 117, 120, 'БОДІ (Б-11)', 'БОДІ Б-11', 1, '870.0000', '870.0000', '0.0000', 0),
(315, 118, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(316, 119, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(317, 119, 207, 'Чорна спідниця міді із запахом (арт. С- 23)', 'Спідниця С-23', 1, '930.0000', '930.0000', '0.0000', 0),
(318, 120, 218, 'СПІДНИЦЯ ТРИКОТАЖНА КЛЬОШ (арт. С- 25)', 'Спідниця С-25', 1, '672.0000', '672.0000', '0.0000', 0),
(319, 121, 209, 'Рубашка боди белая с потайной застежкой (арт. Б-16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(320, 122, 252, 'Сорочка боді сіро-біла смужка у &quot;крапочку&quot; (арт. Б- 17/1)', 'БОДІ Б-17/1', 1, '750.0000', '750.0000', '0.0000', 0),
(321, 122, 152, 'Сорочка жіноча (арт. Р-17)', 'Рубашка Р-17', 1, '750.0000', '750.0000', '0.0000', 0),
(322, 123, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(323, 124, 240, 'сорочка біла з великою кишенею (Р 33)', 'Рубашка Р 33', 1, '850.0000', '850.0000', '0.0000', 0),
(324, 125, 75, 'Блузка жіноча (арт. БЛ-01)', 'Блуза БЛ-01', 1, '340.0000', '340.0000', '0.0000', 0),
(325, 126, 267, 'Сукня міді польові квітки ( П 24)', 'СУКНЯ П 24', 1, '970.0000', '970.0000', '0.0000', 0),
(326, 127, 190, 'Блуза жіноча (БЛ-21)', 'Блуза БЛ-21', 1, '530.0000', '530.0000', '0.0000', 0),
(327, 128, 270, 'СПІДНИЦЯ на гудзиках геометрія ( С 32)', 'Спідниця С 32', 1, '630.0000', '630.0000', '0.0000', 0),
(328, 128, 280, 'Блузка біла батист ( БЛ 35)', 'Блуза БЛ 35', 1, '440.0000', '440.0000', '0.0000', 0),
(333, 129, 192, 'Блуза жіноча (БЛ-23)', 'Блуза БЛ-23', 1, '560.0000', '560.0000', '0.0000', 0),
(334, 129, 190, 'Блуза жіноча (БЛ-21)', 'Блуза БЛ-21', 1, '530.0000', '530.0000', '0.0000', 0),
(332, 129, 259, 'Жилет сірий з V образним вирізом (КА 16)', 'КАМІЗЕЛЬКА КА 16', 1, '980.0000', '980.0000', '0.0000', 0),
(335, 130, 202, 'Жіноча сорочка в  смужку (арт. Р-25)', 'Рубашка Р-25', 1, '720.0000', '720.0000', '0.0000', 0),
(336, 131, 225, 'КАМІЗЕЛЬКА СІРА ТРИКОТАЖНА ТЕПЛА (КА- 13)', 'КАМІЗЕЛЬКА КА-13', 1, '780.0000', '780.0000', '0.0000', 0),
(337, 131, 203, 'Жіноча сорочка у  смужку (арт. Р-26)', 'Рубашка Р-26', 1, '720.0000', '720.0000', '0.0000', 0),
(338, 132, 224, 'Блуза жіноча кремова з бантом   (БЛ- 28)', 'Блуза БЛ-28', 1, '750.0000', '750.0000', '0.0000', 0),
(339, 133, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(340, 134, 208, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', 'БОДІ Б-15', 1, '750.0000', '750.0000', '0.0000', 0),
(341, 134, 248, 'Сорочка боді біла з репсовою стрічкою (Б 19)', 'БОДІ Б 19', 1, '760.0000', '760.0000', '0.0000', 0),
(342, 135, 201, 'Жіноча біла сорочка зі спущеним рукавом (арт. Р-24)', 'Рубашка Р-24', 2, '610.0000', '1220.0000', '0.0000', 0),
(343, 136, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(344, 137, 246, 'блуза с мереживною баскою шампань (БЛ 31)', 'Блуза БЛ 31', 1, '880.0000', '880.0000', '0.0000', 0),
(348, 138, 248, 'Сорочка боді біла з репсовою стрічкою (Б 19)', 'БОДІ Б 19', 1, '676.4000', '676.4000', '0.0000', 0),
(347, 138, 208, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', 'БОДІ Б-15', 1, '667.5000', '667.5000', '0.0000', 0),
(349, 139, 208, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', 'БОДІ Б-15', 1, '667.5000', '667.5000', '0.0000', 0),
(350, 140, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '614.1000', '614.1000', '0.0000', 0),
(351, 140, 208, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', 'БОДІ Б-15', 1, '667.5000', '667.5000', '0.0000', 0),
(352, 141, 290, 'Блуза бавовняна в клітину (БЛ 37)', 'Блуза БЛ 37', 1, '890.0000', '890.0000', '0.0000', 0),
(353, 142, 213, 'Сорочка боді сіро-біла смужка з потайною застібкою (арт. Б- 17)', 'БОДІ Б-17', 1, '750.0000', '750.0000', '0.0000', 0),
(355, 143, 283, 'Камізелька синя в смужку із застібкою на спині (КА 20)', 'КАМІЗЕЛЬКА КА 20', 1, '890.0000', '890.0000', '0.0000', 0),
(356, 144, 237, 'блуза бузково-рожева з міні комірцем   (БЛ 29)', 'Блуза БЛ 29', 1, '552.0000', '552.0000', '0.0000', 0),
(357, 145, 290, 'Блуза бавовняна в клітину (БЛ 37)', 'Блуза БЛ 37', 1, '712.0000', '712.0000', '0.0000', 0),
(358, 146, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(359, 147, 201, 'Женская белая рубашка со спущенным рукавом (арт. Р-24)', 'Рубашка Р-24', 1, '610.0000', '610.0000', '0.0000', 0),
(360, 148, 209, 'Рубашка боди белая с потайной застежкой (арт. Б-16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(361, 149, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(362, 150, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '640.0000', '640.0000', '0.0000', 0),
(363, 151, 275, ' Топ майка кольоровий кант (ТП 05)', 'Топ ТП 05', 1, '258.0000', '258.0000', '0.0000', 0),
(364, 152, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(365, 153, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '640.0000', '640.0000', '0.0000', 0),
(366, 154, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(367, 155, 263, 'Чорна спідниця міді із запахом та сорочка зі спущеним рукавом(акція 1)', 'Акція 1', 1, '1540.0000', '1540.0000', '0.0000', 0),
(368, 156, 287, ' Сорочка біла з фігурною планкою та обрамленою кишенею (Р 37)', 'Рубашка Р 37', 1, '990.0000', '990.0000', '0.0000', 0),
(369, 157, 212, 'Блакитна укорочена блуза з білим мереживом (арт. БЛ- 27)', 'Блуза БЛ-27', 1, '640.0000', '640.0000', '0.0000', 0),
(370, 158, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0),
(371, 159, 200, 'Жіноча подовжена сорочка в клітинку (арт. Р-23)', 'Рубашка Р-23', 1, '840.0000', '840.0000', '0.0000', 0),
(372, 160, 209, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', 'БОДІ Б-16', 1, '690.0000', '690.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_recurring`
--

TRUNCATE TABLE `oc_order_recurring`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_recurring_transaction`
--

TRUNCATE TABLE `oc_order_recurring_transaction`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_status`
--

TRUNCATE TABLE `oc_order_status`;
--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(7, 2, 'Отменен'),
(5, 2, 'Завершен'),
(1, 2, 'Ожидает'),
(15, 2, 'В обработке'),
(7, 1, 'Canceled'),
(1, 1, 'Pending'),
(15, 1, 'Processed'),
(5, 1, 'Complete'),
(7, 3, 'Отменен'),
(5, 3, 'Завершен'),
(1, 3, 'Ожидает'),
(15, 3, 'В обработке');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1018 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_total`
--

TRUNCATE TABLE `oc_order_total`;
--
-- Дамп данных таблицы `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(663, 69, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(631, 65, 'total', 'Всього до сплати', '520.00грн', '520.0000', 9),
(597, 60, 'total', 'Всього до сплати', '470.00грн', '470.0000', 9),
(627, 64, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(626, 64, 'total_customer_group_discount', 'Discount 10%', '-97.00грн', '-97.0000', 2),
(624, 63, 'total', 'Всього до сплати', '1,220.00грн', '1220.0000', 9),
(598, 61, 'sub_total', 'Сума', '395.00грн', '395.0000', 1),
(599, 61, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(600, 61, 'total', 'Всього до сплати', '395.00грн', '395.0000', 9),
(601, 62, 'sub_total', 'Сумма', '420.00грн', '420.0000', 1),
(602, 62, 'total_customer_group_discount', 'Скидка 0%', '0.00грн', '0.0000', 2),
(603, 62, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(604, 62, 'total', 'Итого', '420.00грн', '420.0000', 9),
(625, 64, 'sub_total', 'Сума', '970.00грн', '970.0000', 1),
(623, 63, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(621, 63, 'sub_total', 'Сума', '1,220.00грн', '1220.0000', 1),
(622, 63, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(103, 9, 'total', 'Итого', '301.00грн', '301.0000', 9),
(101, 9, 'sub_total', 'Сумма', '301.00грн', '301.0000', 1),
(102, 9, 'shipping', 'Самовывоз из магазина', '0.00грн', '0.0000', 3),
(661, 68, 'total', 'Всього до сплати', '495.00грн', '495.0000', 9),
(662, 69, 'sub_total', 'Сума', '450.00грн', '450.0000', 1),
(630, 65, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '35.00грн', '35.0000', 3),
(629, 65, 'sub_total', 'Сума', '485.00грн', '485.0000', 1),
(628, 64, 'total', 'Всього до сплати', '873.00грн', '873.0000', 9),
(596, 60, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(565, 53, 'sub_total', 'Сумма', '350.00грн', '350.0000', 1),
(566, 53, 'shipping', 'Курьерская доставка по Украине', '0.00грн', '0.0000', 3),
(567, 53, 'total', 'Итого', '350.00грн', '350.0000', 9),
(568, 54, 'sub_total', 'Сумма', '310.00грн', '310.0000', 1),
(569, 54, 'shipping', 'Самовывоз из магазина', '0.00грн', '0.0000', 3),
(570, 54, 'total', 'Итого', '310.00грн', '310.0000', 9),
(571, 55, 'sub_total', 'Сумма', '325.00грн', '325.0000', 1),
(572, 55, 'shipping', 'Курьерская доставка по Украине', '0.00грн', '0.0000', 3),
(573, 55, 'total', 'Итого', '325.00грн', '325.0000', 9),
(574, 56, 'sub_total', 'Сумма', '1065.00грн', '1065.0000', 1),
(575, 56, 'shipping', 'Доставка курьером по городу Киеву и Вишневое', '0.00грн', '0.0000', 3),
(576, 56, 'total', 'Итого', '1065.00грн', '1065.0000', 9),
(594, 60, 'sub_total', 'Сума', '470.00грн', '470.0000', 1),
(595, 60, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(580, 57, 'sub_total', 'Сумма', '460.00грн', '460.0000', 1),
(581, 57, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(582, 57, 'total', 'Итого', '460.00грн', '460.0000', 9),
(583, 58, 'sub_total', 'Сума', '820.00грн', '820.0000', 1),
(584, 58, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(585, 58, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(586, 58, 'total', 'Всього до сплати', '820.00грн', '820.0000', 9),
(587, 59, 'sub_total', 'Сума', '470.00грн', '470.0000', 1),
(588, 59, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(589, 59, 'total', 'Всього до сплати', '470.00грн', '470.0000', 9),
(172, 22, 'reward', 'Бонусные баллы (200)', '-66.50грн', '-66.5000', 2),
(171, 22, 'sub_total', 'Сумма', '332.99грн', '332.9900', 1),
(173, 22, 'shipping', 'Самовывоз из магазина', '0.00грн', '0.0000', 3),
(174, 22, 'total', 'Итого', '266.49грн', '266.4900', 9),
(664, 69, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(660, 68, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(659, 68, 'sub_total', 'Сума', '495.00грн', '495.0000', 1),
(655, 67, 'total', 'Всього до сплати', '1,525.00грн', '1525.0000', 9),
(654, 67, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '0.00грн', '0.0000', 3),
(653, 67, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(652, 67, 'sub_total', 'Сума', '1,525.00грн', '1525.0000', 1),
(648, 66, 'sub_total', 'Сума', '485.00грн', '485.0000', 1),
(649, 66, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(650, 66, 'total', 'Всього до сплати', '520.00грн', '520.0000', 9),
(651, 66, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '35.00грн', '35.0000', 3),
(452, 30, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(453, 30, 'total', 'Всього до сплати', '475.00грн', '475.0000', 9),
(449, 31, 'total', 'Итого', '0.00грн', '0.0000', 9),
(447, 31, 'reward', 'Бонусные баллы (200)', '-75.00грн', '-75.0000', 2),
(448, 31, 'shipping', 'Самовывоз из магазина', '0.00грн', '0.0000', 3),
(450, 30, 'sub_total', 'Сума', '500.00грн', '500.0000', 1),
(451, 30, 'reward', 'Бали (25)', '-25.00грн', '-25.0000', 2),
(446, 31, 'sub_total', 'Сумма', '75.00грн', '75.0000', 1),
(730, 86, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(729, 86, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(665, 69, 'total', 'Всього до сплати', '450.00грн', '450.0000', 9),
(666, 70, 'sub_total', 'Сума', '470.00грн', '470.0000', 1),
(667, 70, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(668, 70, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(669, 70, 'total', 'Всього до сплати', '470.00грн', '470.0000', 9),
(670, 71, 'sub_total', 'Сума', '420.00грн', '420.0000', 1),
(671, 71, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(672, 71, 'total', 'Всього до сплати', '420.00грн', '420.0000', 9),
(673, 72, 'sub_total', 'Сума', '890.00грн', '890.0000', 1),
(674, 72, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(675, 72, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(676, 72, 'total', 'Всього до сплати', '890.00грн', '890.0000', 9),
(708, 81, 'sub_total', 'Сума', '1,210.00грн', '1210.0000', 1),
(707, 80, 'total', 'Всього до сплати', '1,210.00грн', '1210.0000', 9),
(705, 80, 'sub_total', 'Сума', '1,210.00грн', '1210.0000', 1),
(706, 80, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(504, 39, 'total', 'Всього до сплати', '1,035.00грн', '1035.0000', 9),
(502, 39, 'sub_total', 'Сума', '1,035.00грн', '1035.0000', 1),
(503, 39, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '0.00грн', '0.0000', 3),
(505, 40, 'sub_total', 'Сума', '325.00грн', '325.0000', 1),
(506, 40, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '35.00грн', '35.0000', 3),
(507, 40, 'total', 'Всього до сплати', '360.00грн', '360.0000', 9),
(702, 79, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(701, 79, 'sub_total', 'Сума', '490.00грн', '490.0000', 1),
(728, 86, 'sub_total', 'Сума', '490.00грн', '490.0000', 1),
(713, 82, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(714, 82, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '40.00грн', '40.0000', 3),
(715, 82, 'total', 'Всього до сплати', '460.00грн', '460.0000', 9),
(727, 85, 'total', 'Всього до сплати', '490.00грн', '490.0000', 9),
(726, 85, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(720, 84, 'sub_total', 'Сума', '470.00грн', '470.0000', 1),
(721, 84, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(722, 84, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(723, 84, 'total', 'Всього до сплати', '470.00грн', '470.0000', 9),
(724, 85, 'sub_total', 'Сума', '490.00грн', '490.0000', 1),
(725, 85, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(712, 82, 'sub_total', 'Сума', '420.00грн', '420.0000', 1),
(711, 81, 'total', 'Всього до сплати', '1,210.00грн', '1210.0000', 9),
(709, 81, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(710, 81, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(703, 79, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '40.00грн', '40.0000', 3),
(704, 79, 'total', 'Всього до сплати', '530.00грн', '530.0000', 9),
(731, 86, 'total', 'Всього до сплати', '490.00грн', '490.0000', 9),
(732, 87, 'sub_total', 'Сума', '1,335.00грн', '1335.0000', 1),
(733, 87, 'total_customer_group_discount', 'Discount 10%', '-133.50грн', '-133.5000', 2),
(734, 87, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(735, 87, 'total', 'Всього до сплати', '1,201.50грн', '1201.5000', 9),
(751, 91, 'total_customer_group_discount', 'Discount 10%', '-53.00грн', '-53.0000', 2),
(750, 91, 'sub_total', 'Сума', '530.00грн', '530.0000', 1),
(747, 90, 'sub_total', 'Сума', '420.00грн', '420.0000', 1),
(748, 90, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(749, 90, 'total', 'Всього до сплати', '420.00грн', '420.0000', 9),
(745, 89, 'total_customer_group_discount', 'Discount 10%', '-86.50грн', '-86.5000', 2),
(746, 89, 'total', 'Всього до сплати', '778.50грн', '778.5000', 9),
(744, 89, 'sub_total', 'Сума', '865.00грн', '865.0000', 1),
(752, 91, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '40.00грн', '40.0000', 3),
(753, 91, 'total', 'Всього до сплати', '517.00грн', '517.0000', 9),
(754, 92, 'sub_total', 'Сума', '495.00грн', '495.0000', 1),
(755, 92, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(756, 92, 'total', 'Всього до сплати', '495.00грн', '495.0000', 9),
(757, 93, 'sub_total', 'Сума', '1,450.00грн', '1450.0000', 1),
(758, 93, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(759, 93, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(760, 93, 'total', 'Всього до сплати', '1,450.00грн', '1450.0000', 9),
(761, 94, 'sub_total', 'Сума', '450.00грн', '450.0000', 1),
(762, 94, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(763, 94, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(764, 94, 'total', 'Всього до сплати', '450.00грн', '450.0000', 9),
(765, 95, 'sub_total', 'Сумма', '420.00грн', '420.0000', 1),
(766, 95, 'total_customer_group_discount', 'Скидка 0%', '0.00грн', '0.0000', 2),
(767, 95, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(768, 95, 'total', 'Итого', '420.00грн', '420.0000', 9),
(769, 96, 'sub_total', 'Сума', '450.00грн', '450.0000', 1),
(770, 96, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(771, 96, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(772, 96, 'total', 'Всього до сплати', '450.00грн', '450.0000', 9),
(773, 97, 'sub_total', 'Сума', '480.00грн', '480.0000', 1),
(774, 97, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(775, 97, 'total', 'Всього до сплати', '480.00грн', '480.0000', 9),
(776, 98, 'sub_total', 'Сума', '1,250.00грн', '1250.0000', 1),
(777, 98, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(778, 98, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(779, 98, 'total', 'Всього до сплати', '1,250.00грн', '1250.0000', 9),
(780, 99, 'sub_total', 'Сума', '375.00грн', '375.0000', 1),
(781, 99, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(782, 99, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(783, 99, 'total', 'Всього до сплати', '375.00грн', '375.0000', 9),
(784, 100, 'sub_total', 'Сума', '880.00грн', '880.0000', 1),
(785, 100, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '40.00грн', '40.0000', 3),
(786, 100, 'total', 'Всього до сплати', '920.00грн', '920.0000', 9),
(792, 101, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(793, 101, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(791, 101, 'sub_total', 'Сума', '510.00грн', '510.0000', 1),
(794, 101, 'total', 'Всього до сплати', '560.00грн', '560.0000', 9),
(795, 102, 'sub_total', 'Сума', '680.00грн', '680.0000', 1),
(796, 102, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(797, 102, 'total', 'Всього до сплати', '680.00грн', '680.0000', 9),
(798, 103, 'sub_total', 'Сума', '510.00грн', '510.0000', 1),
(799, 103, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(800, 103, 'total', 'Всього до сплати', '560.00грн', '560.0000', 9),
(801, 104, 'sub_total', 'Сумма', '590.00грн', '590.0000', 1),
(802, 104, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(803, 104, 'total', 'Итого', '590.00грн', '590.0000', 9),
(804, 105, 'sub_total', 'Сума', '590.00грн', '590.0000', 1),
(805, 105, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(806, 105, 'total', 'Всього до сплати', '590.00грн', '590.0000', 9),
(807, 106, 'sub_total', 'Сума', '620.00грн', '620.0000', 1),
(808, 106, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(809, 106, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(810, 106, 'total', 'Всього до сплати', '620.00грн', '620.0000', 9),
(811, 107, 'sub_total', 'Сумма', '840.00грн', '840.0000', 1),
(812, 107, 'total_customer_group_discount', 'Скидка 0%', '0.00грн', '0.0000', 2),
(813, 107, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(814, 107, 'total', 'Итого', '840.00грн', '840.0000', 9),
(815, 108, 'sub_total', 'Сума', '545.00грн', '545.0000', 1),
(816, 108, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(817, 108, 'total', 'Всього до сплати', '545.00грн', '545.0000', 9),
(818, 109, 'sub_total', 'Сума', '610.00грн', '610.0000', 1),
(819, 109, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(820, 109, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(821, 109, 'total', 'Всього до сплати', '610.00грн', '610.0000', 9),
(822, 110, 'sub_total', 'Сума', '620.00грн', '620.0000', 1),
(823, 110, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(824, 110, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(825, 110, 'total', 'Всього до сплати', '670.00грн', '670.0000', 9),
(826, 111, 'sub_total', 'Сума', '595.00грн', '595.0000', 1),
(827, 111, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(828, 111, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(829, 111, 'total', 'Всього до сплати', '595.00грн', '595.0000', 9),
(830, 112, 'sub_total', 'Сума', '1,520.00грн', '1520.0000', 1),
(831, 112, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(832, 112, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(833, 112, 'total', 'Всього до сплати', '1,520.00грн', '1520.0000', 9),
(834, 113, 'sub_total', 'Сума', '590.00грн', '590.0000', 1),
(835, 113, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(836, 113, 'total', 'Всього до сплати', '590.00грн', '590.0000', 9),
(837, 114, 'sub_total', 'Сумма', '590.00грн', '590.0000', 1),
(838, 114, 'total_customer_group_discount', 'Скидка 0%', '0.00грн', '0.0000', 2),
(839, 114, 'shipping', 'Доставка УкрПочтой', '0.00грн', '0.0000', 3),
(840, 114, 'total', 'Итого', '590.00грн', '590.0000', 9),
(841, 115, 'sub_total', 'Сума', '590.00грн', '590.0000', 1),
(842, 115, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(843, 115, 'total', 'Всього до сплати', '590.00грн', '590.0000', 9),
(844, 116, 'sub_total', 'Сума', '1,112.00грн', '1112.0000', 1),
(845, 116, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(846, 116, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '0.00грн', '0.0000', 3),
(847, 116, 'total', 'Всього до сплати', '1,112.00грн', '1112.0000', 9),
(848, 117, 'sub_total', 'Сума', '870.00грн', '870.0000', 1),
(849, 117, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(850, 117, 'total', 'Всього до сплати', '870.00грн', '870.0000', 9),
(856, 118, 'total', 'Всього до сплати', '740.00грн', '740.0000', 9),
(855, 118, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(854, 118, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(857, 119, 'sub_total', 'Сума', '1,620.00грн', '1620.0000', 1),
(858, 119, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(859, 119, 'total', 'Всього до сплати', '1,620.00грн', '1620.0000', 9),
(860, 120, 'sub_total', 'Сума', '672.00грн', '672.0000', 1),
(861, 120, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(862, 120, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(863, 120, 'total', 'Всього до сплати', '672.00грн', '672.0000', 9),
(864, 121, 'sub_total', 'Сумма', '690.00грн', '690.0000', 1),
(865, 121, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(866, 121, 'total', 'Итого', '690.00грн', '690.0000', 9),
(867, 122, 'sub_total', 'Сума', '1,500.00грн', '1500.0000', 1),
(868, 122, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(869, 122, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(870, 122, 'total', 'Всього до сплати', '1,500.00грн', '1500.0000', 9),
(871, 123, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(872, 123, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(873, 123, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(874, 124, 'sub_total', 'Сума', '850.00грн', '850.0000', 1),
(875, 124, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(876, 124, 'total', 'Всього до сплати', '850.00грн', '850.0000', 9),
(877, 125, 'sub_total', 'Сума', '340.00грн', '340.0000', 1),
(878, 125, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(879, 125, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(880, 125, 'total', 'Всього до сплати', '340.00грн', '340.0000', 9),
(881, 126, 'sub_total', 'Сума', '970.00грн', '970.0000', 1),
(882, 126, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(883, 126, 'total', 'Всього до сплати', '970.00грн', '970.0000', 9),
(884, 127, 'sub_total', 'Сума', '530.00грн', '530.0000', 1),
(885, 127, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(886, 127, 'total', 'Всього до сплати', '530.00грн', '530.0000', 9),
(887, 128, 'sub_total', 'Сума', '1,070.00грн', '1070.0000', 1),
(888, 128, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(889, 128, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(890, 128, 'total', 'Всього до сплати', '1,070.00грн', '1070.0000', 9),
(896, 129, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(897, 129, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '0.00грн', '0.0000', 3),
(895, 129, 'sub_total', 'Сума', '2,070.00грн', '2070.0000', 1),
(898, 129, 'total', 'Всього до сплати', '2,070.00грн', '2070.0000', 9),
(899, 130, 'sub_total', 'Сума', '720.00грн', '720.0000', 1),
(900, 130, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(901, 130, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(902, 130, 'total', 'Всього до сплати', '720.00грн', '720.0000', 9),
(903, 131, 'sub_total', 'Сума', '1,500.00грн', '1500.0000', 1),
(904, 131, 'shipping', 'Доставка УкрПоштою', '0.00грн', '0.0000', 3),
(905, 131, 'total', 'Всього до сплати', '1,500.00грн', '1500.0000', 9),
(906, 132, 'sub_total', 'Сума', '750.00грн', '750.0000', 1),
(907, 132, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(908, 132, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(909, 132, 'total', 'Всього до сплати', '800.00грн', '800.0000', 9),
(910, 133, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(911, 133, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(912, 133, 'total', 'Всього до сплати', '740.00грн', '740.0000', 9),
(913, 134, 'sub_total', 'Сума', '1,510.00грн', '1510.0000', 1),
(914, 134, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(915, 134, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '0.00грн', '0.0000', 3),
(916, 134, 'total', 'Всього до сплати', '1,510.00грн', '1510.0000', 9),
(917, 135, 'sub_total', 'Сума', '1,220.00грн', '1220.0000', 1),
(918, 135, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(919, 135, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(920, 135, 'total', 'Всього до сплати', '1,220.00грн', '1220.0000', 9),
(921, 136, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(922, 136, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(923, 136, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(924, 136, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(925, 137, 'sub_total', 'Сума', '880.00грн', '880.0000', 1),
(926, 137, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(927, 137, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(928, 137, 'total', 'Всього до сплати', '880.00грн', '880.0000', 9),
(935, 138, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(934, 138, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(933, 138, 'sub_total', 'Сума', '1,343.90грн', '1343.9000', 1),
(936, 138, 'total', 'Всього до сплати', '1,343.90грн', '1343.9000', 9),
(937, 139, 'sub_total', 'Сума', '667.50грн', '667.5000', 1),
(938, 139, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(939, 139, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(940, 139, 'total', 'Всього до сплати', '667.50грн', '667.5000', 9),
(941, 140, 'sub_total', 'Сума', '1,281.60грн', '1281.6000', 1),
(942, 140, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(943, 140, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(944, 140, 'total', 'Всього до сплати', '1,331.60грн', '1331.6000', 9),
(945, 141, 'sub_total', 'Сума', '890.00грн', '890.0000', 1),
(946, 141, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(947, 141, 'total', 'Всього до сплати', '890.00грн', '890.0000', 9),
(948, 142, 'sub_total', 'Сума', '750.00грн', '750.0000', 1),
(949, 142, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(950, 142, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(951, 142, 'total', 'Всього до сплати', '750.00грн', '750.0000', 9),
(957, 143, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(958, 143, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(956, 143, 'sub_total', 'Сума', '890.00грн', '890.0000', 1),
(959, 143, 'total', 'Всього до сплати', '940.00грн', '940.0000', 9),
(960, 144, 'sub_total', 'Сума', '552.00грн', '552.0000', 1),
(961, 144, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(962, 144, 'total', 'Всього до сплати', '552.00грн', '552.0000', 9),
(963, 145, 'sub_total', 'Сума', '712.00грн', '712.0000', 1),
(964, 145, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(965, 145, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '50.00грн', '50.0000', 3),
(966, 145, 'total', 'Всього до сплати', '762.00грн', '762.0000', 9),
(967, 146, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(968, 146, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(969, 146, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(970, 146, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(971, 147, 'sub_total', 'Сумма', '610.00грн', '610.0000', 1),
(972, 147, 'total_customer_group_discount', 'Скидка 0%', '0.00грн', '0.0000', 2),
(973, 147, 'shipping', 'Доставка курьером по городу Киеву и Вишневое', '50.00грн', '50.0000', 3),
(974, 147, 'total', 'Итого', '660.00грн', '660.0000', 9),
(975, 148, 'sub_total', 'Сумма', '690.00грн', '690.0000', 1),
(976, 148, 'total_customer_group_discount', 'Скидка 0%', '0.00грн', '0.0000', 2),
(977, 148, 'shipping', 'Доставка Новой Почтой', '0.00грн', '0.0000', 3),
(978, 148, 'total', 'Итого', '690.00грн', '690.0000', 9),
(979, 149, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(980, 149, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(981, 149, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(982, 150, 'sub_total', 'Сума', '640.00грн', '640.0000', 1),
(983, 150, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(984, 150, 'total', 'Всього до сплати', '640.00грн', '640.0000', 9),
(985, 151, 'sub_total', 'Сума', '258.00грн', '258.0000', 1),
(986, 151, 'shipping', 'Самовивіз зі складу', '0.00грн', '0.0000', 3),
(987, 151, 'total', 'Всього до сплати', '258.00грн', '258.0000', 9),
(988, 152, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(989, 152, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(990, 152, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(991, 153, 'sub_total', 'Сума', '640.00грн', '640.0000', 1),
(992, 153, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(993, 153, 'total', 'Всього до сплати', '640.00грн', '640.0000', 9),
(994, 154, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(995, 154, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(996, 154, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(997, 155, 'sub_total', 'Сума', '1,540.00грн', '1540.0000', 1),
(998, 155, 'shipping', 'Доставка кур`єром по місту Києву та Вишневе', '0.00грн', '0.0000', 3),
(999, 155, 'total', 'Всього до сплати', '1,540.00грн', '1540.0000', 9),
(1000, 156, 'sub_total', 'Сума', '990.00грн', '990.0000', 1),
(1001, 156, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(1002, 156, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(1003, 156, 'total', 'Всього до сплати', '990.00грн', '990.0000', 9),
(1004, 157, 'sub_total', 'Сума', '640.00грн', '640.0000', 1),
(1005, 157, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(1006, 157, 'total', 'Всього до сплати', '640.00грн', '640.0000', 9),
(1007, 158, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(1008, 158, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(1009, 158, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9),
(1010, 159, 'sub_total', 'Сума', '840.00грн', '840.0000', 1),
(1011, 159, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(1012, 159, 'shipping', 'Доставка Новою Поштою', '0.00грн', '0.0000', 3),
(1013, 159, 'total', 'Всього до сплати', '840.00грн', '840.0000', 9),
(1014, 160, 'sub_total', 'Сума', '690.00грн', '690.0000', 1),
(1015, 160, 'total_customer_group_discount', 'Discount 0%', '0.00грн', '0.0000', 2),
(1016, 160, 'shipping', 'Доставка УкрПоштою', '0.00грн', '0.0000', 3),
(1017, 160, 'total', 'Всього до сплати', '690.00грн', '690.0000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Очистить таблицу перед добавлением данных `oc_order_voucher`
--

TRUNCATE TABLE `oc_order_voucher`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=318 ;

--
-- Очистить таблицу перед добавлением данных `oc_product`
--

TRUNCATE TABLE `oc_product`;
--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(98, 'Корсаж КЖ 01', '', '', '', '', '', '', '', 1, 6, 'data/products/osen_zima17_18/Capture00608_1.jpg', 0, 1, '710.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 4, 1, '2014-08-29 00:02:35', '2017-12-23 18:34:35', 405),
(41, 'БОДІ Б-01', 'Б01', '', '', '', '', '', '', 977, 7, 'data/products/titul/Studio-Session-170_10.jpg', 0, 1, '590.0000', 0, 0, '2009-02-03', '0.00000000', 6, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 6, 0, '2009-02-03 21:07:26', '2017-01-10 22:53:38', 1500),
(313, 'СУКНЯ П 33', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_01886.jpg', 11, 1, '1940.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -31, 1, '2018-03-18 14:20:38', '2018-03-18 14:22:59', 12),
(314, 'Спідниця С 39', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02156.jpg', 11, 1, '650.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -31, 1, '2018-03-19 22:01:20', '2018-03-19 22:22:46', 16),
(315, 'Спідниця С 38', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02234.jpg', 11, 1, '830.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -30, 1, '2018-03-19 22:23:19', '2018-03-19 22:29:25', 13),
(316, 'Рубашка Р 39', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02708.jpg', 11, 1, '890.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -29, 1, '2018-03-21 21:49:40', '2018-03-21 22:38:08', 4),
(317, 'Блуза БЛ 38', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02342.jpg', 11, 1, '1020.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -29, 1, '2018-03-21 22:30:42', '2018-03-21 22:36:31', 4),
(47, 'БОДІ Б-03', 'Б03', '', '', '', '', '', '', 1000, 6, 'data/products/titul/Studio-Session-136_10.jpg', 11, 1, '590.0000', 0, 0, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 9, 0, '2009-02-03 21:08:40', '2017-01-10 22:54:28', 726),
(49, 'БОДІ Б-02', 'Б02', '', '', '', '', '', '', 999, 5, 'data/products/titul/Studio-Session-035_10.jpg', 11, 1, '590.0000', 0, 0, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 7, 0, '2011-04-26 08:57:34', '2017-01-10 22:53:53', 782),
(75, 'Блуза БЛ-01', '', '', '', '', '', '', '', 999, 6, 'data/products/titul/Studio-Session-094_10.jpg', 11, 1, '440.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 9, 0, '2014-08-28 22:42:26', '2017-06-06 01:38:36', 750),
(247, 'Топ ТП 02', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602169.jpg', 11, 1, '630.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-11 12:17:25', '2017-11-08 20:39:17', 298),
(51, 'БОДІ Б-06', 'Б06', '', '', '', '', '', '', 999, 6, 'data/products/titul/Studio-Session-354_10.jpg', 11, 1, '470.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, '2014-08-28 16:13:00', '2016-08-14 19:12:05', 530),
(312, 'КАМІЗЕЛЬКА КА 24', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02622.jpg', 0, 1, '2560.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -31, 1, '2018-03-17 22:50:00', '2018-03-17 22:57:51', 16),
(286, 'Рубашка Р 36', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00809-(1).jpg', 11, 1, '930.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -21, 1, '2017-09-19 22:44:48', '2017-10-23 23:12:50', 107),
(287, 'Рубашка Р 37', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00664-(2).jpg', 11, 1, '990.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-09-19 22:52:13', '2018-03-01 15:34:07', 223),
(288, 'Рубашка Р 38', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00736.jpg', 11, 1, '980.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -21, 1, '2017-09-19 23:01:21', '2017-10-23 23:11:20', 115),
(289, 'Спідниця С 34', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00374.jpg', 11, 1, '890.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-20 09:36:46', '2017-09-20 23:47:26', 184),
(290, 'Блуза БЛ 37', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00722.jpg', 11, 1, '890.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-09-20 21:56:07', '2017-09-21 22:24:14', 157),
(291, 'Спідниця С 35', '', '', '', '', '', '', '', 0, 7, 'data/products/osen_zima17_18/Capture00856.jpg', 11, 1, '1550.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-20 22:09:48', '2017-12-04 09:01:59', 120),
(293, 'СУКНЯ П 26', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00608.jpg', 11, 1, '1440.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-20 23:22:48', '2017-09-20 23:33:46', 201),
(295, 'СУКНЯ П 28', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00532.jpg', 11, 1, '1910.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-21 08:58:12', '2017-09-21 09:02:48', 174),
(299, 'КАМІЗЕЛЬКА КА 21', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01184.jpg', 0, 1, '1290.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-12-22 21:51:16', '2018-03-17 00:23:08', 97),
(300, 'СВЕТР СВ 02', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01468.jpg', 0, 1, '990.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-12-22 21:53:47', '2018-02-13 14:17:48', 89),
(301, 'СВЕТР СВ 04', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01499.jpg', 0, 1, '1330.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-12-22 22:00:56', '2018-02-13 14:21:13', 79),
(302, 'Гольф СВ 03', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01162.jpg', 0, 1, '480.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-12-22 22:07:10', '2018-03-17 00:24:43', 115),
(303, 'Спідниця С 36', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/00926.jpg', 11, 1, '930.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-12-22 22:13:03', '2018-02-13 14:19:06', 97),
(304, 'шапка  ША- 02', '', '', '', '', '', '', '', 1, 6, 'data/products/ZIMA18/01524-(1).jpg', 0, 1, '390.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -2, 1, '2017-12-23 18:27:16', '2018-02-13 14:20:20', 53),
(305, 'СУКНЯ П 29', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_01740.jpg', 11, 1, '2210.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -31, 1, '2018-03-16 23:34:13', '2018-03-17 23:07:03', 28),
(307, 'КАМІЗЕЛЬКА КА 23', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02557.jpg', 0, 1, '2890.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -32, 1, '2018-03-17 16:52:24', '2018-03-17 22:58:36', 34),
(97, 'Підтяжки П-02', '', '', '', '', '', '', '', 1, 6, 'data/products/zima 17/2016_11_0500901.jpg', 0, 1, '390.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 0, '2014-08-28 23:45:26', '2017-09-04 09:16:56', 365),
(283, 'КАМІЗЕЛЬКА КА 20', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00227.jpg', 0, 1, '890.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-19 22:07:37', '2017-09-19 22:17:03', 128),
(284, 'Спідниця С 33', '', '', '', '', '', '', '', 0, 7, 'data/products/osen_zima17_18/Capture00307.jpg', 11, 1, '930.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -21, 1, '2017-09-19 22:24:27', '2018-03-17 00:27:23', 119),
(280, 'Блуза БЛ 35', '', '', '', '', '', '', '', 0, 6, 'data/products/LETO17/DSC_0683-(1).jpg', 11, 1, '440.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, '2017-06-06 01:30:11', '2017-11-08 20:50:09', 154),
(279, 'Топ ТП 06', '', '', '', '', '', '', '', 0, 7, 'data/products/LETO17/DSC_0706.jpg', 11, 1, '680.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, '2017-06-06 01:20:01', '2017-11-08 15:54:43', 158),
(273, 'Топ ТП 03', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0186.jpg', 11, 1, '590.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-06 00:04:52', '2018-03-17 00:18:17', 157),
(274, 'СУКНЯ П 23', '', '', '', '', '', '', '', 0, 7, 'data/products/LETO17/DSC_0059_1-(40).jpg', 11, 1, '1140.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, '2017-06-06 00:14:13', '2017-09-04 09:51:24', 141),
(275, 'Топ ТП 05', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0267.jpg', 11, 1, '430.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-06 00:26:55', '2018-03-17 00:17:35', 172),
(276, 'Блуза БЛ 34', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0337.jpg', 11, 1, '410.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-06 00:37:26', '2017-11-08 20:49:42', 142),
(277, 'Блуза БЛ 33', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0346.jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-06 00:45:01', '2017-09-04 09:47:25', 141),
(278, 'КАМІЗЕЛЬКА КА 17', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0472.jpg', 0, 1, '1490.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -15, 1, '2017-06-06 00:56:02', '2017-11-08 20:47:15', 274),
(120, 'БОДІ Б-11', '', '', '', '', '', '', '', 50, 7, 'data/products/titul/Studio_09_03_2015-186_10.jpg', 11, 1, '870.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 4, 0, '2015-03-10 18:41:58', '2017-09-20 23:10:55', 1038),
(262, 'ПАЛЬТО ПТ 01', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2602025.jpg', 0, 1, '1950.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-04-08 14:50:43', '2017-08-31 09:48:23', 241),
(263, 'Акція 1', '', '', '', '', '', '', '', 1, 7, 'data/products/osen16/2016_07_23_Studio-00612.jpg', 11, 1, '1540.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-05-20 23:25:21', '2017-09-04 09:44:32', 357),
(264, 'САРАФАН (СН 03)', '', '', '', '', '', '', '', 0, 7, 'data/products/LETO17/DSC_0747-(1).jpg', 11, 1, '1580.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, '2017-05-31 23:02:01', '2017-09-04 09:36:13', 342),
(217, 'СУКНЯ П-13', '', '', '', '', '', '', '', 1, 7, 'data/products/zima 17/00920.jpg', 11, 1, '1390.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -16, 1, '2016-11-09 10:11:20', '2017-11-08 18:32:52', 887),
(219, 'Спідниця С-26', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/00877.jpg', 11, 1, '940.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -14, 1, '2016-11-09 23:11:38', '2017-12-04 09:03:13', 333),
(220, 'СУКНЯ П-14', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/01013.jpg', 11, 1, '1150.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -14, 1, '2016-11-09 23:30:59', '2017-10-23 23:14:21', 353),
(298, 'КАМІЗЕЛЬКА КА 22', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01268.jpg', 0, 1, '1290.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-12-22 21:43:55', '2018-03-17 00:23:46', 135),
(297, 'САРАФАН (СН 05)', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01079.jpg', 11, 1, '1570.0000', 0, 0, '2017-12-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-12-22 21:34:06', '2018-02-13 14:15:00', 108),
(261, 'Блуза БЛ 32', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/блуза.jpg', 11, 1, '570.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -19, 1, '2017-04-05 22:20:09', '2017-11-08 15:46:46', 202),
(255, 'Спідниця С 23/5', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602118_1.jpg', 11, 1, '930.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-03-13 18:20:39', '2017-03-13 18:29:07', 228),
(256, 'Рубашка Р 34', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2601811.jpg', 11, 1, '530.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-13 18:33:57', '2017-11-08 15:48:15', 251),
(257, 'Рубашка Р 32', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2601779.jpg', 11, 1, '850.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -19, 1, '2017-03-13 22:53:40', '2017-09-04 09:10:26', 162),
(258, 'Рубашка Р 31', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2601740.jpg', 11, 1, '770.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-15 15:11:06', '2017-03-16 12:44:38', 162),
(259, 'КАМІЗЕЛЬКА КА 16', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2601985_1.jpg', 0, 1, '980.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -20, 1, '2017-03-16 12:46:55', '2017-11-08 18:33:48', 215),
(260, 'Блуза БЛ 30', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602227_1.jpg', 11, 1, '570.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-16 13:38:05', '2017-11-08 20:47:48', 181),
(248, 'БОДІ Б 19', '', '', '', '', '', '', '', 48, 7, 'data/products/vesna17/2017_02_2602037.jpg', 11, 1, '760.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -18, 1, '2017-03-11 21:43:27', '2017-09-01 21:43:57', 157),
(249, 'БОДІ Б 18/1', '', '', '', '', '', '', '', 50, 7, 'data/products/vesna17/2017_02_2602076.jpg', 11, 1, '850.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-11 22:04:44', '2017-03-11 23:28:09', 216),
(250, 'БОДІ Б 18/2', '', '', '', '', '', '', '', 50, 7, 'data/products/vesna17/2017_02_2602066.jpg', 11, 1, '850.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-11 22:23:45', '2017-03-11 23:25:57', 248),
(251, 'БОДІ Б 18/3', '', '', '', '', '', '', '', 50, 7, 'data/products/vesna17/2017_02_2602110.jpg', 11, 1, '850.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-11 22:29:50', '2017-11-08 18:28:13', 242),
(252, 'БОДІ Б-17/1', '', '', '', '', '', '', '', 48, 7, 'data/products/vesna17/2017_02_2601852_1.jpg', 11, 1, '750.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -10, 1, '2017-03-12 21:07:42', '2017-05-06 14:22:59', 148),
(253, 'КАМІЗЕЛЬКА КА 15', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2601958.jpg', 0, 1, '1740.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -20, 1, '2017-03-12 22:36:24', '2017-11-08 18:34:05', 285),
(254, 'КАМІЗЕЛЬКА КА 14', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2601847.jpg', 0, 1, '1670.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-12 22:49:53', '2017-12-04 09:05:11', 280),
(272, 'Майка МА 01', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0394.jpg', 11, 1, '410.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-03 23:01:13', '2018-03-17 00:16:21', 142),
(181, 'СУКНЯ П-08', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00164.jpg', 11, 1, '890.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -3, 1, '2016-04-15 12:09:11', '2017-08-31 09:50:10', 671),
(311, 'СУКНЯ П 31', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_01834.jpg', 11, 1, '1570.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -31, 1, '2018-03-17 22:40:40', '2018-03-18 14:17:57', 22),
(285, 'Блуза БЛ 36', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00307_2.jpg', 11, 1, '780.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-09-19 22:32:54', '2017-11-08 15:38:42', 84),
(139, 'Сукня П-06', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-399_10.jpg', 11, 1, '880.0000', 0, 0, '2015-07-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 0, '2015-07-29 15:01:25', '2017-06-06 01:44:47', 743),
(221, 'СУКНЯ П-15', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/01075.jpg', 11, 1, '1200.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -15, 1, '2016-11-10 09:49:12', '2017-09-20 23:05:42', 737),
(222, 'СУКНЯ П 20', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602508.jpg', 11, 1, '1220.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2016-11-15 16:50:40', '2017-09-20 23:02:57', 360),
(240, 'Рубашка Р 33', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602544.jpg', 11, 1, '850.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -22, 1, '2017-03-03 23:48:52', '2017-09-19 23:04:29', 784),
(230, 'шапка сіра коси ША- 01', '', '', '', '', '', '', '', 1, 6, 'data/products/zima 17/2016_11_0501402.jpg', 0, 1, '190.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, '2016-11-16 15:13:14', '2017-12-23 18:35:28', 248),
(229, 'Підтяжки П-03', '', '', '', '', '', '', '', 1, 6, 'data/products/zima 17/2016_11_0500904.jpg', 0, 1, '390.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 0, '2016-11-16 15:04:44', '2017-09-04 09:16:35', 163),
(269, 'Топ ТП 04', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0592-(2).jpg', 11, 1, '540.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-03 22:24:06', '2018-03-17 00:17:57', 179),
(268, 'САРАФАН (СН 04)', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0808.jpg', 11, 1, '1150.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-02 01:13:13', '2017-11-08 20:41:09', 218),
(266, 'Рубашка Р 35', '', '', '', '', '', '', '', 0, 7, 'data/products/LETO17/DSC_0213_1-(1).jpg', 11, 1, '1050.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, '2017-05-31 23:57:15', '2018-03-17 00:17:09', 219),
(228, 'Підтяжки П-01', '', '', '', '', '', '', '', 0, 6, 'data/products/228-Studio-Session.jpg', 0, 1, '110.0000', 0, 0, '2014-08-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 0, '2016-11-16 14:20:17', '0000-00-00 00:00:00', 0),
(267, 'СУКНЯ П 24', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0864.jpg', 11, 1, '970.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-06-02 01:01:10', '2017-09-04 09:52:56', 267),
(149, 'СУКНЯ П-07', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Studio_19_07_2015-427_10.jpg', 11, 1, '840.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 0, '2015-08-16 23:23:21', '2016-08-14 19:26:41', 191),
(150, 'Спідниця С-16', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-611_10.jpg', 11, 1, '460.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 0, '2015-08-16 23:38:07', '2017-01-10 22:48:16', 264),
(152, 'Рубашка Р-17', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-477_10.jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 0, '2015-08-17 09:33:13', '2017-09-20 23:10:26', 856),
(241, 'САРАФАН (СН 02)', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2601551.jpg', 11, 1, '1780.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-03-04 00:15:44', '2017-03-15 14:50:20', 437),
(242, 'СУКНЯ П 22', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2602378.jpg', 11, 1, '1690.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -20, 1, '2017-03-06 23:05:04', '2017-11-08 18:32:26', 327),
(243, 'СУКНЯ П 17/2', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602248.jpg', 11, 1, '1250.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -18, 1, '2017-03-07 12:06:18', '2017-03-11 23:12:37', 212),
(244, 'СУКНЯ П 17/1', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602299.jpg', 11, 1, '1250.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-07 15:14:56', '2017-09-20 23:03:45', 393),
(245, 'Спідниця С-28', '', '', '', '', '', '', '', 1, 7, 'data/products/zima 17/01178.jpg', 11, 1, '710.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -13, 0, '2017-03-07 15:26:00', '0000-00-00 00:00:00', 0),
(158, 'Туніка Т-01', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-520_10.jpg', 11, 1, '560.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, '2015-08-17 22:01:06', '2017-06-06 01:42:25', 348),
(159, 'Туніка Т-02', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-660_10.jpg', 11, 1, '560.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, '2015-08-17 22:15:44', '2017-06-06 01:42:40', 248),
(235, 'СУКНЯ П 18', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602464-(1).jpg', 11, 1, '1220.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-03-01 23:39:21', '2017-09-20 23:02:42', 380),
(236, 'СУКНЯ П 19', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602415.jpg', 11, 1, '1220.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-03-01 23:54:24', '2017-09-20 23:02:30', 263),
(237, 'Блуза БЛ 29', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna17/2017_02_2601720.jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -19, 1, '2017-03-03 17:38:45', '2017-11-24 09:42:33', 225),
(163, 'Блуза БЛ-12', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-655_10.jpg', 11, 1, '420.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 0, '2015-08-17 23:31:45', '2017-01-10 22:40:16', 223),
(233, 'СНУД СН-01', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/2016_11_0501418.jpg', 11, 1, '450.0000', 0, 0, '2017-01-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, '2017-01-16 22:26:43', '2017-11-08 18:33:25', 73),
(165, 'Футболка Ф-02', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-682_10.jpg', 11, 1, '260.0000', 0, 0, '2015-08-18', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 0, '2015-08-19 13:09:14', '2016-04-13 11:45:59', 72),
(170, 'КАМІЗЕЛЬКА КА-08', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-617_10.jpg', 11, 1, '690.0000', 0, 0, '2015-08-18', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 2, 0, '2015-08-19 19:02:08', '2017-01-10 22:58:11', 400),
(171, 'КАМІЗЕЛЬКА КА-09', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Studio_19_07_2015-631_10.jpg', 11, 1, '475.0000', 0, 0, '2015-08-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 5, 0, '2015-08-25 11:15:16', '2017-09-04 09:15:51', 441),
(177, 'Топ ТП-01', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00036.jpg', 11, 1, '380.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -5, 0, '2016-04-11 20:15:41', '2017-09-04 09:34:18', 339),
(294, 'СУКНЯ П 27', '', '', '', '', '', '', '', 0, 7, 'data/products/osen_zima17_18/Capture00637.jpg', 11, 1, '1810.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-21 08:41:19', '2018-02-13 14:14:15', 66),
(216, 'САРАФАН (СН- 01)', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/00854.jpg', 11, 1, '1490.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -16, 1, '2016-11-09 09:31:09', '2017-11-08 18:37:30', 567),
(308, 'СВЕТР СВ 05', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02483.jpg', 0, 1, '1150.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -31, 1, '2018-03-17 21:27:30', '2018-03-17 21:49:36', 35),
(309, 'Спідниця С 37', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_02108.jpg', 11, 1, '990.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -30, 1, '2018-03-17 21:57:41', '2018-03-17 22:12:32', 17),
(310, 'СУКНЯ П 32', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_01771.jpg', 11, 1, '1940.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -30, 1, '2018-03-17 22:20:39', '2018-03-21 22:22:25', 19),
(281, 'КАМІЗЕЛЬКА КА 18', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00123.jpg', 0, 1, '2820.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-19 21:33:49', '2017-09-20 23:47:09', 145),
(178, 'Блуза БЛ-13', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00231.jpg', 11, 1, '590.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -2, 0, '2016-04-12 16:33:28', '2017-03-02 14:49:10', 269),
(234, 'СУКНЯ П-16', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/00993.jpg', 11, 1, '1150.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -14, 1, '2017-03-01 14:47:28', '2017-12-04 09:04:15', 200),
(179, 'Спідниця С-19', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00070.jpg', 11, 1, '640.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -2, 0, '2016-04-12 17:01:45', '2017-06-06 01:43:54', 271),
(238, 'Спідниця С 30', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/1234.jpg', 11, 1, '1490.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -20, 1, '2017-03-03 21:19:12', '2017-11-08 18:30:05', 360),
(239, 'СУКНЯ П 21', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602368.jpg', 11, 1, '1880.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-03-03 23:19:14', '2017-09-20 23:02:17', 398),
(182, 'КАМІЗЕЛЬКА КА-11', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00189.jpg', 0, 1, '1480.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -1, 0, '2016-04-15 15:52:05', '2017-11-08 18:35:43', 475),
(183, 'Блуза БЛ-14', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00246_1.jpg', 11, 1, '490.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2016-04-15 16:11:09', '2017-09-04 09:11:48', 270),
(184, 'Блуза БЛ-15', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00260_1.jpg', 11, 1, '640.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2016-04-16 10:38:21', '2017-09-04 09:12:19', 369),
(185, 'Блуза БЛ-16', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00263_1.jpg', 11, 1, '490.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -1, 0, '2016-04-16 10:49:27', '2017-06-06 01:41:39', 179),
(188, 'Блуза БЛ-19', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00289_1.jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2016-04-20 13:10:51', '2017-09-04 09:12:34', 309),
(189, 'Блуза БЛ-20', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00293_1.jpg', 11, 1, '530.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2016-04-20 13:24:40', '2017-11-08 15:53:24', 323),
(190, 'Блуза БЛ-21', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00304_1.jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2016-04-20 13:37:46', '2017-11-08 15:53:42', 319),
(191, 'Блуза БЛ-22', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00325.jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 0, '2016-04-20 13:49:20', '2017-09-20 23:09:53', 250),
(192, 'Блуза БЛ-23', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00306_1.jpg', 11, 1, '560.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -3, 0, '2016-04-20 13:58:55', '2017-09-20 23:09:35', 336),
(193, 'СУКНЯ П-10', '', '', '', '', '', '', '', 0, 7, 'data/products/vesna 16/Capture00127.jpg', 11, 1, '1580.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -2, 1, '2016-04-22 23:01:16', '2017-08-31 09:49:08', 436),
(194, 'Спідниця С-20', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna 16/Capture00065.jpg', 11, 1, '660.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -2, 0, '2016-04-22 23:07:29', '2017-01-10 22:47:02', 161),
(271, 'шарф', '', '', '', '', '', '', '', 0, 7, 'data/products/LETO17/DSC_0842.jpg', 0, 1, '360.0000', 0, 0, '2017-06-02', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2017-06-03 22:58:01', '2018-03-17 00:16:02', 133),
(270, 'Спідниця С 32', '', '', '', '', '', '', '', 0, 7, 'data/products/LETO17/DSC_0683.jpg', 11, 1, '630.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, '2017-06-03 22:42:18', '2017-09-04 09:37:09', 158),
(197, 'Блуза БЛ-24', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00070-(2).jpg', 11, 1, '690.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 0, '2016-04-28 13:35:56', '2017-09-04 09:13:05', 320),
(265, 'Спідниця С 31', '', '', '', '', '', '', '', 1, 7, 'data/products/LETO17/DSC_0592-(1).jpg', 11, 1, '830.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 10, 1, '2017-05-31 23:33:13', '2018-03-17 00:18:46', 223),
(199, 'Спідниця С-21', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/Capture00036 (1).jpg', 11, 1, '640.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 0, '2016-05-11 00:02:32', '2017-01-10 22:49:51', 108),
(200, 'Рубашка Р-23', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/2016_07_23_Studio-00448_1.jpg', 11, 1, '840.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -10, 1, '2016-08-01 12:34:05', '2017-03-02 14:51:00', 667),
(201, 'Рубашка Р-24', '', '', '', '', '', '', '', 100, 7, 'data/products/titul/2016_07_23_Studio-00514_1.jpg', 11, 1, '610.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -11, 1, '2016-08-01 14:29:45', '2017-10-23 23:09:47', 1118),
(218, 'Спідниця С-25', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/01111юбка.jpg', 11, 1, '840.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -13, 1, '2016-11-09 22:52:47', '2017-11-08 18:31:32', 484),
(202, 'Рубашка Р-25', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/2016_07_23_Studio-00458_1.jpg', 11, 1, '720.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -12, 0, '2016-08-01 22:13:44', '2017-09-20 23:08:47', 421),
(203, 'Рубашка Р-26', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/2016_07_23_Studio-00498_1.jpg', 11, 1, '720.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -7, 1, '2016-08-01 22:36:49', '2017-02-24 00:09:28', 330),
(292, 'СУКНЯ П 25', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00504.jpg', 11, 1, '1750.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-20 23:16:22', '2017-09-20 23:33:27', 160),
(204, 'Рубашка Р-27', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/2016_07_23_Studio-00536_1.jpg', 11, 1, '660.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -7, 1, '2016-08-05 13:25:32', '2017-02-24 00:08:27', 564),
(205, 'Рубашка Р-28', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/2016_07_23_Studio-00555_1.jpg', 11, 1, '610.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -7, 1, '2016-08-05 14:07:43', '2017-11-08 15:48:51', 437),
(206, 'Спідниця С-22', '', '', '', '', '', '', '', 1, 7, 'data/products/osen16/2016_07_23_Studio-00574.jpg', 11, 1, '780.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -14, 1, '2016-08-05 15:41:21', '2017-10-23 23:15:18', 611),
(207, 'Спідниця С-23', '', '', '', '', '', '', '', 1, 7, 'data/products/osen16/2016_07_23_Studio-00612.jpg', 11, 1, '930.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -13, 1, '2016-08-05 15:56:22', '2017-02-24 00:05:32', 1321),
(208, 'БОДІ Б-15', '', '', '', '', '', '', '', 48, 7, 'data/products/titul/2016_07_23_Studio-00697.jpg', 11, 1, '750.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -7, 1, '2016-08-09 12:08:08', '2017-02-24 00:06:48', 659),
(209, 'БОДІ Б-16', '', '', '', '', '', '', '', 48, 7, 'data/products/titul/2016_07_23_Studio-00672.jpg', 11, 1, '690.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -2, 1, '2016-08-09 12:32:38', '2017-10-23 23:15:58', 973),
(210, 'Блуза БЛ-25', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/2016_07_23_Studio-00622_1.jpg', 11, 1, '595.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -7, 0, '2016-08-09 12:59:10', '2017-06-06 01:41:05', 170),
(211, 'Блуза БЛ-26', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/2016_07_23_Studio-00643_1.jpg', 11, 1, '640.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -7, 1, '2016-08-09 14:31:26', '2017-11-08 15:52:55', 431),
(212, 'Блуза БЛ-27', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/2016_07_23_Studio-00660_1.jpg', 11, 1, '640.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -10, 1, '2016-08-09 14:51:34', '2017-11-08 20:48:55', 391),
(213, 'БОДІ Б-17', '', '', '', '', '', '', '', 48, 7, 'data/products/zima 17/01323.jpg', 11, 1, '750.0000', 0, 0, '2015-03-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -10, 1, '2016-08-09 15:06:13', '2017-10-23 23:08:53', 310),
(214, 'Спідниця С-24', '', '', '', '', '', '', '', 0, 7, 'data/products/titul/2016_07_23_Studio-00688.jpg', 11, 1, '790.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -15, 1, '2016-08-10 11:36:58', '2017-11-08 18:30:46', 509),
(296, 'САРАФАН (СН 06)', '', '', '', '', '', '', '', 1, 7, 'data/products/ZIMA18/01524.jpg', 11, 1, '1860.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -23, 1, '2017-12-22 21:25:34', '2018-03-17 00:26:05', 203),
(215, 'Спідниця С-18', '', '', '', '', '', '', '', 1, 7, 'data/products/titul/Capture00045.jpg', 11, 1, '890.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -10, 0, '2016-08-11 14:46:20', '2017-11-08 18:31:52', 275),
(246, 'Блуза БЛ 31', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602139.jpg', 11, 1, '880.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2017-03-09 22:43:35', '2017-11-08 15:47:20', 285),
(223, 'Водолазка (СВ-01)', '', '', '', '', '', '', '', 1, 7, 'data/products/zima 17/01253_1.jpg', 11, 1, '450.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -12, 0, '2016-11-15 17:28:20', '2017-06-06 01:40:34', 115),
(224, 'Блуза БЛ-28', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/01144.jpg', 11, 1, '750.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -10, 1, '2016-11-15 18:06:25', '2017-10-09 14:17:15', 266),
(225, 'КАМІЗЕЛЬКА КА-13', '', '', '', '', '', '', '', 1, 7, 'data/products/zima 17/01376_1.jpg', 0, 1, '780.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -12, 0, '2016-11-15 18:26:29', '2018-03-17 00:19:51', 330),
(226, 'Спідниця С 29', '', '', '', '', '', '', '', 1, 7, 'data/products/vesna17/2017_02_2602227.jpg', 11, 1, '1070.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -19, 1, '2016-11-15 18:48:36', '2017-03-11 23:17:45', 240),
(227, 'Спідниця С-27', '', '', '', '', '', '', '', 1, 7, 'data/products/zima 17/01245.jpg', 11, 1, '660.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -3, 0, '2016-11-15 19:01:23', '2017-07-24 21:10:37', 215),
(282, 'КАМІЗЕЛЬКА КА 19', '', '', '', '', '', '', '', 1, 7, 'data/products/osen_zima17_18/Capture00144.jpg', 0, 1, '2880.0000', 0, 0, '2016-02-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -21, 1, '2017-09-19 21:53:48', '2017-09-20 23:46:53', 97),
(306, 'СУКНЯ П 30', '', '', '', '', '', '', '', 1, 7, 'data/products/VESNA 18/Kamizelka_01960.jpg', 11, 1, '1920.0000', 0, 0, '2015-08-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -30, 1, '2018-03-17 10:07:06', '2018-03-21 22:37:10', 16),
(231, 'Рубашка Р-29', '', '', '', '', '', '', '', 0, 7, 'data/products/zima 17/01284_1.jpg', 11, 1, '890.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, -7, 1, '2016-11-24 21:28:19', '2017-09-04 09:11:13', 272),
(232, 'Рубашка Р-30', '', '', '', '', '', '', '', 1, 7, 'data/products/zima 17/01303.jpg', 11, 1, '930.0000', 0, 0, '2015-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, -7, 1, '2016-11-24 21:39:51', '2017-11-08 15:52:21', 356);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_attribute`
--

TRUNCATE TABLE `oc_product_attribute`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  `meta_Title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_description`
--

TRUNCATE TABLE `oc_product_description`;
--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`, `meta_Title`) VALUES
(41, 3, 'БОДИ (Б-01)', '&lt;p&gt;Классическая белая рубашка боди с длинным рукавом. От линии плеча, по спинке и по переду, проходят рельефные швы, которые создают приталенный силуэт. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав ткани: хлопок &amp;nbsp;с добавлением&amp;nbsp; полиэстера&lt;/p&gt;\r\n', 'Купить рубашку боди на Камизельке, качество и стиль от украинского производителя. Доставка по Киеву Украине.', 'белая рубашка боди, хлопковая, одежда для офиса, деловая леди, что одеть на работу', 'боди,рубашка-боди,рубашка боди', 'Купить белую рубашку боди в Украине|Стильное качество от KAMIZELKA'),
(41, 2, 'БОДІ (Б-01)', '&lt;p&gt;Класична біла сорочка боді з довгим рукавом . Від лінії плеча, по переду і спинці, проходять рельєфні шви, що створюють приталений силует. &amp;nbsp;Боді по довжині регулюється еластичною вставкою&amp;nbsp; на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини: бавовна з додаванням &amp;nbsp;поліестеру&lt;/p&gt;\r\n', 'В майстерні Камізелька можна придбати сорочку боді білого кольору від украінського виробника. Якісне пошиття. Швидка доставка по Київу Україні', 'біла сорочка боді, для офісу, на роботу, для повсякденного образу, сорочка для ділової жінки', 'боді,сорочка-боді,сорочка боді, біле боді', 'Купити білу сорочку боді в Україні Києві|Стильна якість від KAMIZELKA'),
(41, 1, 'iMac', '&lt;div&gt;Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'imac, bodi b01, apple, bodi', '', ''),
(47, 3, 'БОДИ (Б-03)', '&lt;p&gt;Рубашка боди белая с черными воротником, планкой, манжетами и пуговицами. От линии плеча, по спинке и по переду, проходят рельефные швы, которые создают приталенный силуэт. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав ткани: хлопок &amp;nbsp;с добавлением&amp;nbsp; полиэстера&lt;/p&gt;\r\n', 'Рубашка боди из мастерской Камизелька станет основой для создания образа деловой и женственной леди. Контрастные детали подчеркнут свежесть кожи и безупречный макияж. ', 'Белая рубашка боди, с черным воротником  планкой манжетами, бело-черная рубашка комбидресс в Украине', 'Белая рубашка боди, белая рубашка с черным воротником, белая рубашка с черной планкой, белая рубашка с черными манжетами', 'Стильная белая рубашка боди с черным воротником недорого в Украине| Мастерская Камизелька'),
(47, 2, 'БОДІ (Б-03)', '&lt;p&gt;Сорочка боді білого кольору&amp;nbsp; з чорними коміром, планкою та манжетами. Від лінії плеча, по переду і спинці, проходять рельєфні шви, що створюють приталений силует. Боді по довжині регулюється еластичною вставкою&amp;nbsp; на гачках. &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини: бавовна з додаванням &amp;nbsp;поліестеру&lt;/p&gt;\r\n', 'Біла сорочка боді з майстерні Камізелька стане основою для створення образу жіночноі та водночас ділової леді. Контрастні деталі підкреслять свіжість та бездоганність вашого макіяжу.', 'Біла сорочка боді,з чорним коміром,  планкою та манжетами, сорочка комбідрес продаж в Україні', 'сорочка боді, біла жіноча сорочка з чорним коміром, біла сорочка з чорною планкою та манжетами', 'Стильна біла сорочка боді з чорним коміром недорого в Україні| Майстерня Камізелька'),
(47, 1, 'боди с вставкой из кружева', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you''re at the office&lt;/p&gt;\r\n', '', 'bodi s vstavkoy iz kruzheva, bodi b03, hewlett-packard, bodi', '', ''),
(75, 3, 'Блузка женская (арт. БЛ-01)', '&lt;p&gt;Легкая блуза без рукава с декоративной деталью спереди и застежкой на спинке. Силуэт полуприталенный.&amp;nbsp; Ремень в комплект не входит.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ткань: батист&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок&lt;/p&gt;\r\n\r\n&lt;p&gt;Определиться с размером: &lt;a href=&quot;http://kamizelka.in.ua/ru/size_grid.html&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#A9A9A9;&quot;&gt;РАЗМЕРНАЯ СЕТКА&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;color:#A9A9A9;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;На модели ещё представлено:&lt;/span&gt;&lt;span style=&quot;line-height: 1.6em; color: rgb(0, 0, 128);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;http://kamizelka.in.ua/ru/yubki/yubka-s-03.html&quot; style=&quot;line-height: 1.6em;&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#A9A9A9;&quot;&gt;ЮБКА С-03&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;hr /&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Купить блузу женскую на Камизельке, блузу, блузку для офиса, классическую женскую рубашку. Одежда от украинского производителя. ', 'рубашка женская, блуза без рукава, блуза для офиса, женская блуза', 'рубашка женская, блуза без рукава, блуза для офиса, женская блуза', 'Купить блузу женскую в Украине, блуза женская летняя, купить от украинского производителя'),
(75, 2, 'Блузка жіноча (арт. БЛ-01)', '&lt;p&gt;Блуза без рукава з декоративною деталлю&amp;nbsp; спереду&amp;nbsp; та застібкою на спинці. Силует напівприталений. Ремінь до комплекту не входить.&lt;/p&gt;\r\n\r\n&lt;p&gt;Тканина : батист.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад : &amp;nbsp;бавовна.&lt;/p&gt;\r\n\r\n&lt;p&gt;На моделі ще представлено: &lt;a href=&quot;http://kamizelka.in.ua/yubki/yubka-s-03.html&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;color:#A9A9A9;&quot;&gt;СПІДНИЦЯ С-03&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n', 'У майстерні Камізелька за доступними цінами Ви можете придбати  блузу для  офісу, яка стане вдалим доповненням до образу ділової леді', 'сорочка жіноча, блуза офісна, блуза для офісу, класична блуза', 'сорочка жіноча, блуза офісна, блуза для офісу, класична блуза', ''),
(75, 1, 'Блузка женская (арт. БЛ-01)', '', '', 'rubashka, rubashka r09, rubashki, bluzy', '', ''),
(98, 1, 'Корсаж (КЖ 01)', '', '', '', '', ''),
(295, 3, 'Синее платье с поясом в клеточку (П 28)', '&lt;p&gt;Платье синее в клеточку с широким поясом-завязкой&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'платье', ' платье синее в клеточку с широким поясом', 'платье', 'Платье мини'),
(295, 2, 'Синя сукня  в клітинку  з паском (П 28)', '&lt;p&gt;Сукня синя&amp;nbsp;в клітинку з широким поясом-зав''язкою&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'сукня', 'синя в клытинку сукня з широким паском', 'Сукня', 'Сукня міні'),
(295, 1, 'Синя сукня  в клітинку  з паском (П 28)', '', '', '', '', ''),
(300, 3, 'Свитер с горлом ягодный (СВ 02)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Вязаный теплый свитер с горлом из мягкой пряжи меринос.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'из мягкой пряжи', 'свитер из мягкой шерстяной пряжи', 'свитер', 'Вязаный теплый шерстяной свитер'),
(298, 3, 'Жилетка шерстяная черная (КА 22)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Теплая жилетка из плотной шерстяной ткани на подкладке с квадратными проймами.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'из плотной шерстяной ткани', 'жилетка с фигурной проймой', 'жилет, жилетка', 'Женская теплая жилетка '),
(298, 2, 'Камізелька вовняна чорна (КА 22)', '&lt;p&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px;&quot;&gt;Тепла камізелька з плотної вовняної тканини на підкладці с квадратними проймами.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100 % вовна&lt;/p&gt;\r\n', 'камізелька з теплої вовняної тканини', 'камізелька чорна з вовни', 'жилет, камізелька', 'Жіночий теплий жилет '),
(298, 1, 'Камізелька вовняна чорна (КА 22)', '', '', '', '', ''),
(299, 1, 'Камізелька вовняна сіра клітинка (КА 21)', '', '', '', '', ''),
(299, 3, 'Жилетка шерстяная серая клетка (КА 21)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Теплая жилетка из плотной шерстяной ткани на подкладке с квадратными проймами.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'из плотной шерстяной ткани', 'жилетка с фигурной проймой', 'жилет, жилетка', 'Женская теплая жилетка в клеточку'),
(299, 2, 'Камізелька вовняна сіра клітинка (КА 21)', '&lt;p&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px;&quot;&gt;Тепла камізелька з плотної вовняної тканини на підкладці с квадратними проймами.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100 % вовна&lt;/p&gt;\r\n', 'камізелька з теплої вовняної тканини', 'камізелька сіра з вовни', 'жилет, камізелька', 'Жіночий теплий жилет в клітинку'),
(300, 1, 'Светр з горлом ягідний (СВ 02)', '', '', '', '', ''),
(312, 3, 'Жилет черный / красная клетка (КА 24)', '&lt;p&gt;Жилет&amp;nbsp; удлиненный&amp;nbsp;с накладными карманами на подкладке, без застежки.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ткань - купон, низ черный, верх -красная клетка&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100 % шерсть&lt;/p&gt;\r\n', 'стильная женская удлиненная жилетка', 'жилет, жилетка, шерстяная', 'жилет', 'жилет из шерсти'),
(300, 2, 'Светр з горлом ягідний (СВ 02)', '&lt;p&gt;В''язаний теплий светр з горлом з м''якої пряжі меринос.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100 % вовна&lt;/p&gt;\r\n', 'светр теплий з м''якої пряжі', 'вовняний светр', 'светр', 'теплий вовняний светр'),
(49, 3, 'БОДИ (Б-02)', '&lt;p&gt;Классическая черная рубашка боди с длинным рукавом. От линии плеча, по спинке и по переду, проходят рельефные швы, которые создают приталенный силуэт. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав ткани: хлопок &amp;nbsp;с добавлением&amp;nbsp; полиэстера&lt;/p&gt;\r\n', 'Мастерская Камизелька предлагает дополнить Ваш гардероб черной рубашкой боди. У нас качественные изделия и быстрая доставка по Украине.', 'черная рубашка боди, с рельефными швами\r\nсилуэт прилегающий, рубашка комбидресс в Украине', 'боди, рубашка-боди, рубашка боди, черная рубашка боди', 'Рубашка боди черная прилегающая хлопковая |Качество от украинского производителя'),
(49, 2, 'БОДІ (Б-02)', '&lt;p&gt;Класична чорна сорочка боді з довгим рукавом. Від лінії плеча, по переду і спинці, проходять рельєфні шви, що створюють приталений силует. &amp;nbsp;Боді по довжині регулюється еластичною вставкою&amp;nbsp; на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини: бавовна з додаванням &amp;nbsp;поліестеру&lt;/p&gt;\r\n', 'Майстерня Камізелька пропонує поповнити Ваш гардероб чорною сорочкою боді. У нас якісні вироби та швидка доставка', 'сорочка боді, чорного кольору, з рел''єфними швами силует прилягаючий, сорочка комбідрес в Україні', 'боді, сорочка-боді, рубашка-боді, рубашка боді', 'Сорочка боді чорна прилягаюча бавовняна |Якість від українського виробника'),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n\r\n&lt;p&gt;Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', 'samsung galaxy tab 101, bodi b02, bodi', '', ''),
(51, 3, 'БОДИ (Б-06)', '&lt;p&gt;Рубашка боди серого цвета. Стойка воротника, внутренняя планка и планка на рукаве изготовлены из ткани с серо - синим принтом. От линии плеча, по спинке и по переду, проходят рельефные швы, которые создают приталенный силуэт. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Состав ткани: хлопок&amp;nbsp; с добавлением&amp;nbsp; полиэстера&lt;/span&gt;&lt;/p&gt;\r\n', 'Купить рубашку боди серого цвета Вы можете в мастеркой Камизелька. Рубашка боди стилизирована контрастным воротником, манжетами и планкой.', 'женская рубашка боди, серая под джинсы, с отделкой на воротнике, манжетах, рубашка комбидресс в Украине', 'женская рубашка боди, серая рубашка боди', 'Боди рубашка стильная серая под джинсы с отделкой на воротнике | Мода от КаМизельки'),
(51, 2, 'БОДІ (Б-06)', '&lt;p&gt;Сорочка боді сірого кольору. Стійка коміра, внутрішня планка та планка на рукаві виконані з тканини з сіро-синім принтом. Від лінії плеча по переду і спинці проходять рельєфні шви, що створюють приталений силует. &amp;nbsp;Боді по довжині регулюється еластичною вставкою&amp;nbsp; на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини: бавовна з додаванням &amp;nbsp;поліестеру&lt;/p&gt;\r\n', 'Купити сорочку боді сірого кольору Ви можете в майстерні Камізелька. Сорочка стилізована контрастним коміром , планкою та манжетами. Якісний товар-якісна доставка по Україні.', 'сіра жіноча сорочка боді, під джинси, сорочка комбідрес з декорованим коміром, манжетами, продаж в Україні', 'сорочка боді, боді, сорочка-боді, сіра жіноча сорочка боді, боді сорочка', 'Боді сорочка стильна сіра під джинси з декорованим коміром | Мода від КаМізельки'),
(97, 3, 'ПОДТЯЖКИ КРУЖЕВНЫЕ (ПО-02)', '&lt;p&gt;Кружевные подтяжки красный на черном с металлической фурнитурой. Подтяжки регулируются по длинне.&lt;/p&gt;\r\n', 'Купить подтяжки женские кружевные в Украине. Мастерская стиля Камизелька', 'женские подтяжки, кружевные женские подтяжки.', 'подтяжки женские, кружевные подтяжки, женские подтяжки, кружевные женские подтяжки.', ''),
(97, 2, 'ПІДТЯЖКИ МЕРЕЖЕВНІ (ПО-02)', '&lt;p&gt;Мереживні підтяжки червоний на чорному з металевою фурнітурою. Підтяжки регулюються по довжині.&lt;/p&gt;\r\n', 'Купити жіночі мережевні підтяжки. Майстерня стилю Камізелька.', 'підтяжки жіночі, мережевні жіночі підтяжки', 'підтяжки жіночі, мереживні підтяжки', ''),
(97, 1, 'ПІДТЯЖКИ жіночі (ПО-02)', '', '', '', '', ''),
(51, 1, 'Боди', '', '', 'bodi, bodi b06', '', ''),
(98, 3, 'Корсаж (КЖ 01)', '&lt;p&gt;Шерстяной корсаж в клеточку, сзади шнуровка, спереди застёжка на крючки&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'Корсаж из шерсти в клетку', 'корсаж на платье', 'корсаж', 'корсаж в клетку'),
(98, 2, 'Корсаж (КЖ 01)', '&lt;p&gt;Вовняний корсаж в клітинку, ззаду шнурування, спереду застібка на гачки&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'Корсаж з вовни в клітинку', 'корсаж на сукню спідницю', 'корсаж', 'корсаж в клітинку'),
(231, 1, 'Біла сорочка з мереживними вставками і потайною застібкою (арт. Р- 29)', '', '', '', '', ''),
(219, 1, 'СПІДНИЦЯ СМУГАСТА ВОВНЯНА (арт. С- 26)', '', '', '', '', ''),
(218, 3, 'ЮБКА ТРИКОТАЖНАЯ КЛЕШ (арт. С-25)', '&lt;p&gt;Юбка миди трикотажная клёш. В боковых швах карманы, застёжка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Юбка 2017 от Мастерской Камизелька', 'юбка трикотажная, юбка серая, юбка клеш, юбка миди, юбка с карманами в боковых швах', 'юбка', 'Серая юбка миди из серого трикотажа с косами'),
(218, 2, 'СПІДНИЦЯ ТРИКОТАЖНА КЛЬОШ (арт. С- 25)', '&lt;p&gt;Спідниця міді&amp;nbsp;трикотажна кльош. У бічних швах кишені, застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Спідниця 2017 від Майстерні Камізелька', 'спідниця трикотажна, спідниця сіра, спідниця кльош, спідниця міді, спідниця з кишенями у бічних швах', 'спідниця', 'Сіра спідниця міді з сірого трикотажу з косами'),
(218, 1, 'СПІДНИЦЯ ТРИКОТАЖНА КЛЬОШ (арт. С- 25)', '', '', '', '', ''),
(268, 3, 'САРАФАН лен застежка сбоку (СН 03)', '&lt;p&gt;Сарафан миди из льна натурального цвета&amp;nbsp;с накладными карманами. Застежка на пуговицы сбоку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% лен&lt;/p&gt;\r\n', 'Сарафан от Камизельки\r\n', 'сарафан,  летняя одежда украинских производителей, неотбеленный лен', 'сарафан', 'сарафан натуральный лен'),
(268, 2, 'Сарафан льон застібка збоку (СН 04)', '&lt;p&gt;Сарафан міді з льону натурального кольору з накладними кишенями. Застібка на гудзики збоку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', 'Сарафан від Камізельки', 'сарафан,  сарафан  українських виробників', 'сврафан', 'сарафан натуральний льон'),
(268, 1, 'Сарафан льон застібка збоку (СН 04)', '', '', '', '', ''),
(272, 3, 'Майка трикотаж цветная полоска  (МА 01)', '&lt;p&gt;Майка трикотажная в цветную полосочку&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Майка 2017', 'Цветная полоска', 'майка', 'Майка полосатая'),
(272, 2, 'Майка трикотаж кольорова смужка (МА 01)', '&lt;p&gt;Майка трикотажна в кольорову смужку&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'Майка 2017', 'Кольорова смужка', 'Блуза', 'Майка смугаста'),
(269, 3, 'Топ с рукавчиком белый (ТП 04)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Кроп топ белый с маленьким&amp;nbsp;рукавчиком&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px;&quot;&gt;Состав: 80%- хлопок, 20% - пэ.&lt;/span&gt;&lt;/p&gt;\r\n', 'Топ 2017 белый хлопковый', 'топ светлый, с маленьким рукавом ', 'топ', 'кроп топ белый'),
(269, 2, ' Топ з рукавцем білий (ТП 04)', '&lt;p&gt;Кроп топ білий з маленьким рукавцем&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%- бавовна, 20% - пэ.&lt;/p&gt;\r\n', 'Топ 2017 білий бавовняний', 'топ світлий, з маленьким рукавом', 'топ', 'кроп топ білий'),
(269, 1, 'Топ з рукавцем білий (ТП 04)', '', '', '', '', ''),
(272, 1, 'Майка трикотаж кольорова смужка (МА 01)', '', '', '', '', ''),
(273, 1, 'Топ з рукавцем білий (ТП 03)', '', '', '', '', ''),
(270, 3, 'ЮБКА на пуговицах геометрия ( С 32)', '&lt;p&gt;Летняя с геометрическим принтом юбка миди,&amp;nbsp;с боковыми карманами, на пуговицах, пояс на талии&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;хлопок, пе&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Хлопкова юбка с принтом', 'юбка миди,  с карманами', 'юбка', 'Летняя хлопковая юбка на пуговицах'),
(270, 2, 'СПІДНИЦЯ на гудзиках геометрія ( С 32)', '&lt;p&gt;Літня з геометричним принтом спідниця міді, з бічними кишенями, на гудзиках, пояс на талії&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна, пе&lt;/p&gt;\r\n', 'Бавовняна спідниця з принтом', 'спідниця міді, з кишенями', 'спідниця', 'Літня бавовняна спідниця на гудзиках'),
(270, 1, 'СПІДНИЦЯ на гудзиках геометрія ( С 32)', '', '', '', '', ''),
(271, 3, 'Шарф лен желтый с серым', '&lt;p&gt;Шарф из льна&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% лен&lt;/p&gt;\r\n', '', '', 'шарф', ''),
(271, 2, 'Шарф з льону жовтий з сірим', '&lt;p&gt;Шарф з льону&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', '', '', 'шарф', ''),
(271, 1, 'Шарф з льону жовтий з сірим', '', '', '', '', ''),
(273, 3, 'Топ с рукавчиком полевые цветы(ТП 03)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Кроп топ полевые цветы с маленьким&amp;nbsp;рукавчиком&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px;&quot;&gt;Состав: 97%- хлопок, 3% - пэ.&lt;/span&gt;&lt;/p&gt;\r\n', 'Топ 2017  хлопковый', 'топ светлый, с маленьким рукавом ', 'топ', 'кроп топ '),
(120, 3, 'БОДИ (Б-11)', '&lt;p&gt;Рубашка боди молочного цвета с длинным рукавом. Рукава и фигурная кокетка выполнены из кружева в цвет рубашки, манжеты и воротник из основной ткани. На пуговицу воротника пристегивается съемное жабо. Спереди потайная застежка на пуговицы.Боди по длине регулируется эластичной вставкой на крючочках. Рисунок кружева может меняться.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: основная ткань - хлопок&amp;nbsp; с пэ, кружево-пэ&lt;/p&gt;\r\n', 'Купить рубашку боди бежевую с кружевом,  с  кокеткой, украинского производства. Доставка по Украине.', 'изящная рубашка боди, бежевая с кружевом, молочного цвета, с жабо', 'рубашка боди цвета слоновой кости, рубашка с кружевными вставками, легкая кружевная рубашка, рубашка со съемным жабо', 'Благородная кружевная стильная рубашка боди 2015 в Украине | Бренд КаМизелька'),
(120, 2, 'БОДІ (Б-11)', '&lt;p&gt;Сорочка боді молочного кольору з довгим рукавом.&amp;nbsp; Рукава та фігурна кокетка виконані &amp;nbsp;з мережива в колір сорочки, манжети і комір з основної тканини. На ґудзик коміра пристібається знімне жабо. Спереду потайна застібка на ґудзики.&amp;nbsp;Боді по довжині регулюється еластичною вставкою на гачках. Малюнок мережива може змінюватись.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Склад: основна тканина-хлопок з пе, мереживо -пе&lt;/span&gt;&lt;/p&gt;\r\n', 'Купити сорочку боді бежеву з мереживом, і українського виробництва. Доставка по Україні.', 'шляхетна сорочка боді,бежева з мереживом,  молочного кольору з жабо', 'мережевна сорочка боді, сорочка комбідрес, жіноча сорочка з мережевними вставками', 'Шляхетна мереживна стильна сорочка боді 2015 в Україні | Бренд КаМізелька'),
(120, 1, 'БОДІ (Б-11)', '', '', '', '', ''),
(233, 3, 'СНУД (СН-01)', '&lt;p&gt;Серое снуд из вязаного трикотажа .&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Трикотажный снуд с вязаными косами', '', 'снуд', 'Купить снуд из новой коллекции зима 2017 от Мастерской Камизелька'),
(233, 2, 'СНУД (СН-01)', '&lt;p&gt;Сірй снуд з трикотажу з косами&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Трикотажий снуд з в''язаними косами', '', 'снуд', 'Купити снуд з нової колекції зима 2017 від Майстерні Камізелька'),
(233, 1, 'СНУД (СН-01)', '', '', '', '', ''),
(267, 2, 'Сукня міді польові квітки ( П 24)', '&lt;p&gt;Сукня міді з квітковим принтом. Виріз горловини і пройми декоровані кольоровими бейками&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна&lt;/p&gt;\r\n', 'маленька світла сукня Камізелька', 'світла сукня, сукня з кольорами', 'Сукня', 'Купити сукню бавовняну літо 2017 від Майстерні Камізелька'),
(234, 3, 'ПЛАТЬЕ ТРИКОТАЖНОЕ А-силуэт (П-16)', '&lt;p&gt;Платье из трикотажа двух оттенков серого.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Трикотажное платье А силуэта', 'платье трикотажное, платье серое, платье с косами, платье до колена', 'платье', 'Купить платье из новой коллекции зима 2017 от Мастерской Камизелька'),
(234, 2, 'СУКНЯ ТРИКОТАЖНА А-силует (П- 16)', '&lt;p&gt;Сукня з трикотажу двох відтінків сірого.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Трикотажна сукня А силуету', 'сукня трикотажна, сукня сіра, сукня з косами, сукня до коліна', 'Сукня', 'Купити теплу сукню з нової колекції ЗИМА 2017!'),
(234, 1, 'СУКНЯ ТРИКОТАЖНА А-силуэт (П- 16)', '', '', '', '', ''),
(273, 2, ' Топ з рукавцем польові квіти (ТП 03)', '&lt;p&gt;Кроп топ польові квіти з маленьким рукавцем&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 97%- бавовна, 3% - пе.&lt;/p&gt;\r\n', 'Топ 2017  бавовняний', 'топ світлий, з маленьким рукавом', 'топ', 'кроп топ '),
(235, 3, 'платье - рубашка шампань (П 18)', '&lt;p&gt;Свободное платье рубашка с цельнокроеным рукавом и застежкой поло с бархатным поясом&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: пэ&lt;/p&gt;\r\n', 'платье рубашка белое', ' платье до колена, платье рубашка, ', 'платье', 'Купить платье из новой коллекциивесна 2017 от Мастерской Камизелька'),
(235, 2, 'сукня - сорочка шампань (П 18)', '&lt;p&gt;Вільна сукня сорочка з суцільнокроєним рукавом і застібкою поло з оксамитовим поясом&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: пе&lt;/p&gt;\r\n', 'сукня з суцільнокроєним рукавом', 'сукня до коліна', 'Сукня', 'Купити сукню сорочку'),
(235, 1, 'сукня сорочка синя (П 18)', '', '', '', '', ''),
(254, 2, 'КАМІЗЕЛЬКА СІРА  з накладними кишенями (КА 14)', '&lt;p&gt;Сіра камізелька з трикотажу і тканини &amp;nbsp;з накладними кишенями, поясом, на підкладці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: вовна, віскоза, пе&lt;/p&gt;\r\n', 'Жіноча камізелька від українського виробника Камізелька, купити Київ Україна', 'жилет жіночий сірий, теплий жіночий жилет українського виробництва', 'жилет, камізелька', 'Жіноча сіра камізелька з трикотажу і тканини'),
(236, 3, 'платье - рубашка кораловое (П 19)', '&lt;p&gt;Свободное платье рубашка с цельнокроеным рукавом и застежкой поло с бархатным поясом&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав:&amp;nbsp;пэ&lt;/p&gt;\r\n', 'платье рубашка белое', ' платье до колена, платье рубашка, ', 'платье', 'Купить платье из новой коллекциивесна 2017 от Мастерской Камизелька'),
(236, 2, 'сукня - сорочка коралова (П 19)', '&lt;p&gt;Вільна сукня сорочка з суцільнокроєним рукавом і застібкою поло з оксамитовим поясом&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад:&amp;nbsp;пе&lt;/p&gt;\r\n', 'сукня з суцільнокроєним рукавом', 'сукня до коліна', 'Сукня', 'Купити сукню сорочку'),
(236, 1, 'сукня сорочка синя (П 19)', '', '', '', '', ''),
(237, 3, 'блуза сиренево-розовая с мини воротничком  (БЛ 29)', '&lt;p&gt;Легкая свободная блуза нежного сиренево-розового цвета с длинными пышными рукавами ,мини воротничком и двумя большими карманами на груди.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'легкая сиренево-розовая блуза с маленьким воротничком и пышным рукавом', 'легкая блуза, кремовая блузка, блуза с маленьким воротничком', 'блуза', 'легкая свободна блуза '),
(237, 2, 'блуза бузково-рожева з міні комірцем   (БЛ 29)', '&lt;p&gt;Легка вільна блуза ніжного бузково-рожевого кольору з довгими пишними рукавами,міні комірцем і двома великими кишенями на грудях.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'легка бузково-рожева блуза з маленьким комірцем і пишним рукавом', 'легка блуза, кремова блуза, блуза з маленьким комірцем', 'Блуза', 'Легка вільна блуза'),
(237, 1, 'блуза бузково-рожева з міні комірцем   (БЛ 29)', '', '', '', '', ''),
(238, 3, 'ЮБКА СИНЯЯ кружевная ( С 30)', '&lt;p&gt;Кружевная юбка миди насыщенного синего цвета с боковыми карманами, на подкладке. Застежка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Синяя кружевная юбка на подкладке из коллекции ВЕСНА 2017 от Мастерской Камизелька', 'юбка синяя, юбка миди, кружевная, на подкладке, с карманами', 'юбка', 'Кружевная юбка насыщенного синего цвета на подкладке'),
(238, 2, 'СПІДНИЦЯ СИНЯ мереживна ( С 30)', '&lt;p&gt;Мереживна спідниця міді насиченого синього кольору з бічними кишенями, на підкладці. Застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Синя мереживна спідниця на підкладці з колекції ВЕСНА 2017 від Майстерні Камізелька', 'спідниця синя, спідниця міді, мереживна, на підкладці, з кишенями', 'спідниця', 'Мереживна спідниця насиченого синього кольору на підкладці'),
(238, 1, 'СПІДНИЦЯ СИНЯ мереживна ( С 30)', '', '', '', '', ''),
(253, 3, 'ЖИЛЕТКА СЕРАЯ с шалевым воротником (КА 15)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Серая жилетка из&amp;nbsp;трикотажа &amp;nbsp;и ткани с удлиненной спинкой,&amp;nbsp;на подкладке.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Состав: шерсть, вискоза, пе&lt;/p&gt;\r\n', 'Женская жилетка от украинского производителя Камизелька, купить Киев Украина', 'жилет женский серый, теплая женская жилетка украинского производства', 'жилет, жилетка', 'Женская серая жилетка из  трикотажа и ткани'),
(239, 3, 'черное платье с кружевным подолом (П 21)', '&lt;p&gt;Черное платье под пояс &amp;nbsp;с кружевным подолом. Горловина фигурная, платье на подкладке.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'маленькое черное платье Камизелька', 'черное платье, платье с кружевом, с фигурным вырезом', 'платье', 'Купить платье в бельевом стиле из новой коллекции весна 2017 от Мастерской Камизелька'),
(239, 2, 'чорна сукня з мереживним подолом (П 21)', '&lt;p&gt;Чорна сукня під пояс &amp;nbsp;з мереживним подолом. Горловина фігурна, сукня на підкладці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'маленька чорна сукня Камізелька', 'чорна сукня, сукня з мереживом, з фігурним вирізом', 'Сукня', 'Купити сукню  з нової колекції весна 2017 від Майстерні Камізелька'),
(239, 1, 'чорна сукня з мереживним подолом (П 21)', '', '', '', '', ''),
(254, 3, 'ЖИЛЕТКА СЕРАЯ с накладными карманами (КА 14)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Серая жилетка из&amp;nbsp;трикотажа &amp;nbsp;и ткани с накладными карманами,&amp;nbsp;поясом,&amp;nbsp;на подкладке.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Состав: шерсть, вискоза, пе&lt;/p&gt;\r\n', 'Женская жилетка от украинского производителя Камизелька, купить Киев Украина', 'жилет женский серый, теплая женская жилетка украинского производства', 'жилет, жилетка', 'Женская серая жилетка из  трикотажа и ткани'),
(240, 3, 'рубашка белая с большим карманом (Р 33)', '&lt;p&gt;Белая рубашка свободного кроя с большим декоративным карманом &quot;в рамку&quot;, спереди и на спинке отлетная кокетка, низ рубашки фигурный&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80% хлопок, 20% пэ&lt;/p&gt;\r\n', 'Женская белая свободная рубашка с карманом и фигурным низом', 'рубашка с потайной застёжкой и кокеткой', 'рубашка женская', 'Женская белая рубашка с большим декоративным карманом'),
(240, 2, 'сорочка біла з великою кишенею (Р 33)', '&lt;p&gt;Біла сорочка вільного крою з великою декоративною кишенею &quot;в рамку&quot;, спереду і на спинці відлітна кокетка, низ сорочки фігурний&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%&amp;nbsp;бавовна, 20%&amp;nbsp;пе&lt;/p&gt;\r\n', 'Жіноча біла вільна сорочка з кишенею і фігурним низом', 'сорочка з потайною застібкою і кокеткою', 'сорочка жіноча', 'Жіноча біла сорочка з великою декоративною кишенею'),
(240, 1, 'сорочка біла з великою кишенею (Р 33)', '', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`, `meta_Title`) VALUES
(252, 2, 'Сорочка боді сіро-біла смужка у &quot;крапочку&quot; (арт. Б- 17/1)', '&lt;p&gt;Сорочка боді з потайною застібкою на гудзики . Силует сорочки боді - напівприталений. &amp;nbsp;Боді по довжині регулюється еластичною вставкою на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини : бавовна &amp;nbsp;з додаванням &amp;nbsp;поліестеру.&lt;/p&gt;\r\n', 'Доречна і в офісі, і на прогулянці!', 'купити чорну сорочку боді, з потайною застібкою, в сіру смужку, з білим коміром', ' сорочка боді', 'Купити сорочку боді в сіру смужку'),
(254, 1, 'КАМІЗЕЛЬКА СІРА  з накладними кишенями (КА 14)', '', '', '', '', ''),
(255, 1, 'Кораловая спідниця міді із запахом ( С 23/5)', '', '', '', '', ''),
(241, 3, 'САРАФАН черный кружевной (СН 02)', '&lt;p&gt;Сарафан черный кружевной на подкладке.&amp;nbsp;На спинке потайная молния. В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: пе&lt;/p&gt;\r\n', 'Сарафан от Камизельки\r\n', 'сарафан,  сарафан кружевной черный, одежда украинских производителей', 'сарафан', 'сарафан кружевной черный'),
(241, 2, 'САРАФАН чорний мереживний (СН 02)', '&lt;p&gt;Сарафан чорний мереживний на підкладці. На спинці потайна блискавка. В бічних швах кишені.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: пе&lt;/p&gt;\r\n', 'Сарафан від Камізельки', 'сарафан,  сарафан мереживний чорний, одяг українських виробників', 'сврафан', 'сарафан мереживний чорний'),
(241, 1, 'САРАФАН чорний мереживний (СН 02)', '', '', '', '', ''),
(242, 3, ' Платье мини с кружевным подолом шампань (П 22)', '&lt;p&gt;Маленькое платье цвета &quot;шампань&quot; с кружевным подолом и V образной кружевной всавкой.&amp;nbsp;Платье на подкладке.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'маленькое белое платье Камизелька', 'светлое платье, платье с кружевом, с фигурным вырезом', 'платье', 'Купить платье в бельевом стиле из новой коллекции весна 2017 от Мастерской Камизелька'),
(242, 2, 'плаття міні з мереживним подолом шампань (П 22)', '&lt;p&gt;Маленька сукня кольору &quot; шампань&quot; з мереживним подолом і V образною мереживною всавкою. Сукня на підкладці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'маленька біла сукня Камізелька', 'світла сукня, сукня з мереживом, з фігурним вирізом', 'Сукня', 'Купити сукню  з нової колекції весна 2017 від Майстерні Камізелька'),
(242, 1, 'плаття міні з мереживним подолом шампань (П 22)', '', '', '', '', ''),
(243, 3, 'платье черное кружевное с асимметричным низом (П 17/2)', '&lt;p&gt;Черное платье из кружева на бежевой подкладке с ассиметричным низом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Платье кружевное черное', 'платье, кружевное платье, черное платье, удлиненное сзади', 'платье', 'Женственное кружевное платье купить  в Украине'),
(243, 2, 'сукня чорна мереживна з асиметричним низом (П 17/2)', '&lt;p&gt;Чорна сукня з мережива на бежевій підкладці з ассиметричним низом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Сукня мереживна чорна', 'сукня, мереживна сукня, чорна сукня, подовжена ззаду', 'Сукня', 'Жіночну мереживну сукню купити  в Україні'),
(243, 1, 'сукня чорна мереживна з асиметричним низом (П 17/2)', '', '', '', '', ''),
(253, 2, 'КАМІЗЕЛЬКА СІРА  з шалевим коміром (КА 15)', '&lt;p&gt;Сіра камізелька з трикотажу і тканини з подовженою спинкою, на підкладці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: вовна, віскоза, пе&lt;/p&gt;\r\n', 'Жіноча камізелька від українського виробника Камізелька, купити Київ Україна', 'жилет жіночий сірий, теплий жіночий жилет українського виробництва', 'жилет, камізелька', 'Жіноча сіра камізелька з трикотажу і тканини'),
(244, 3, 'платье черное кружевное с асимметричным низом (П 17/1)', '&lt;p&gt;Черное платье из кружева на &amp;nbsp;с ассиметричным низом, частично на подкладке.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Платье кружевное черное', 'платье, кружевное платье, черное платье, удлиненное сзади', 'платье', 'Женственное кружевное платье купить  в Украине'),
(244, 2, 'сукня чорна мереживна з асиметричним низом (П 17/1)', '&lt;p&gt;Чорна сукня з мережива &amp;nbsp;з ассиметричним низом, частково на підкладці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Сукня мереживна чорна', 'сукня, мереживна сукня, чорна сукня, подовжена ззаду', 'Сукня', 'Жіночну мереживну сукню купити  в Україні'),
(244, 1, 'сукня чорна мереживна з асиметричним низом (П 17/1)', '', '', '', '', ''),
(245, 1, 'СПІДНИЦЯ СИНЯ З ВОЛАНОМ (арт. С- 28)', '', '', '', '', ''),
(245, 2, 'СПІДНИЦЯ СИНЯ З ВОЛАНОМ (арт. С- 28)', '&lt;p&gt;Спідниця синя з воланом, застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Синя спідниця з воланом з колекції ЗИМА 2017 від Майстерні Камізелька', 'спідниця синя, спідниця з воланом, офісна', 'спідниця', 'Спідниця з воланом по низу'),
(245, 3, 'ЮБКА СИНЯЯ С ВОЛАНОМ (арт. С-28)', '&lt;p&gt;Юбка синяя с воланом, застёжка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Синяя юбка с воланом из коллекции ЗИМА 2017 от Мастерской Камизелька', 'юбка синяя, юбка с воланом, офисная, ', 'юбка', 'Юбка с воланом по низу'),
(226, 1, 'спідниця чорна мереживна із складками ( С 29)', '', '', '', '', ''),
(253, 1, 'КАМІЗЕЛЬКА СІРА  з шалевим коміром (КА 15)', '', '', '', '', ''),
(246, 3, 'блуза с кружевной баской шампань  (БЛ 31)', '&lt;p&gt;Блуза с кружевным передом на подкладке и кружевной баской &quot;на просвет&quot;. Застежка на пуговицы&amp;nbsp;на спинке, рукава 3/4.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'светлая блуза цвета шампань с кружевным передом и баской напросвет', 'легкая блуза, кремовая блузка, блуза с баской', 'блуза', 'Легкая и комфортная блуза с кружевной баской и передом'),
(246, 2, 'блуза с мереживною баскою шампань (БЛ 31)', '&lt;p&gt;Блуза з мереживним передом на підкладці і мереживною баскою &quot;на просвіт&quot;. Застібка на гудзики на спинці, рукави 3/4.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'світла блуза кольору шампань з мереживним передом і прозорою баскою', 'легка блуза, кремова блуза, блуза з баскою', 'Блуза', 'Легка і комфортна блуза з мереживною баскою і передом'),
(246, 1, 'блуза с мереживною баскою шампань (БЛ 31)', '', '', '', '', ''),
(247, 3, 'Топ с удлиненной спинкой и &quot;разрезами&quot; на рукавах (ТП 02)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Топ цвета шампань с рукавом 3/4, удлиненной спинкой и &quot; разрезами&quot; на рукавах&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Склад: пе&lt;/p&gt;\r\n', 'Рукав 3/4, светлый топ, удлиненная спинка', 'топ светлый, с рукавом 3/4, с удлиненной спинкой, &quot;разрезами&quot; на рукавах', 'топ', 'Топ цвета шампань с рукавом 3/4 и удлиненной спинкой'),
(247, 2, ' Топ з подовженою спинкою і &quot;розрізами&quot; на рукавах (ТП 02)', '&lt;p&gt;Топ кольору шампань з рукавом 3/4, подовженої спинкою і &quot;розрізами&quot; на рукавах&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: пе&lt;/p&gt;\r\n', 'Рукав 3/4, світлий топ, подовжена спинка', 'топ світлий, з рукавом 3/4, з подовженою спинкою, &quot;розрізами&quot; на рукавах', 'топ', 'Топ кольору шампань з рукавом 3/4 і подовженою спинкою'),
(247, 1, 'Топ з подовженою спинкою і &quot;розрізами&quot; на рукавах (ТП 02)', '', '', '', '', ''),
(255, 2, 'Кораловая спідниця міді із запахом ( С 23/5)', '&lt;p&gt;Кораловая спідниця із складками і глибоким запахом ззаду. У бічних швах кишені, застібка - два гудзики&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: поліестер, віскоза з додаванням эластану.&lt;/p&gt;\r\n', 'Коралова спідниця в складку із запахом, довжина за коліно', 'купити спідницю Камізелька, в Україні, Києві, чорну із запахом', 'спідниця', 'Спідниця кораловая міді із складками і запахом'),
(248, 3, 'Рубашка боди белая с репсовой лентой (Б 19)', '&lt;p&gt;Рубашка боди с потайной застёжкой на пуговицы. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав ткани: 80% хлопок, 20% пе&lt;/p&gt;\r\n', 'Белая рубашка боди с репсовой ленточкой', 'купить  рубашку боди, с потайной застежкой, ', ' рубашка боди', 'Купить рубашку боди белую'),
(248, 2, 'Сорочка боді біла з репсовою стрічкою (Б 19)', '&lt;p&gt;Сорочка боді з потайною застібкою на гудзики. Боді по довжині регулюється еластичною вставкою на гачки.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини: 80% бавовна, 20% пе&lt;/p&gt;\r\n', 'Біла сорочка боді з репсовою стрічкою', 'купити сорочку боді, з потайною застібкою,', ' сорочка боді', 'Купити сорочку боді білу'),
(248, 1, 'Сорочка боді біла з репсовою стрічкою (Б 19)', '', '', '', '', ''),
(251, 3, 'Боди-топ  кружевной шампань (Б 18/3)', '&lt;p&gt;Боди-топ цвета шампань из ткани и кружева с укороченым рукавом. Боди по длине регулируется эластичной втавкой на крючках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Купить кружевной светлый топ', 'боди с кружевным топом', 'боди', 'Топ с нижним трикотажным боди| Бренд КаМизелька'),
(251, 2, 'Боді-топ мереживний шампань (Б 18/3)', '&lt;p&gt;Боді-топ кольору шампань з тканини і мережива з укороченим рукавом. Боді по довжині регулюється еластичною втавкой на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'Купити мереживний світлий топ', 'боді з мереживним топом', ' боді', 'Топ з нижнім трикотажним боді | бренд Камізелька'),
(251, 1, 'Боді-топ мереживний шампань (Б 18/3)', '', '', '', '', ''),
(255, 3, 'Кораловая юбка миди с запахом ( С 23/5)', '&lt;p&gt;Кораловая юбка со складками и глубоким запахом сзади. В боковых швах карманы, застежка - две пуговицы.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;полиэстер, вискоза с добавлением эластана.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Кораловая юбка в складку с запахом, длина за колено', 'купить юбку Камизелька, в Украине, Киеве, черную с запахом', 'юбка', 'Юбка кораловая миди со складками и запахом'),
(249, 3, 'Боди-топ черный кружевной (Б 18/1)', '&lt;p&gt;Боди-топ черный кружевной с укороченым рукавом. Боди по длине регулируется эластичной вчтавкой на крючках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Купить кружевной черный топ', 'боди с кружевным топом', 'боди', 'Кружевной черный топ с нижним трикотажным боди| Бренд КаМизелька'),
(249, 2, 'Боді-топ чорний мереживний (Б 18/1)', '&lt;p&gt;Боді-топ чорний мереживний з укороченим рукавом. Боді по довжині регулюється еластичною вставкою на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'Купити мереживний чорний топ', 'боді з мереживним топом', ' боді', 'Мереживний чорний топ з нижнім трикотажним боді | бренд Камізелька'),
(249, 1, 'Боді-топ чорний мереживний (Б 18/1)', '', '', '', '', ''),
(252, 1, 'Сорочка боді сіро-біла смужка з потайною застібкою (арт. Б- 17/1)', '', '', '', '', ''),
(266, 1, 'Сорочка двоколірна льон (Р 35)', '', '', '', '', ''),
(252, 3, 'Рубашка боди серо-белая полоска  в &quot;точечку&quot; (арт. Б-17/1)', '&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;Рубашка боди с потайной застёжкой на пуговицы .&amp;nbsp;Силуэт рубашки боди - полуприталенный.&amp;nbsp;Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Состав ткани: хлопок&amp;nbsp; с добавлением&amp;nbsp; полиэстера.&lt;/span&gt;&lt;/p&gt;\r\n', 'Уместная и в офисе, и на прогулке!', 'купить  рубашку боди, с потайной застежкой, в серую полоску, с белым воротником', ' рубашка боди', 'Купить рубашку боди в серую полоску'),
(250, 3, 'Боди-топ синий кружевной (Б 18/2)', '&lt;p&gt;Боди-топ синий кружевной с укороченым рукавом. Боди по длине регулируется эластичной вчтавкой на крючках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Купить кружевной синий топ', 'боди с кружевным топом', 'боди', 'Кружевной синий топ с нижним трикотажным боди| Бренд КаМизелька'),
(250, 2, 'Боді-топ синій мереживний (Б 18/2)', '&lt;p&gt;Боді-топ синій мереживний з укороченим рукавом. Боді по довжині регулюється еластичною вставкою на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'Купити мереживний синій топ', 'боді з мереживним топом', ' боді', 'Мереживний синій топ з нижнім трикотажним боді | бренд Камізелька'),
(250, 1, 'Боді-топ синій мереживний (Б 18/2)', '', '', '', '', ''),
(280, 3, 'Блузка белая батист ( БЛ 35)', '&lt;p&gt;Легкая блуза без рукава с декоративной деталью спереди и застежкой на спинке. &amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Ткань: батист&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% хлопок&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'Купить блузу женскую на Камизельке, блузу, блузку для офиса, классическую женскую рубашку. Одежда от украинского производителя. ', 'рубашка женская, блуза без рукава, блуза для офиса, женская блуза', 'рубашка женская, блуза без рукава, блуза для офиса, женская блуза', 'Купить блузу женскую в Украине, блуза женская летняя, купить от украинского производителя'),
(280, 2, 'Блузка біла батист ( БЛ 35)', '&lt;p&gt;Легка блуза без рукава з декоративною деталлю спереду і застібкою на спинці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Тканина: батист&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% бавовна&lt;/p&gt;\r\n', 'У майстерні Камізелька за доступними цінами Ви можете придбати  блузу для  офісу, яка стане вдалим доповненням до образу ділової леді', 'сорочка жіноча, блуза офісна, блуза для офісу, класична блуза', 'сорочка жіноча, блуза офісна, блуза для офісу, класична блуза', 'Купити блузу жіночу в Україні, блуза жіноча літня, купити від українського виробника'),
(280, 1, 'Блузка біла батист ( БЛ 35)', '', '', 'rubashka, rubashka r09, rubashki, bluzy', '', ''),
(281, 3, 'Жилетка шерстяная перед клетка (КА 18)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Жилетка шерстяная с поясом и карманами, спинка темно-синяя, перед в клетку&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'Жилетка  синяя клетка шерстяная', 'жилетка перед в клетку', 'жилет, жилетка', 'Женская теплая жилетка из шерсти'),
(281, 2, 'Камізелька вовняна перед клітинка (КА 18)', '&lt;p&gt;Камізелька вовняна&amp;nbsp;з паском&amp;nbsp;і кишенями, спинка темно-синя, перед в клітинку&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'Жилет синій клітина вовна', 'жилет перед в клітину', 'жилет, камізелька', 'Жіночий теплий жилет з вовни'),
(281, 1, 'Камізелька вовняна перед клітинка (КА 18)', '', '', '', '', ''),
(294, 1, 'Сіра сукня з паском (П 27)', '', '', '', '', ''),
(282, 3, 'Жилетка шерстяная синяя с карманами в клетку (КА 19)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Жилетка синяя шерстяная с поясом и карманами в клетку&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'Жилетка  синяя  шерстяная', 'жилетка перед в клетку', 'жилет, жилетка', 'Женская теплая жилетка из шерсти'),
(282, 2, 'Камізелька вовняна синя з кишенями в клітинку (КА 19)', '&lt;p&gt;Камізелька синя вовняна з паском і кишенями в клітинку&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'Жилет синій вовна', 'жилет перед в клітину', 'жилет, камізелька', 'Жіночий теплий жилет з вовни'),
(282, 1, 'Камізелька вовняна синя з кишенями в клітинку (КА 19)', '', '', '', '', ''),
(294, 3, 'Серое платье с поясом  (П 27)', '&lt;p&gt;Серое платье с широким поясом-завязкой&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'платье', 'серое платье с широким поясом', 'платье', 'Платье мини'),
(294, 2, 'Сіра сукня з паском (П 27)', '&lt;p&gt;Сіра сукня з широким паском-зав''язкою&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'сукня', 'сыра сукня з широким паском', 'Сукня', 'Сукня міні'),
(283, 3, 'Жилетка синяя в полоску с застёжкой на спине (КА 20)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Жилетка синяя в плоску с застёжкой на спине&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: вискоза, пе&lt;/p&gt;\r\n', 'Жилетка  синяя полосатая жилетка', 'жилетка с застежкой на спине', 'жилет, жилетка', 'Женская синяя жилетка в полоску'),
(283, 2, 'Камізелька синя в смужку із застібкою на спині (КА 20)', '&lt;p&gt;Камізелька синя&amp;nbsp;в смужку із застібкою на спині&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Жилет синій смугастий жилет', 'камізелька із застібкою на спинці', 'жилет, камізелька', 'Жіночий синій жилет в смужку'),
(283, 1, 'Камізелька синя в смужку із застібкою на спині (КА 20)', '', '', '', '', ''),
(284, 3, 'ЮБКА трикотажная серая с карманами ( С 33)', '&lt;p&gt;Темно-серая трикотажная юбка с карманами. Застежка на потайную молнию&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'трикотажная юбка с карманами', 'юбка миди,  с карманами', 'юбка', 'юбка темно-серая трикотажная'),
(284, 2, 'СПІДНИЦЯ трикотажна сіра з кишенями ( С 33)', '&lt;p&gt;Темно-сіра трикотажна спідниця з кишенями. Застібка на потайну блискавку&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'трикотажна спідниця з кишенями', 'спідниця міді, з кишенями', 'спідниця', 'спідниця темно-сіра трикотажна'),
(284, 1, 'СПІДНИЦЯ трикотажна сіра з кишенями ( С 33)', '', '', '', '', ''),
(285, 3, 'Блуза легкая белая  (БЛ 36)', '&lt;p&gt;Легкая свободная белая блуза&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: пэ.&lt;/p&gt;\r\n', 'легкая белая блуза ', 'легкая блуза, ', 'блуза', 'легкая свободна блуза '),
(285, 2, 'блуза легка біла (БЛ 36)', '&lt;p&gt;Легка вільна біла блуза&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад:пе&lt;/p&gt;\r\n', 'легка біла блуза ', 'легка блуза, ', 'Блуза', 'легка вільна блуза'),
(285, 1, 'блуза легка біла (БЛ 36)', '', '', '', '', ''),
(297, 2, 'Сарафан теплий сіра клітинка (СН 05)', '&lt;p&gt;Короткий теплий сарафан в клітинку&amp;nbsp;на подкладці, з&amp;nbsp;фігурними проймами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'Сарафан від Камізельки', 'зимовий теплий короткий сарафан', 'сарафан', 'сарафан теплий вовняний'),
(286, 3, 'Рубашка белая с двойной планкой (Р 36)', '&lt;p&gt;Свободная белая рубашка с двойной планкой&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-пэ&lt;/p&gt;\r\n', 'рубашка белая с двойной планкой', 'рубашка из хлопка', 'рубашка женская', 'Женская свободная белая рубашка'),
(286, 2, 'Сорочка біла з подвійною планкою (Р 36)', '&lt;p&gt;Вільна біла сорочка з подвійною планкою&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%-бавовна, 20%-пе&lt;/p&gt;\r\n', 'Сорочка біла з подвійною планкою', 'сорочка з бавовни', 'сорочка жіноча', 'Жіноча вільна біла сорочка'),
(286, 1, 'Сорочка біла з подвійною планкою (Р 36)', '', '', '', '', ''),
(290, 3, 'Блуза хлопковая в клетку  (БЛ 37)', '&lt;p&gt;Свободная хлопковая блуза в клетку с застежкой и баской на спине.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав:100% хлопок&lt;/p&gt;\r\n', 'блуза с баской', 'блуза с застежкой на спинке ', 'блуза', 'легкая свободна блуза из хлопка'),
(290, 2, 'Блуза бавовняна в клітину (БЛ 37)', '&lt;p&gt;Вільна бавовняна блуза в клітину із застібкою і баскою на спині.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% бавовна&lt;/p&gt;\r\n', ' блуза з баскою', 'блуза з застібкою на спинці', 'Блуза', 'легка вільна блуза з бавовни'),
(287, 3, 'Рубашка белая с фигурной планкой и окантованным карманом (Р 37)', '&lt;p&gt;Свободная белая рубашка с фигурной планкой и окантованным карманом&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-пэ&lt;/p&gt;\r\n', 'рубашка белая с двойной планкой', 'рубашка из хлопка', 'рубашка женская', 'Женская свободная белая рубашка'),
(287, 2, ' Сорочка біла з фігурною планкою та обрамленою кишенею (Р 37)', '&lt;p&gt;Сорочка біла з фігурною планкою та обрамленою кишенею&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%-бавовна, 20%-пе&lt;/p&gt;\r\n', 'Сорочка біла з подвійною планкою', 'сорочка з бавовни', 'сорочка жіноча', 'Жіноча вільна біла сорочка'),
(287, 1, ' Сорочка біла з фігурною планкою та обрамленою кишенею (Р 37)', '', '', '', '', ''),
(288, 3, 'Рубашка белая с голубым карманом (Р 38)', '&lt;p&gt;Свободная белая рубашка с вшитым голубым карманом&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-пэ&lt;/p&gt;\r\n', 'рубашка белая с двойной планкой', 'рубашка из хлопка', 'рубашка женская', 'Женская свободная белая рубашка'),
(288, 2, ' Сорочка біла з блакитною кишенею (Р 38)', '&lt;p&gt;Сорочка біла з фігурною планкою та вшитою блакитною кишенею&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%-бавовна, 20%-пе&lt;/p&gt;\r\n', 'Сорочка біла з подвійною планкою', 'сорочка з бавовни', 'сорочка жіноча', 'Жіноча вільна біла сорочка'),
(288, 1, ' Сорочка біла з кишенею (Р 38)', '', '', '', '', ''),
(290, 1, 'Блуза бавовняна в клітину (БЛ 37)', '', '', '', '', ''),
(297, 3, 'Сарафан теплый серая клетка (СН 05)', '&lt;p&gt;Короткий теплый сарафан в клетку на подкладке, с фигурными проймами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'Сарафан от Камизельки\r\n', 'зимний теплый короткий сарафан', 'сарафан', 'сарафан теплый шерстяной'),
(289, 3, 'Теплая серая юбка с карманами ( С 34)', '&lt;p&gt;Теплая серая &amp;nbsp;юбка с карманами на подкладке. Застежка на потайную молнию&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'миди юбка с карманами', 'юбка миди,  с карманами', 'юбка', 'юбка темно-серая теплая'),
(289, 2, 'Тепла сіра спідниця з кишенями (С 34)', '&lt;p&gt;Тепла сіра трикотажна спідниця з кишенями, на підклідці.&amp;nbsp;Застібка на потайну блискавку&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'спідниця з кишенями міді', 'спідниця міді, з кишенями', 'спідниця', 'спідниця сіра тепла'),
(289, 1, 'Тепла сіра спідниця з кишенями (С 34)', '', '', '', '', ''),
(291, 3, 'Теплая  юбка в клетку на бретелях ( С 35)', '&lt;p&gt;Теплая юбка в клетку с карманами на бретелях. Застежка на потайную молнию. Бретели съемные&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;100% шерсть&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'миди юбка с карманами', 'юбка миди,  с карманами', 'юбка', 'юбка  теплая'),
(291, 2, 'Тепла спідниця в клітинку на бретелях ( С 35)', '&lt;p&gt;Тепла спідниця в клітинку з кишенями на бретелях. Застібка на потайну блискавку. Бретелі відстібаються.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'спідниця з кишенями міді', 'спідниця міді, з кишенями', 'спідниця', 'спідниця сіра тепла'),
(291, 1, 'Тепла спідниця в клітину на бретелях ( С 35)', '', '', '', '', ''),
(292, 3, 'Платье розовое со шнуровкой (П 25)', '&lt;p&gt;Розовое платье миди со шнуровкой&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'розовое платье со шнуровкой', 'светлое платье, платье со шнуровкой', 'платье', 'Платье миди '),
(292, 2, 'Сукня рожева з шнуруванням (П 25)', '&lt;p&gt;Рожева сукня миди з шнуруванням&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Сукня рожева з шнуруванням', 'світла сукня, сукня з шнуруванням', 'Сукня', 'Сукня міді'),
(292, 1, 'Сукня рожева з шнуруванням (П 25)', '', '', '', '', ''),
(293, 3, 'Платье-рубашка шерсть с шелком  (П 26)', '&lt;p&gt;Платье-рубашка сбободное. Корсаж продаётся отдельно.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: шерсть с добавлением шелка&lt;/p&gt;\r\n', 'свободное платье-рубашка', 'светлое платье', 'платье', 'Платье миди '),
(293, 2, 'Сукня-сорочка вовна з шовком (П 26)', '&lt;p&gt;Сукня-сорочка вільна. Корсаж продається окремо.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: вовна з додаванням шовку&lt;/p&gt;\r\n', 'вільна сукня-сорочка', 'світла сукня', 'Сукня', 'Сукня міді'),
(293, 1, 'Сукня-сорочка вовна з шовком (П 26)', '', '', '', '', ''),
(313, 3, 'Платье черное длинный рукав с кружевными крылышками (П 33)', '&lt;p&gt;Черное платье с длинным рукавом.&lt;/p&gt;\r\n\r\n&lt;p&gt;В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;На спине V образный вырез.&lt;/p&gt;\r\n\r\n&lt;p&gt;Верх рукава открывает плечо и декорирован кружевным крылышком.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'платье с кружевом', 'платье кружево длинный рукав', 'платье', 'платье черное на поясе'),
(313, 2, 'Сукня чорна довгий рукав з мережевними крильцями (П 33)', '&lt;p&gt;Чорна&amp;nbsp;сукня з довгим рукавом. У бічних швах кишені. На спині V образний виріз. Верх рукава відкриває плече і декорований мереживним крильцем.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'сукня з мережевом', 'сукня мереживо довгий рукав', 'Сукня', 'сукня чорна з паском'),
(313, 1, 'Сукня чорна довгий рукав з мережевними крильцями (П 33)', '', '', '', '', ''),
(314, 3, 'Юбка светлая на пуговицах ( С 39)', '&lt;p&gt;Светлая юбка с застежкой на пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Контрастные коричневые пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Один накладной карман.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'светлая юбка на пуговицах', 'юбка весна', 'юбка', 'юбка  на пуговицах'),
(314, 2, 'Спідниця світла на гудзиках ( С 39)', '&lt;p&gt;Світла спідниця із застібкою на гудзики. Контрастні коричневі гудзики.&lt;/p&gt;\r\n\r\n&lt;p&gt;Одна накладна кишеня.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'світла спідниця на гудзиках', 'спідниця весна', 'спідниця', 'спідниця на гудзиках'),
(314, 1, 'Спідниця світла на гудзиках ( С 39)', '', '', '', '', ''),
(315, 3, 'Юбка серая с запахом ( С 38)', '&lt;p&gt;Серая юбка с зафиксированным запахом&lt;/p&gt;\r\n\r\n&lt;p&gt;Застежка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'серая классическая юбка', 'юбка весна', 'юбка', 'юбка  с запахом'),
(315, 2, 'Спідниця сіра з запахом ( С 38)', '&lt;p&gt;Сіра спідниця із зафіксованим запахом. Застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'сіра класична спідниця', 'спідниця весна', 'спідниця', 'спідниця з запахом'),
(315, 1, 'Спідниця сіра з запахом ( С 38)', '', '', '', '', ''),
(317, 3, 'Блуза молочная кружевная  (БЛ 38)', '&lt;p&gt;Свободная молочная кружевная блуза в клетку с застежкой&amp;nbsp; на спине.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав:100% пе&lt;/p&gt;\r\n', 'блуза ', 'блуза с застежкой на спинке ', 'блуза', 'легкая свободна блуза из кружева'),
(317, 2, 'Блуза молочна мереживна (БЛ 38)', '&lt;p&gt;Вільна молочна блуза з мережива із застібкою&amp;nbsp; на спині.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% пе&lt;/p&gt;\r\n', ' блуза ', 'блуза з застібкою на спинці', 'Блуза', 'легка вільна блуза з мережива'),
(316, 3, 'Рубашка в полоску / диагональ (Р 39)', '&lt;p&gt;Свободная&amp;nbsp; рубашка в синюю полоску с диагональной вставкой спереди и декоративными манжетами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-пэ&lt;/p&gt;\r\n', 'рубашка ', 'рубашка из хлопка в полоску', 'рубашка женская', 'Женская свободная  рубашка'),
(316, 2, 'Сорочка смужка / діагональ (Р 39)', '&lt;p&gt;Сорочка біла з фігурною планкою та вшитою блакитною кишенею&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%-бавовна, 20%-пе&lt;/p&gt;\r\n', 'Сорочка жіноча', 'сорочка з бавовни', 'сорочка жіноча', 'Жіноча вільна біла сорочка'),
(316, 1, 'Сорочка смужка / діагональ (Р 39)', '', '', '', '', ''),
(317, 1, 'Блуза молочна мереживна (БЛ 38)', '', '', '', '', ''),
(301, 3, 'Свитер спинка клетка (СВ 04)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Теплый шерстяной свитер, перед трикотажное шерстяное полотно, спинка шерстяная ткань в клетку. Рукав широкий с манжетом укороченный.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'свитер оверсайз', 'теплій свитер микс ткани и трикотажа', 'свитер', 'теплый шерстяной свитер'),
(301, 2, 'Светр спинка клітинка (СВ 04)', '&lt;p&gt;Теплий вовняний светр, перед трикотажне вовняне полотно, спинка вовняна тканина в клітину. Рукав широкий з манжетою укорочений.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100 % вовна&lt;/p&gt;\r\n', 'светр теплий мікс трикотажу та тканини', 'вовняний светр', 'светр', 'теплий вовняний светр'),
(301, 1, 'Светр спинка клітинка (СВ 04)', '', '', '', '', ''),
(305, 3, 'Платье из тонкой шерсти на запах серое (П 29)', '&lt;p&gt;Серое платье на запах с поясом.&lt;/p&gt;\r\n\r\n&lt;p&gt;В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Застежка на 2 пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Воротник шалевый.&lt;/p&gt;\r\n\r\n&lt;p&gt;Рукав 3/4 с декоративным &quot;разрезом&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'платье на запах', ' платье серое на запах с поясом', 'платье', 'шерстяное платье'),
(302, 3, 'Гольф с люрексом (СВ 03)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Гольф из мягкого серого трикотажа с люрексом&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав:&amp;nbsp;&lt;/p&gt;\r\n', 'трикотажный гольф с люрексом', 'гольф серебристого цвета', 'свитер', 'легкий гольф с люрексом'),
(302, 2, 'Гольф з люрексом (СВ 03)', '&lt;p&gt;Гольф з м''якого сірого трикотажу з люрексом&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад:&lt;/p&gt;\r\n', 'гольф з люрексом', 'сірий гольф з люрексом', 'светр', 'сірий гольф з люрексом'),
(302, 1, 'Гольф з люрексом (СВ 03)', '', '', '', '', ''),
(305, 1, 'Сукня з тонкої вовни на запах сіра (П 29)', '', '', '', '', ''),
(305, 2, 'Сукня з тонкої вовни на запах сіра (П 29)', '&lt;p&gt;Сіра сукня на запах з паском. У бічних швах кишені. Застібка на 2 гудзики. Комір шалевий. Рукав 3/4 з декоративним &quot;розрізом&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'сукня на запах', 'Сукня з тонкої вовни на запах сіра', 'Сукня', 'сукня з вовни'),
(303, 3, 'Теплая  юбка клетка красная ( С 36)', '&lt;p&gt;Теплая юбка в клетку А силуэт. Застежка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;100% шерсть&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'теплая шерстяная юбка', 'юбка в клетку', 'юбка', 'юбка  теплая'),
(303, 2, 'Тепла спідниця клітинка червона ( С 36)', '&lt;p&gt;Тепла спідниця в клітину А силует. Застібка на потайну блискавку.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'спідниця з вовни', 'спыдниця тепла', 'спідниця', 'спідниця  тепла'),
(303, 1, 'Тепла спідниця клітинка червона ( С 36)', '', '', '', '', ''),
(312, 2, 'Камізелька чорна / червона клітинка (КА 24)', '&lt;p&gt;Камізелька подовжена&amp;nbsp;з накладними кишенями на підкладці, без застібки. Тканина - купон, низ чорний, верх - червона клітинка&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100 % вовна&lt;/p&gt;\r\n', 'камізелька з теплої вовняної тканини', 'камізелька з вовни', ' камізелька', 'Камізелька з вовни');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`, `meta_Title`) VALUES
(304, 3, 'шапка гренадин и серый (ША-02)', '&lt;p&gt;Вязанная двухцветная шерстяная шапка. Цвет&amp;nbsp;гренадин + серый.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'Купить шапку женскую в Украине. Мастерская Камизелька', 'шапка шерстяная', 'шапка', ' шапочка Камизелька'),
(304, 2, 'шапка гренадин та сірий (ША- 02)', '&lt;p&gt;В''язана&amp;nbsp;двокольорова вовняна шапка. Колір гренадин + сірий.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100 % вовна&lt;/p&gt;\r\n', 'Купити шапку жіночу в Україні. Майстерня Камізелька', 'шапка з вовни', 'шапка', 'жіноча шапочка  Камізелька'),
(304, 1, 'шапка гренадин та сірий (ША- 02)', '', '', '', '', ''),
(311, 1, 'Сукня з мережевними крильцями корал (П 31)', '', '', '', '', ''),
(306, 3, 'Платье-рубашка черное кружевное (П 29)', '&lt;p&gt;Черное кружевное платье-рубашка.&lt;/p&gt;\r\n\r\n&lt;p&gt;В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Застежка на &amp;nbsp;пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Воротник рубашечный.&lt;/p&gt;\r\n\r\n&lt;p&gt;Рукав длинный с манжетами на пуговицах.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% полиэстер, подкладка -100% хлопок&lt;/p&gt;\r\n', 'платье-рубашка', 'платье-рубашка, черное, кружевное, с карманами, летнее кружевное пальто', 'платье', 'кружевное платье'),
(306, 2, 'Сукня-сорочка чорна мереживна (П 30)', '&lt;p&gt;Чорне мережевна сукня-сорочка. У бічних швах кишені. Застібка на гудзики. Комір сорочковий. Рукав довгий з манжетами на гудзиках. Склад: 100% поліестер, підкладка -100% бавовна&lt;/p&gt;\r\n', 'сукня-сорочка', 'сукня-сорочка, чорна, мережевна, з кишенями, літнє мережевне пальто', 'Сукня', 'мережевна сукня'),
(306, 1, 'Сукня-сорочка чорна мереживна (П 30)', '', '', '', '', ''),
(311, 2, 'Сукня з мережевними крильцями корал (П 31)', '&lt;p&gt;Коралова&amp;nbsp;сукня з мереживними крильцями. У бічних швах кишені. На спині V образний виріз. У комплект входить пасок.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'сукня з мережевом', 'сукня мереживо ', 'Сукня', 'сукня без рукава'),
(311, 3, 'Платье с кружевными крылышками корал (П 31)', '&lt;p&gt;Кораловое платье с кружевными крылышками.&lt;/p&gt;\r\n\r\n&lt;p&gt;В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;На спине V образный вырез.&lt;/p&gt;\r\n\r\n&lt;p&gt;В комплект входит пояс.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'платье с кружевом', 'платье кружево ', 'платье', 'платье без рукава'),
(307, 3, 'Жилетка Трехцветая (КА 23)', '&lt;p&gt;Жилет трехцветный удлиненный&amp;nbsp;с карманом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Воротник-односторонний отложной.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: светлая ткань-шерсть, вискоза, пе., цветные ткани-100% шерсть&lt;/p&gt;\r\n', 'стильная женская удлиненная жилетка', 'жилет, жилетка, шерстяная', 'жилет', 'жилет трехцветный'),
(307, 2, 'Камізелька Трикольорова (КА 23)', '&lt;p&gt;Камізелька Трикольорова подовжена&amp;nbsp;з кишенею. Комір -односторонній відкладний.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: світла тканина-вовна, віскоза, пе., кольорові ткани-100% вовна&lt;/p&gt;\r\n', 'камізелька з теплої вовняної тканини', 'камізелька з вовни', ' камізелька', 'Камізелька Трикольорова'),
(307, 1, 'Камізелька вовняна чорна (КА 23)', '', '', '', '', ''),
(310, 2, 'Сукня синя довгий рукав з мережевними крильцями (П 32)', '&lt;p&gt;Синя сукня з довгим рукавом. У бічних швах кишені. На спині V образний виріз. Верх рукава відкриває плече і декорований мереживним крильцем.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'сукня з мережевом', 'сукня мереживо довгий рукав', 'Сукня', 'сукня синя з паском'),
(308, 3, 'Пуловер ягодный (СВ 05)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Пуловер с &quot;отрезанными&quot; манжетами&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% шерсть мериноса&lt;/p&gt;\r\n', 'шерстяной пуловер с V образной горловиной', 'пуловер из шерсти мериноса', 'свитер', 'теплый шерстяной пуловер'),
(308, 2, 'Пуловер ягідний (СВ 05)', '&lt;p&gt;Пуловер з &quot;відрізаними&quot; манжетами&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна мериноса&lt;/p&gt;\r\n', 'пуловер з V образною горловиною', 'вовняний светр', 'светр', 'теплий вовняний пуловер'),
(308, 1, 'Пуловер ягідний (СВ 05)', '', '', '', '', ''),
(310, 3, 'Платье синее длинный рукав с кружевными крылышками (П 32)', '&lt;p&gt;Синее платье с длинным рукавом.&lt;/p&gt;\r\n\r\n&lt;p&gt;В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;На спине V образный вырез.&lt;/p&gt;\r\n\r\n&lt;p&gt;Верх рукава открывает плечо и декорирован кружевным крылышком.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'платье с кружевом', 'платье кружево длинный рукав', 'платье', 'платье синее на поясе'),
(309, 3, 'Юбка черная / черно-белая клетка ( С 37)', '&lt;p&gt;Асимметричная&amp;nbsp; юбка на&amp;nbsp;запах,&amp;nbsp;на поясе.&lt;/p&gt;\r\n\r\n&lt;p&gt;Застежка сзади на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 'асимметричная юбка', 'юбка в клетку', 'юбка', 'юбка  на запах асимметричная'),
(309, 2, 'Спідниця чорна / чорно-біла клітинка ( С 37)', '&lt;p&gt;Асиметрична спідниця на запах, на поясі. Застібка ззаду на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'асиметрична спідниця', 'спідниця у клітинку', 'спідниця', 'спідниця на запах асиметрична'),
(309, 1, 'Спідниця чорна / чорно-біла клітинка ( С 37)', '', '', '', '', ''),
(310, 1, 'Сукня синя довгий рукав з мережевними крильцями (П 32)', '', '', '', '', ''),
(312, 1, 'Камізелька чорна / червона клітинка (КА 24)', '', '', '', '', ''),
(217, 1, 'СУКНЯ ТРИКОТАЖНА МІДІ КЛЬОШ (П- 13)', '', '', '', '', ''),
(296, 3, 'Сарафан теплый с красной клеткой  (СН 06)', '&lt;p&gt;Сарафан миди теплый с красной клеткой внизу на подкладке, с глибокими проймами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% шерсть&lt;/p&gt;\r\n', 'Сарафан от Камизельки\r\n', 'зимний теплый  сарафан', 'сарафан', 'сарафан теплый шерстяной'),
(219, 2, 'СПІДНИЦЯ СМУГАСТА ВОВНЯНА (арт. С- 26)', '&lt;p&gt;Спідниця в сіро-чорну смужку з теплої вовняний тканини. У бічних швах кишені, застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: вовна&lt;/p&gt;\r\n', 'Тепла спідниця з колекції ЗИМА 2017 від Майстерні Камізелька', 'спідниця смугаста, спідниця сіра, тепла, вовняна, спідниця з кишенями у бічних швах', 'спідниця', 'Спідниця в смужку тепла'),
(216, 3, 'САРАФАН ТЕПЛЫЙ В ПОЛОСКУ (СН-01)', '&lt;p&gt;Теплый шерстяной сарафан в полоску. В боковых швах карманы. На спинке потайная молния.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: шерсть&lt;/p&gt;\r\n', 'Сарафан шерстяной в полоску от Камизельки\r\n', 'сарафан, теплый сарафан, сарафан в полоску, одежда украинских производителей', 'сарафан', 'Теплый зимний сарафан из шерсти'),
(216, 2, 'САРАФАН ТЕПЛИЙ В СМУЖКУ (СН- 01)', '&lt;p&gt;Теплий вовняний сарафан в смужку. У бічних швах кишені. На спинці потайна блискавка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: вовна&lt;/p&gt;\r\n', 'Сарафан вовняний в смужку від Камізельки', 'сарафан, теплий сарафан, сарафан в смужку, одяг українських виробників', 'сврафан', 'Теплий зимовий сарафан з вовни'),
(216, 1, 'САРАФАН ТЕПЛИЙ В СМУЖКУ (СН- 01)', '', '', '', '', ''),
(217, 3, 'ПЛАТЬЕ ТРИКОТАЖНОЕ МИДИ КЛЁШ (П-13)', '&lt;p&gt;Платье из трикотажа двух оттенков серого, отрезное по талии, воротник лодочка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Элегантное платье миди с отрезым низом клёш', 'платье миди, платье клёш, теплое платье', 'платье', 'Купить платье клёш'),
(217, 2, 'СУКНЯ ТРИКОТАЖНА МІДІ КЛЬОШ (П- 13)', '&lt;p&gt;Сукня з трикотажу двох відтінків сірого, відрізна&amp;nbsp;по талії, комір човник.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Елегантна сукня міді з відрізним низом кльош', 'сукня міді, сукня кльош, тепла сукня', 'Сукня', 'Купити сукню кльош'),
(279, 3, 'Топ белый лён с &quot;разрезами&quot; на рукавах (ТП 06)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Топ белый с&amp;nbsp;удлиненной спинкой и &quot; разрезами&quot; на рукавах&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% лён&lt;/p&gt;\r\n', ' светлый топ, удлиненная спинка', 'топ светлый, с удлиненной спинкой, &quot;разрезами&quot; на рукавах', 'топ', 'Топ белый с коротким рукавом и удлиненной спинкой'),
(279, 2, ' Топ білий льон з &quot; розрізами&quot; на рукавах (ТП 06)', '&lt;p&gt;Топ білий з подовженою спинкою і &quot; розрізами&quot; на рукавах&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', 'світлий топ, подовжена спинка', 'топ світлий, з подовженою спинкою, &quot; розрізами&quot; на рукавах', 'топ', 'топ білий з коротким рукавом і подовженою спинкою'),
(279, 1, ' Топ білий льон з &quot; розрізами&quot; на рукавах (ТП 05)', '', '', '', '', ''),
(229, 1, 'ПІДТЯЖКИ жіночі (ПО-03)', '', '', '', '', ''),
(229, 3, 'ПОДТЯЖКИ КРУЖЕВНЫЕ (ПО-03)', '&lt;p&gt;Кружевные подтяжки серый на желтом с металлической фурнитурой. Подтяжки регулируются по длинне.&lt;/p&gt;\r\n', 'Купить подтяжки женские кружевные в Украине. Мастерская Камизелька', 'женские подтяжки, кружевные женские подтяжки.', 'подтяжки женские, кружевные подтяжки, женские подтяжки, кружевные женские подтяжки.', ''),
(229, 2, 'ПІДТЯЖКИ МЕРЕЖЕВНІ (ПО-03)', '&lt;p&gt;Мереживні підтяжки сірий на жовтому&amp;nbsp;з металевою фурнітурою. Підтяжки регулюються по довжині.&lt;/p&gt;\r\n', 'Купити жіночі мережевні підтяжки. Майстерня стилю Камізелька.', 'підтяжки жіночі, мережевні жіночі підтяжки', 'підтяжки жіночі, мереживні підтяжки', ''),
(228, 1, 'Краватка', '', '', 'kravatka, pidtyazhki, aksessuary', '', ''),
(228, 2, 'ПІДТЯЖКИ жіночі (ПО-01)', '&lt;p&gt;Мереживні підтяжки з металевою фурнітурою.&lt;/p&gt;\r\n', 'Купити жіночі мережевні підтяжки. Майстерня стилю Камізелька.', 'підтяжки жіночі, мережевні жіночі підтяжки', 'підтяжки жіночі, мереживні підтяжки', ''),
(228, 3, 'ПОДТЯЖКИ женские (ПО-01)', '&lt;p&gt;Кружевные подтяжки с металлической фурнитурой.&lt;/p&gt;\r\n', 'Купить подтяжки женские кружевные в Украине. Мастерская стиля Камизелька', 'женские подтяжки, кружевные женские подтяжки.', 'подтяжки женские, кружевные подтяжки, женские подтяжки, кружевные женские подтяжки.', ''),
(230, 3, 'шапка серая косы (ША-01)', '&lt;p&gt;Шапка серая из трикотажа с фактурными косами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Купить шапку женскую в Украине. Мастерская Камизелька', 'шапка серая, шапка с косичками', 'шапка', 'женская шапочка серая Камизелька'),
(230, 2, 'шапка сіра коси (ША- 01)', '&lt;p&gt;Шапка сіра з трикотажу з фактурними косами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Купити шапку жіночу в Україні. Майстерня Камізелька', 'шапка сіра, шапка з косичками', 'шапка', 'жіноча шапочка сіра Камізелька'),
(230, 1, 'шапка сіра коси (ША- 01)', '', '', '', '', ''),
(266, 3, 'Рубашка двухцветная лен (Р 35)', '&lt;p&gt;Двухцветная летняя рубашка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% лен&lt;/p&gt;\r\n', 'Розовая с белым рубашка из льна', 'рубашка из льна', 'рубашка женская', 'Женская льняная рубашка'),
(266, 2, 'Сорочка двоколірна льон (Р 35)', '&lt;p&gt;Двоколірна літня сорочка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', 'Рожева з білим сорочка з льону', 'сорочка з льону', 'сорочка жіноча', 'Жіноча льняна сорочка'),
(139, 3, 'ПЛАТЬЕ (П-06)', '&lt;p&gt;Платье-рубашка свободного силуэта с застёжкой поло, карманами в боковых швах, декоративным клапаном на спинке и фигурным низом. Рукав слегка приспущен с хлястиком , регулирующим длину.&amp;nbsp; Платье выполнено из ткани в клетку. Рукава, стойка воротника, внутренняя планка застёжки и клапан-отделочные.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок с добавлением пэ.&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n', 'Хит сезона - стильное платье рубашка, удачное сочетание ткани в клетку и однотонной, контрастные детали.', 'платье рубашка в клетку, платье-рубашка купить в Украине, платье осень 2015', 'платье рубашка, платье-рубашка', 'платье рубашка в клеточку в Украине, модное платье 2015, одежда украинского производства'),
(139, 2, 'СУКНЯ (П-06)', '&lt;p&gt;Сукня-сорочка вільного силуету з застібкою поло, кишенями в бічних швах, декоративним клапаном на спинці і фігурним низом. Рукав злегка приспущено з хлястиком, що регулює довжину. Сукню виконано з тканини в клітку. Рукава, стійка коміра, внутрішня планка застібки і клапан-оздоблювальні.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна з додаванням пе.&lt;/p&gt;\r\n', 'Хіт сезону - стильне плаття сорочка, вдале поєднання тканини в клітинку з однотонною, контрастні деталі, якісне українське виробництво одягу\r\n', 'плаття сорочка в клітку, сукня-сорочка купити в Україні, плаття осінь 2015\r\n', 'сукня-сорочка, плаття сорочка', 'Сукня сорочка в клітинку купити, модне плаття 2015, одяг українського виробництва'),
(149, 3, 'ПЛАТЬЕ (П-07)', '&lt;p&gt;Платье рубашка свободного силуэта с декоративной вставкой на полочке, карманами в боковых швах и фигурным низом. Рукав слегка приспущен с манжетом.&amp;nbsp; Платье выполнено из ткани в клеточку. Рукава, стойка, внутренняя планка застёжки, декоративная вставка полочки-отделочные.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок с добавлением пэ.&lt;/p&gt;\r\n', 'И модно и удобно! Платье рубашка под каблук и с кедами.\r\n', 'платье рубашка, туника рубашка, туника под джинсы\r\n', 'платье рубашка', 'Купить стильное платье рубашку или тунику рубашку в Украине'),
(149, 2, 'СУКНЯ (П-07)', '&lt;p&gt;Сукня-сорочка вільного силуету з декоративною вставкою на поличці, кишенями в бічних швах і фігурним низом. Рукав злегка приспущено з манжетом. Сукню виконано з тканини в клітинку. Рукава, стійка, внутрішня планка застібки, декоративна вставка полички-оздоблювальні.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна з додаванням пе.&lt;/p&gt;\r\n', 'І модно і зручно! Сукня сорочка під каблук і з кедами.\r\n', 'плаття сорочка, туніка сорочка, туніка під джинси\r\n', 'Сукня-сорочка', 'Купити стильне плаття сорочку або туніку сорочку в Україні'),
(139, 1, 'ммм', '', '', '', '', ''),
(150, 3, 'ЮБКА (С-16)', '&lt;p&gt;Юбка белая в складки с заниженной талией на кокетке. Сзади потайная молния.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок с добавление эластина.&lt;/p&gt;\r\n', 'Дама в белой юбке - это всегда легко светло и женственно. Такая юбка должна быть в гардеробе обязательно. Её легко носить и в деловом стиле и в кежуал.\r\n', 'юбка белая, светлая юбка на кокетке, со складками, юбки от украинского производителя\r\n', 'юбка, светлая юбка', 'Купить белую юбку в Украине. Белая юбка на кокетке со складками'),
(150, 2, 'СПІДНИЦЯ (С-16)', '&lt;p&gt;Спідниця біла в складки із заниженою талією на кокетці. Ззаду потайна блискавка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна з додавання еластину.&lt;/p&gt;\r\n', 'Дама в білій спідниці - це завжди легко світло і жіночно. Така спідниця повинна бути в гардеробі обов''язково. Її легко носити і в діловому стилі і в кежуал.\r\n', 'спідниця біла, світла спідниця на кокетці, зі складками, спідниці від українського виробника\r\n', 'спідниця', 'Купити білу спідницю в Україні. Біла спідниця на кокетці зі складками'),
(150, 1, 'СПІДНИЦЯ (С-16)', '', '', '', '', ''),
(178, 3, 'Блуза женская (БЛ-13)', '&lt;p&gt;Легкая блуза кремового цвета с откытыми плечами и кружевными вставками.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Тренд 2016. Блуза с открытыми плечами с нежным кружевом.', 'блуза 2016, блуза без плечей, блуза с открытыми плечами, легкая летняя блуза украинского производителя', 'блуза', 'Легкая блуза с открытыми плечами в Украине Киеве'),
(178, 2, 'Блуза жіноча (БЛ-13)', '&lt;p&gt;Легка блузка кремового кольору з відкритими плечима і мереживними вставками.&lt;br /&gt;\r\nСклад: віскоза, пе&lt;/p&gt;\r\n', 'Тренд 2016. Блуза з відкритими плечима з ніжним мереживом.', 'Блуза українського виробництва, легка блуза на літо купити, блуза кремового кольору', 'Блуза', 'Легка блузка з відкритими плечима в Україні Києві'),
(179, 3, 'ЮБКА (С-19)', '&lt;p&gt;Легкая юбка миди в мелий цветочек&amp;nbsp;с запахом сзади и крупными встречными складками. В боковых швах карманы, застежка на пуговицу.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% хлопок.&lt;/p&gt;\r\n', '', '', 'юбка', ''),
(179, 2, 'СПІДНИЦЯ (С-19)', '&lt;p&gt;Легка спідниця міді в дрібну квіточку з запахом ззаду і великими зустрічними складками. У бічних швах кишені, застібка на гудзик.&lt;br /&gt;\r\nСклад: 100% бавовна.&lt;/p&gt;\r\n', '', '', 'спідниця', ''),
(152, 3, 'Рубашка женская (арт. Р-17)', '&lt;p&gt;Рубашка трехцветная свободного силуэта с приспущенным рукавом и потайной застежкой. Воротник – закругленный, линия низа - фигурная. Перед, воротник - голубого цвета, спинка, кокетка, рукава - цвета «шампань», стойка воротника, нижняя планка застёжки –тёмно синие.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок з пе&lt;/p&gt;\r\n', 'Нежная легкая женская рубашка с контрастной планкой и закругленным воротником станет &quot;любимицей&quot; в Вашем деловом гардеробе.\r\n', 'светлая женская рубашка, стильная женская рубашка в Украине, рубашка со скругленным воротничком, нежно голубая рубашка, рубашка с потайной застёжкой\r\n', 'рубашка женская', 'Купить стильную женскую трёхцветную рубашку украинского производства'),
(152, 2, 'Сорочка жіноча (арт. Р-17)', '&lt;p&gt;Сорочка триколірна вільного силуету з приспущеним рукавом і потайною застібкою. Комір - закруглений, лінія низу - фігурна. Перед, комір - блакитного кольору, спинка, кокетка, рукави – кольору &amp;nbsp;«шампань», стійка коміра, нижня планка застібки - темно сині.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна &amp;nbsp;з пе&lt;/p&gt;\r\n', 'Ніжна легка жіноча сорочка з контрастною планкою і заокругленим коміром стане &quot;улюбленицею&quot; у Вашому діловому гардеробі.\r\n', 'світла жіноча сорочка, стильна жіноча сорочка в Україні, сорочка з округленим комірцем, ніжно блакитна сорочка, сорочка з потайною застібкою\r\n', 'сорочка жіноча', 'Купити стильну жіночу сорочку українського виробництва'),
(152, 1, 'Сорочка жіноча (Р-17)', '', '', '', '', ''),
(267, 3, ' Платье миди полевые цветы (П 24)', '&lt;p&gt;Платье миди с цветочным принтом. Вырез горловины и проймы декорированы цветными бейками&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок&lt;/p&gt;\r\n', 'маленькое светлое платье Камизелька', 'светлое платье, платье с цветами', 'платье', 'Купить платье хлопковое лето 2017 от Мастерской Камизелька'),
(263, 3, 'Черная юбка миди с запахом и рубашка со спущеным рукавом (акція 1)', '&lt;p&gt;Черная юбка со складками и глубоким запахом. В боковых швах карманы, застежка - две пуговицы.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;В комплекте с белой рубашкой со спущеннім рукавом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав юбки: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;полиэстер, вискоза с добавлением эластана.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;Состав рубашки: 80% хлопок, 20% пе&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', '', ''),
(263, 2, 'Чорна спідниця міді із запахом та сорочка зі спущеним рукавом(акція 1)', '&lt;p&gt;Чорна спідниця із складками і глибоким запахом. У бічних швах кишені, застібка - два гудзики.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;У комплекті з білою сорочкою зі спущеним рукавом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад спідниці: поліестер, віскоза&amp;nbsp;з додаванням эластану.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад сорочки: 80% бавовна, 20% пе&lt;/p&gt;\r\n', '', '', '', ''),
(263, 1, 'Чорна спідниця міді із запахом та сорочка зі спущеним рукавом(акція 1)', '', '', '', '', ''),
(265, 3, 'ЮБКА хлопковая с розовым поясом ( С 31)', '&lt;p&gt;Светлая с цветочным принтом юбка миди,&amp;nbsp;с боковыми карманами, с розовым поясом.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;хлопок&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Хлопкова юбка с нежным цветочным принтом', 'юбка миди,  с карманами', 'юбка', 'Летняя хлопковая юбка'),
(264, 3, 'САРАФАН летний в цветную полоску (СН 03)', '&lt;p&gt;Сарафан макси в цветную плоску с накладными карманами. Спереди глубокий разрез, спина открыта с застежкой на уровне застежки нижнего белья. Сарафан с поясом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-пе&lt;/p&gt;\r\n', 'Сарафан от Камизельки\r\n', 'сарафан,  летняя одежда украинских производителей', 'сарафан', 'сарафан полосатый'),
(264, 2, 'САРАФАН літній в кольорову смужку (СН 03)', '&lt;p&gt;Сарафан максі в кольорову смужку з накладними кишенями. Спереду глибокий розріз, спина відкрита із застібкою на рівні застібки нижньої білизни. Сарафан з паском.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%бавовна, 20%пе&lt;/p&gt;\r\n', 'Сарафан від Камізельки', 'сарафан,  сарафан  українських виробників', 'сврафан', 'сарафан смугастий'),
(264, 1, 'САРАФАН літній в кольорову смужку (СН 03', '', '', '', '', ''),
(267, 1, 'Сукня міді польові квітки ( П 24)', '', '', '', '', ''),
(265, 1, 'СПІДНИЦЯ бавовняна з рожевим поясом ( С 31)', '', '', '', '', ''),
(265, 2, 'СПІДНИЦЯ бавовняна з рожевим поясом ( С 31)', '&lt;p&gt;Світла з квітковим принтом спідниця міді, з бічними кишенями, з рожевим поясом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна&lt;/p&gt;\r\n', 'Хлопкова спідниця з ніжним квітковим принтом', 'спідниця міді, з кишенями', 'спідниця', 'Літня бавовняна спідниця'),
(149, 1, 'СУКНЯ (П-07)', '', '', '', '', ''),
(158, 3, 'ТУНИКА (Т-01)', '&lt;p&gt;Туника трикотажная молочного цвета с фигурным низом и&amp;nbsp; цельнокроеным рукавом. В комплекте взодит майка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав туники: вискоза с добавлением пэ и эластана.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав майки: вискоза с эластином&lt;strong&gt;.&lt;/strong&gt;&lt;/p&gt;\r\n', 'Свободная и практичная трикотажная туника создаёт образ непринуждённости и лёгкости.\r\n', 'свободная туника, туника трикотажная украинского производства\r\n', 'туника', 'Купить женскую трикотажную тунику в Украине'),
(158, 2, 'ТУНІКА (Т-01)', '&lt;p&gt;Туніка трикотажна молочного кольору з фігурним низом і суцільнокроєним рукавом. У комплект входить майка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад туніки: віскоза з додаванням пе і еластину.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад майки: віскоза з еластином&lt;/p&gt;\r\n', 'Вільна і практична трикотажна туніка створює образ невимушеності і легкості.\r\n', 'вільна туніка, туніка трикотажна українського виробництва\r\n', 'туніка', 'Купити жіночу трикотажну туніку в Україні'),
(159, 3, 'ТУНИКА (Т-02)', '&lt;p&gt;Туника коралловая с цельнокроеным рукавом. . В комплект входит майка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав туники: вискоза с добавлением пэ и эластана.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав майки: вискоза с эластином.&lt;/p&gt;\r\n', 'Коралловая туника выгодно будет смотреться на любой фигуре и станет &quot;любимицей&quot;, благодаря своей лёгкости и практичности.\r\n', 'туника коралловая, туника трикотажная в Украине, лёгкая свободная туника\r\n', 'туника', 'Стильная трикотажная коралловая туника'),
(159, 2, 'ТУНІКА (Т-02)', '&lt;p&gt;Туніка коралова з суцільно кроєним рукавом. . У комплект входить майка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад туніки: віскоза з додаванням пе і еластину.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад майки: віскоза з еластином.&lt;/p&gt;\r\n', 'Коралова туніка вигідно буде виглядати на будь-якій фігурі і стане &quot;улюбленицею&quot;, завдяки своїй легкості і практичності.\r\n', 'туніка коралова, туніка трикотажна в Україні, легка вільна туніка\r\n', 'туніка', 'Стильна трикотажна коралова туніка'),
(159, 1, 'ТУНІКА (Т-02)', '', '', '', '', ''),
(163, 3, 'Блуза женская (БЛ-12)', '&lt;p&gt;Блуза батистовая без рукава с ассиметричной декоративной деталью спереди, выполненной из трикотажа. На спине застежка на пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100 %хлопок .&lt;/p&gt;\r\n', 'Батистовая лёгкая блуза - опличное решение для Вашего гардероба в тёплое время года!\r\n', 'светлая блуза, без рукава, с ассиметричной деталью\r\n', 'блуза', 'Легкая блуза из батиста в Украине Киеве'),
(163, 2, 'Блуза жіноча (БЛ-12)', '&lt;p&gt;Блуза батистова без рукава з асиметричною декоративною деталлю спереду, виконаної з трикотажу. На спині застібка на ґудзики.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% бавовна.&lt;/p&gt;\r\n', 'Батистова легка блуза - відмінне рішення для Вашого гардеробу в теплу пору року!\r\n', 'світла блуза, без рукава, з асиметричною деталлю\r\n', 'Блуза', 'Легка блуза з батисту в Україні Києві'),
(158, 1, 'ТУНІКА (Т-01)', '', '', '', '', ''),
(165, 3, 'ФУТБОЛКА (Ф-02)', '&lt;p&gt;Футболка трикотажная черная с V-образной горловиной и длинным рукавом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза с добавление эластана.&lt;/p&gt;\r\n', 'Черная футболка с длинным рукавом и V образным вырезом - практично, удобно и всегда комфортно!\r\n', 'черная футболка с длинным рукавом, лонгслив с V образной горловиной\r\n', 'футболка', 'Черная футболка с длинным рукавом и V образным вырезом'),
(165, 2, 'ФУТБОЛКА (Ф-02)', '&lt;p&gt;Футболка трикотажна чорна з V-подібною горловиною та довгим рукавом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза з додавання еластану.&lt;/p&gt;\r\n', 'Чорна футболка з довгим рукавом і V подібним вирізом - практично, зручно і завжди комфортно!\r\n', 'чорна футболка з довгим рукавом, лонгслів з V образною горловиною\r\n', 'футболка', 'Чорна футболка з довгим рукавом і V подібним вирізом'),
(170, 1, 'КАМІЗЕЛЬКА (КА-08)', '', '', '', '', ''),
(170, 3, 'ЖИЛЕТКА (КА-08)', '&lt;p&gt;Жилетка черная приталенная, на спине декоративная кружевная вставка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза с пэ.&lt;/p&gt;\r\n', 'Великолепная стильная жилетка от дизайнера Мастерской Камизелька. Количество изделий ограничено.\r\n', 'купить жилетку для работы, жилетка черная офисная, жилетка с кружевной спиной, интернет магазин женской деловой одежды\r\n', 'жилетка женская, жилетка офисная', 'Купить стильную жилетку в Украине Киеве'),
(170, 2, 'КАМІЗЕЛЬКА (КА-08)', '&lt;p&gt;Жилетка чорна приталена, на спині декоративна мереживна вставка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза з пе&lt;/p&gt;\r\n', 'Чудова стильна жилетка від дизайнера Майстерні Камізелька. Кількість виробів обмежена.\r\n', 'купити жилетку для роботи, жилетка чорна офісна, жилетка з мереживною спиною, інтернет магазин жіночого ділового одягу\r\n', 'камізелька офісна, жилетка офісна, жилетка жіноча', 'Купити стильну жилетку в Україні Києві'),
(171, 3, 'ЖИЛЕТКА (КА-09)', '&lt;p&gt;Жилетка изо льна с завязками на спине и рисунком «вышиванка».&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% лён&lt;/p&gt;\r\n', 'Жилетка из льна от мастерской Камизелька - это сочетание практичности, экологичности и стиля.\r\n', 'жилет из льна, льняная жилетка, вышиванка, одежда украинского производства\r\n', 'жилетка женская', 'Стильная льняная жилетка вышиванка'),
(171, 2, 'КАМІЗЕЛЬКА (КА-09)', '&lt;p&gt;Жилетка з льону із зав''язками на спині і малюнком «вишиванка».&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', 'Жилетка з льону від майстерні Камізелька - це поєднання практичності, екологічності та стилю.\r\n', 'жилетка з льону, льняна жилетка, вишиванка, одяг українського виробництва\r\n', 'камізелька, жилетка жіноча', 'Стильна льняна жилетка вишиванка'),
(171, 1, 'КАМІЗЕЛЬКА (КА-09)', '', '', '', '', ''),
(165, 1, 'ФУТБОЛКА (Ф-02)', '', '', '', '', ''),
(163, 1, 'Блуза жіноча (БЛ-12)', '', '', '', '', ''),
(178, 1, 'Блуза жіноча (БЛ-13)', '', '', '', '', ''),
(260, 3, 'блуза сиренево-розовая с застёжкой на спинке  (БЛ 30)', '&lt;p&gt;Легкая свободная блуза нежного сиренево-розового цвета с &amp;nbsp;пышными &amp;nbsp;слегка укороченными рукавами , застежкой на спинке и &quot;слёзкой&quot; впереди&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'легкая сиренево-розовая блуза с пышным рукавом', 'легкая блуза, кремовая блузка, блуза с пуговицами на спине', 'блуза', 'легкая свободна блуза '),
(260, 2, 'блуза бузково-рожева із застібкою на спинці (БЛ 30)', '&lt;p&gt;Легка вільна блуза ніжного бузково-рожевого кольору з пишними злегка укороченими рукавами, застібкою на спинці і &quot; слізкою&quot; попереду&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'легка бузково-рожева блуза з пишним рукавом', 'легка блуза, кремова блуза, блуза з гудзиками на спині', 'Блуза', 'легка вільна блуза'),
(260, 1, 'блуза бузково-рожева із застібкою на спинці (БЛ 30)', '', '', '', '', ''),
(296, 2, 'Сарафан теплий з червоною клітинкою  (СН 06)', '&lt;p&gt;Сарафан міді&amp;nbsp;теплий з червоною клітинкою по низу на&amp;nbsp;підкладці, з&amp;nbsp;глубокими проймами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% вовна&lt;/p&gt;\r\n', 'Сарафан від Камізельки', 'зимовий теплий  сарафан', 'сарафан', 'сарафан теплий вовняний'),
(278, 1, 'Камізелька різноколірна смужка (КА 17)', '', '', '', '', ''),
(261, 3, 'блуза белая с застёжкой на спинке  (БЛ 32)', '&lt;p&gt;Легкая свободная белая блуза &amp;nbsp;с &amp;nbsp;пышными &amp;nbsp;слегка укороченными рукавами , застежкой на спинке и &quot;слёзкой&quot; впереди&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'легкая белая блуза с пышным рукавом', 'легкая блуза, блуза с пуговицами на спине', 'блуза', 'легкая свободна блуза '),
(261, 2, 'блуза біла із застібкою на спинці (БЛ 32)', '&lt;p&gt;Легка вільна біла блуза&amp;nbsp;з пишними злегка укороченими рукавами, застібкою на спинці і &quot; слізкою&quot; попереду&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'легка біла блуза з пишним рукавом', 'легка блуза, блуза з гудзиками на спині', 'Блуза', 'легка вільна блуза'),
(261, 1, 'блуза біла із застібкою на спинці (БЛ 32)', '', '', '', '', ''),
(277, 3, 'блуза белая с розовой вставкой  (БЛ 33)', '&lt;p&gt;Белая блуза без рукавов с розовой вставкой спереди и треугольным вырезом на спинке с&amp;nbsp;застежкой на 2 пуговицы&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% лён&lt;/p&gt;\r\n', 'летняя блуза без рукавов', 'легкая блуза, блуза с пуговицами на спине', 'блуза', 'легкая свободна блуза '),
(277, 2, 'блуза біла з рожевою вставкою (БЛ 33)', '&lt;p&gt;Біла блуза без рукавів з рожевою вставкою спереду і трикутним вирізом на спинці із застібкою на 2 гудзики&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', 'літня блуза без рукавів', 'легка блуза, блуза з гудзиками на спині', 'Блуза', 'легка вільна блуза'),
(262, 3, 'Пальто серое трикотажное на розовой трикотажной подкладке (ПТ 01)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Серое пальто из&amp;nbsp;трикотажа &amp;nbsp;с карманами в боковых швах,&amp;nbsp;на подкладке из нежно розового трикотажа. Манжеты-отвороты.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Состав: &amp;nbsp;вискоза, пе&lt;/p&gt;\r\n', 'Пальто трикотажное на трикотажной подкладке', 'трикотажное пальто на контрастной подкладке', 'пальто', 'Женское серое пальто из  трикотажа');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`, `meta_Title`) VALUES
(262, 2, 'Пальто сіре трикотажне на рожевій трикотажній підкладці (ПТ 01)', '&lt;p&gt;Сіре пальто з трикотажу з кишенями у бічних швах, на підкладці з ніжно рожевого трикотажу. Манжети-закоти.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Пальто трикотажне на трикотажній підкладці', 'трикотажне пальто на контрастній підкладці', 'пальто', 'Жіноче сіре пальто з трикотажу'),
(262, 1, 'Пальто сіре трикотажне на рожевій трикотажній підкладці (ПТ 01)', '', '', '', '', ''),
(274, 3, ' Платье хлопковое полоска купон (П 23)', '&lt;p&gt;Платье миди с полосатым&amp;nbsp;принтом, рукав короткий цельнокройный, в комплекте с тканевым поясом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: хлопок&lt;/p&gt;\r\n', 'маленькое светлое платье Камизелька', 'светлое платье, платье с полосами', 'платье', 'Купить платье хлопковое лето 2017 от Мастерской Камизелька'),
(274, 2, 'Сукня бавовняна смужка купон (П 23)', '&lt;p&gt;Сукня міді&amp;nbsp;із смугастим принтом, рукав короткий суцільнокрійний, в комплекті з тканинним паском.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: бавовна&lt;/p&gt;\r\n', 'маленька світла сукня Камізелька', 'світла сукня, сукня зі смужками', 'Сукня', 'Купити сукню бавовняну літо 2017 від Майстерні Камізелька'),
(274, 1, 'Сукня бавовняна смужка купон (П 23)', '', '', '', '', ''),
(276, 3, 'блуза совушки  (БЛ 34)', '&lt;p&gt;Легкая свободная розовая блуза &amp;nbsp;с &amp;nbsp;с принтом &quot;совушки&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'легкая белая блуза без рукавов', 'легкая блуза, ', 'блуза', 'легкая свободна блуза '),
(276, 2, 'блуза совушки (БЛ 34)', '&lt;p&gt;Легка вільна рожева блуза &amp;nbsp;з принтом &quot; совушки&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пэ.&lt;/p&gt;\r\n', 'легка біла блуза без рукавів', 'легка блуза, ', 'Блуза', 'легка вільна блуза'),
(275, 3, 'Топ майка цветной кант (ТП 05)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Топ-майка из льна с цветнім кантом горловины&amp;nbsp;и проймы&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; font-size: 16px;&quot;&gt;Состав: 100%&amp;nbsp;лен&lt;/span&gt;&lt;/p&gt;\r\n', 'Топ 2017 белый льняной', 'топ светлый, майка из льна', 'топ', 'кроп топ лен'),
(275, 2, ' Топ майка кольоровий кант (ТП 05)', '&lt;p&gt;Топ-майка з льону з кольоровим&amp;nbsp;кантом горловини і пройми&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', 'Топ 2017 білий льняний', 'топ світлий, майка з льону', 'топ', 'кроп топ льон'),
(275, 1, 'Топ майка кольоровий кант (ТП 05)', '', '', '', '', ''),
(277, 1, 'блуза біла з рожевою вставкою (БЛ 33)', '', '', '', '', ''),
(276, 1, 'блуза совушки (БЛ 34)', '', '', '', '', ''),
(297, 1, 'Сарафан теплий сіра клітинка (СН 05)', '', '', '', '', ''),
(177, 3, 'ТОП (ТП-01)', '&lt;p&gt;Белый свободный топ-майка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%- хлопок, 20% - пэ.&lt;/p&gt;\r\n', '', '', 'топ', ''),
(177, 2, 'ТОП (ТП-01)', '&lt;p&gt;Білий вільний топ-майка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80% - бавовна, 20% - пе.&lt;/p&gt;\r\n', '', '', 'топ', ''),
(177, 1, 'ТОП (ТП-01)', '', '', '', '', ''),
(179, 1, 'СПІДНИЦЯ (С-19)', '', '', '', '', ''),
(257, 1, 'сорочка біла тканина та трикотаж (Р 32)', '', '', '', '', ''),
(181, 1, 'СУКНЯ (П-08)', '', '', '', '', ''),
(258, 3, 'рубашка белая с мини воротничком (Р 31)', '&lt;p&gt;Белая рубашка свободного кроя с мини воротничком, двумя большими карманами и пышными рукавами. Застежка потайная на пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80% хлопок, 20% пэ&lt;/p&gt;\r\n', 'Женская белая свободная рубашка с большими карманами и потайной застежкой', 'белая рубашка с потайной застёжкой, маленьким воротничком, пышными рукавами', 'рубашка женская', 'Женская белая рубашка с пышными рукавами'),
(258, 2, 'сорочка біла з міні комірцем (Р 31)', '&lt;p&gt;Біла сорочка вільного крою з міні комірцем, двома великими кишенями і пишними рукавами. Застібка потайна на гудзики.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80% бавовна, 20% пе&lt;/p&gt;\r\n', 'Жіноча біла вільна сорочка з великими кишенями і потайною застібкою', 'біла сорочка з потайною застібкою, маленьким комірцем, пишними рукавами', 'сорочка жіноча', 'Жіноча біла сорочка з пишними рукавами'),
(181, 3, 'ПЛАТЬЕ (П-08)', '&lt;p&gt;Лёгкое платье рубашка с коротким рукавом свободного силуэта с декоративной вставкой на полочке, карманами в боковых швах и фигурным низом.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% хлопок.&lt;/p&gt;\r\n', 'И модно и удобно! Платье рубашка под каблук и с кедами.\r\n', 'платье рубашка, туника рубашка, туника под джинсы\r\n', 'платье рубашка', 'Купить стильное платье рубашку  в Украине'),
(181, 2, 'СУКНЯ (П-08)', '&lt;p&gt;Легка&amp;nbsp;сукня-сорочка з коротким рукавом вільного силуету з декоративною вставкою на пілочці, кишенями в бічних швах і фігурним низом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% бавовна.&lt;/p&gt;\r\n', 'І модно і зручно! Сукня сорочка під каблук і з кедами.\r\n', 'плаття сорочка, туніка сорочка, туніка під джинси\r\n', 'Сукня-сорочка', 'Купити стильне плаття- сорочку  в Україні'),
(182, 3, 'ЖИЛЕТКА (КА-11)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif; font-size: 16px; line-height: 21px;&quot;&gt;Удлинённый ж&lt;/span&gt;илет &amp;nbsp;с отложным воротником без застёжки. Выше линии талии расположены карманы. Жилетна подкладе.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Состав: плотный лен с добавлением&amp;nbsp;пэ.&lt;/p&gt;\r\n', 'Женская жилетка из льна  от украинского производителя, купить Киев Украина', 'жилет женский светлый, летняя женская жилетка украинского производства', 'жилет, жилетка', 'Женская жилетка из натурального материала'),
(182, 2, 'КАМІЗЕЛЬКА (КА-11)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Камізелька &amp;nbsp;подовжена, з відкладним коміром, без застібки. Вище лінії талії розташовані кишені. Камізелька на підкладці.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;&lt;br /&gt;\r\nСклад: щільний льон з додаванням&amp;nbsp;пе.&lt;/p&gt;\r\n', 'Стильна та легка камізелька з натуральної тканини від української майстерні Камізелька', 'жилетка з льону, стильий жіночий жилет на літо', 'жилет, камізелька', 'Легка жіноча камізелька на літню пору року'),
(183, 1, 'Блуза жіноча (БЛ-14)', '', '', '', '', ''),
(183, 3, 'Блуза женская (БЛ-14)', '&lt;p&gt;Легкая блуза кремового цвета с темно синими декоративными элементами и присборкой по низу.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Удобная и лёгкая женская блуза. Сочетание кремового и темно синего подойдет под любую юбку или джинсы.', 'купить легкую женскую блузу в Украине, летняя блуза, блуза кремового цвета, блуза от Камизельки', 'блуза', 'Легкая блуза кремового цвета в Украине Киеве'),
(182, 1, 'Камізелька Ка-11', '', '', '', '', ''),
(183, 2, 'Блуза жіноча (БЛ-14)', '&lt;p&gt;Легка блузка кремового кольору з темно синіми декоративними елементами, призібрана по низу.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Легка кремова блуза декорована темно синіми вставками. Витончена та зручна.', 'блуза на літо, купити тоненьку жіночу блузу в Україні Києві, блуза від Камізельки', 'Блуза', 'Легка блузка кремового кольору в Україні Києві'),
(258, 1, 'сорочка біла з міні комірцем (Р 31)', '', '', '', '', ''),
(259, 1, 'Жилет сірий з V образним вирізом (КА 16)', '', '', '', '', ''),
(184, 3, 'Блуза женская (БЛ-15)', '&lt;p&gt;Легкая блуза кремового цвета с кружевными рукавами и декоративной кружевной спинкой.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Легкая женская блуза с оригинальной кружевной спинкой.', 'Легкая женская блуза с  кружевной спинкой, оригинальная блуза в Украине', 'блуза', 'Легкая блуза с кружевными рукавами в Украине Киеве'),
(184, 2, 'Блуза жіноча (БЛ-15)', '&lt;p&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;Легка блузка кремового кольору з мереживними рукавами і декоративною&lt;/span&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;&amp;nbsp;мереживною&lt;/span&gt;&lt;span style=&quot;line-height: 20.8px;&quot;&gt;&amp;nbsp;спинкою.&lt;/span&gt;&lt;br /&gt;\r\nСклад: віскоза, пе&lt;/p&gt;\r\n', 'Легка жіноча блуза з оригінальною мереживною спинкою', 'Блуза від Камізельки, блузка з мереживною спинкою, одяг українського виробництва', 'Блуза', 'Легка блузка з відкритими плечима в Україні Києві'),
(185, 1, 'Блуза жіноча (БЛ-16)', '', '', '', '', ''),
(185, 3, 'Блуза женская (БЛ-16)', '&lt;p&gt;Легкая блуза кремового цвета с темно синими декоративными элементами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Блуза на каждый день! Легкая и удобная.', 'ежедневный гардероб, купить блузку на каждый день, ', 'блуза', 'Легкая блуза кремового цвета в Украине Киеве'),
(185, 2, 'Блуза жіноча (БЛ-16)', '&lt;p&gt;Легка блузка кремового кольору з темно синіми декоративними елементами.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Блуза на кожен день! Зручна, практична та легка.', 'Купити блузу в Україні Києві, купити легку блузу на літо', 'Блуза', 'Легка блузка кремового кольору в Україні Києві'),
(278, 2, 'Камізелька різноколірна смужка (КА 17)', '&lt;p&gt;Жилет котоновий в різноколірну смужку&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% бавовна&lt;/p&gt;\r\n', 'Жіночий літній  жилет ', 'жилет з контрастною спинкою', 'жилет, камізелька', 'Жіночий літній жилет з бавовни'),
(278, 3, 'Жилетка разноцветная полоска (КА 17)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Жилетка котоновая в разноцветную полоску&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: 100% хлопок&lt;/p&gt;\r\n', 'Жилетка  летняя', 'жилетка с контрастной спинкой', 'жилет, жилетка', 'Женская летняя жилетка из хлопка'),
(188, 1, 'Блуза жіноча (БЛ-19)', '', '', '', '', ''),
(188, 3, 'Блуза женская (БЛ-19)', '&lt;p&gt;Белая блуза без рукавов&amp;nbsp;с асимметричными складками спереди и застёжкой на пуговицы на спинке.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100 % лён.&lt;/p&gt;\r\n', '', '', 'блуза', 'Біла блуза з льону'),
(188, 2, 'Блуза жіноча (БЛ-19)', '&lt;p&gt;Біла блузка без рукавів з асиметричними складками спереду і застібкою на гудзики на спинці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', '', '', 'Блуза', 'Блуза з льону в Україні Києві'),
(191, 2, 'Блуза жіноча (БЛ-22)', '&lt;p&gt;Легка блузка кремового кольору з довгими рукавами, потайною&amp;nbsp;застібкою декорованою&amp;nbsp;чорним мереживом. Манжети і комір виконані з тканини чорного кольору.&lt;br /&gt;\r\nСклад: віскоза, пе&lt;/p&gt;\r\n', '', '', 'Блуза', 'Легка блузка з мереживом в Україні Києві'),
(189, 1, 'Блуза жіноча (БЛ-20)', '', '', '', '', ''),
(189, 3, 'Блуза женская (БЛ-20)', '&lt;p&gt;Белая блуза без рукавов декорированная широким контраснтым кружевом по низу, с застёжкой на пуговицы на слегка удленённой&amp;nbsp;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;спинке.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100 % лён, кружево.&lt;/p&gt;\r\n', '', '', 'блуза', 'Біла блуза з льону'),
(189, 2, 'Блуза жіноча (БЛ-20)', '&lt;p&gt;Біла блуза без рукавів декорована широким контрастним мереживом по низу, з застібкою на гудзики на злегка подовженій спинці.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nСклад: 100% льон, мереживо.&lt;/p&gt;\r\n', '', '', 'Блуза', 'Блуза з льону в Україні Києві'),
(190, 1, 'Блуза жіноча (БЛ-21)', '', '', '', '', ''),
(191, 1, 'Блуза жіноча (БЛ-22)', '', '', '', '', ''),
(190, 3, 'Блуза женская (БЛ-21)', '&lt;p&gt;Двухцветная блуза с цельнокройным рукавом, с двумя карманами на линии груди&lt;span style=&quot;line-height: 1.6em;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100 % лён.&lt;/p&gt;\r\n', '', '', 'блуза', 'Блуза з льону блакитна'),
(190, 2, 'Блуза жіноча (БЛ-21)', '&lt;p&gt;Двоколірна блуза з суцільнокроєним рукавом, з двома кишенями на лінії грудей.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nСклад: 100% льон.&lt;/p&gt;\r\n', '', '', 'Блуза', 'Блуза з льону в Україні Києві'),
(191, 3, 'Блуза женская (БЛ-22)', '&lt;p&gt;Легкая блуза кремового цвета с длинными рукавами , потайной застёжкой декорированной черным кружевом. Манжеты и воротник выполнены из ткани черного цвета.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', '', '', 'блуза', 'Легкая блуза с кружевными рукавами в Украине Киеве'),
(259, 3, 'Жилетка серая с V образным вырезом (КА 16)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Серая трикотажная жилетка&amp;nbsp;&amp;nbsp;с удлиненной спинкой,&amp;nbsp;на контрастной подкладке, с &quot;разрезами&quot; по бокам&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Жилетка  серая трикотажная на контрастной подкладке', 'жилетка-разлетайка, серая в косичку', 'жилет, жилетка', 'Женская серая жилетка из  трикотажа с контрастной подкладкой'),
(194, 1, 'СПІДНИЦЯ (С-20)', '', '', '', '', ''),
(192, 3, 'Блуза женская (БЛ-23)', '&lt;p&gt;Легкая трикотажная блуза с рукавом 3/4. Рукава и спинка декорированы кружевом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, эластан.&lt;/p&gt;\r\n', '', '', 'блуза', 'Трикотажная легкая голубая блуза с кружевными всавками в Украине Киеве'),
(192, 2, 'Блуза жіноча (БЛ-23)', '&lt;p&gt;Легка трикотажна блуза з рукавом 3/4. Рукава і спинка декоровані мереживом.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, еластан.&lt;/p&gt;\r\n', '', '', 'Блуза', 'Трикотажна легка блузка з мереживом в Україні Києві'),
(192, 1, 'Блуза жіноча (БЛ-23)', '', '', '', '', ''),
(194, 3, 'ЮБКА (С-20)', '&lt;p&gt;Юбка миди на пуговицах&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &amp;nbsp;хлопок, пе&lt;/p&gt;\r\n', '', '', 'юбка', ''),
(194, 2, 'СПІДНИЦЯ (С-20)', '&lt;p&gt;Спідниця міді на гудзиках&lt;br /&gt;\r\nСклад:бавовна, пе.&lt;/p&gt;\r\n', '', '', 'спідниця', ''),
(193, 3, 'ПЛАТЬЕ (П-10)', '&lt;p&gt;Платье из кружевного полотна на бежевой ткани&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Элегантное платье', '', 'платье', 'Купить стильное кружевное  в Украине'),
(193, 2, 'СУКНЯ (П-10)', '&lt;p&gt;Сукня із чорного мереживного полотна на бежевій тканині&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', '', '', 'Сукня', 'Купити стильну мережевну сукню в Україні'),
(193, 1, 'СУКНЯ (П-10)', '', '', '', '', ''),
(256, 3, 'рубашка голубая с кокеткой (Р 34)', '&lt;p&gt;Голубая рубашка свободного кроя с &amp;nbsp;декоративной &quot;выемкой&quot; на планке, спереди и на спинке отлетная кокетка, низ рубашки фигурный&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80% хлопок, 20% пэ&lt;/p&gt;\r\n', 'Женская голубая свободная рубашка с фигурным низом', 'рубашка с  кокеткой, голубая, свободная', 'рубашка женская', 'Женская голубая рубашка с декором на планке'),
(256, 2, 'сорочка блакитна з кокеткою (Р 34)', '&lt;p&gt;Блакитна сорочка вільного крою з декоративною &quot; виїмкою&quot; на планці, спереду і на спинці відлітна кокетка, низ сорочки фігурний.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80% бавовна, 20% пэ&lt;/p&gt;\r\n', 'Жіноча блакитна вільна сорочка з фігурним низом', 'сорочка з кокеткою, блакитна, вільна', 'сорочка жіноча', 'Жіноча блакитна сорочка з декором на планці'),
(256, 1, 'сорочка блакитна з кокеткою (Р 34)', '', '', '', '', ''),
(257, 2, 'сорочка біла тканина та трикотаж (Р 32)', '&lt;p&gt;Біла сорочка з бавовняного трикотажу і тканини, спереду &quot;кишеня в кишені&quot;, рукав спущений, на спинці фігурна кокетка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: трикотаж -100% бавовна, тканина -80% бавовна, 20% пэ&lt;/p&gt;\r\n', 'Жіноча біла вільна сорочка із спущеним рукавом', 'сорочка з фігурною кокеткою', 'сорочка жіноча', 'Жіноча біла сорочка з трикотажу і тканини'),
(257, 3, 'рубашка белая ткань и трикотаж (Р 32)', '&lt;p&gt;Белая рубашка из хлопкового трикотажа и ткани, спереди &quot;карман в кармане&quot;,рукав спущенный, на спинке фигурная кокетка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: трикотаж -100% хлопок, ткань-80% хлопок, 20% пэ&lt;/p&gt;\r\n', 'Женская белая свободная рубашка со спущенным рукавом', 'рубашка с фигурной кокеткой', 'рубашка женская', 'Женская белая рубашка из трикотажа и ткани'),
(197, 3, 'Блуза женская (БЛ-24)', '&lt;p&gt;Белая блуза без рукавов&amp;nbsp;с симетричными складками спереди и застёжкой на пуговицы на спинке.&lt;/p&gt;\r\n\r\n&lt;p&gt;Длина и низ изделия - как на модели&amp;nbsp;&lt;a href=&quot;http://kamizelka.in.ua/ru/rubashki-bluzy/bluza-zhenskaya-bl-19.html&quot;&gt;БЛ-19&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100 % лён.&lt;/p&gt;\r\n', 'купить в Украине одежду из льна!', 'женская одежда из льна, льняная блуза', 'блуза', 'Легкая и комфортная блуза из льна!'),
(197, 2, 'Блуза жіноча (БЛ-24)', '&lt;p&gt;Біла блузка без рукавів з симетричними складками спереду і застібкою на гудзики на спинці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Довжина та низ такі&amp;nbsp;самі, як на блузі &lt;a href=&quot;http://kamizelka.in.ua/rubashki-bluzy/bluza-zhenskaya-bl-19.html&quot;&gt;БЛ-19&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% льон&lt;/p&gt;\r\n', '', '', 'Блуза', 'Блуза з льону в Україні Києві'),
(184, 1, 'Блуза жіноча (БЛ-15)', '', '', '', '', ''),
(199, 1, 'СПІДНИЦЯ (С-21)', '', '', '', '', ''),
(197, 1, 'Блуза жіноча (БЛ-24)', '', '', '', '', ''),
(259, 2, 'Жилет сірий з V образним вирізом (КА 16)', '&lt;p&gt;Сірий трикотажний жилет з подовженою спинкою, на контрастній підкладці, з &quot; розрізами&quot; з боків&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Жіночий сірий жилет з трикотажу з контрастною підкладкою', 'жилет-розлітайка, сірий в косичку', 'жилет, камізелька', 'Жіночий сірий жилет з трикотажу з контрастною підкладкою'),
(199, 3, 'ЮБКА (С-21)', '&lt;p&gt;Легкая юбка миди в полоску&amp;nbsp;с крупными встречными складками. В боковых швах карманы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% хлопок.&lt;/p&gt;\r\n', '', '', 'юбка', ''),
(199, 2, 'СПІДНИЦЯ (С-21)', '&lt;p&gt;Легка спідниця міді в полоску з великими зустрічними складками. У бічних швах кишені.&lt;br /&gt;\r\nСклад: 100% бавовна.&lt;/p&gt;\r\n', '', '', 'спідниця', ''),
(201, 2, 'Жіноча біла сорочка зі спущеним рукавом (арт. Р-24)', '&lt;p&gt;Комфортна жіноча біла сорочка із спущеним рукавом і потайною застібкою.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%- бавовна, 20%-ПЕ&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://kamizelka.in.ua/index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=207&quot;&gt;Ця модель сорочки зі спідницею.&lt;/a&gt;&lt;/p&gt;\r\n', 'Вільна і лаконічна жіноча сорочка із спущеним рукавом', 'купити білу жіночу сорочку українського виробника', 'сорочка жіноча', 'Зручна класика від українського виробника Камізелька'),
(200, 3, 'Женская удлиненная рубашка в клеточку (арт. Р-23)', '&lt;p&gt;Женская свободная удлиненная рубашка &amp;nbsp;комбинированная из тканей в клеточку с карманами в боковых швах и рукавом 3/4. Линия низа фигурная и удлиненная на спинке.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%- хлопок, 20%- ПЭ.&lt;/p&gt;\r\n', 'Свободная удлиненная женская рубашка с боковыми карманами.', 'женская рубашка в клеточку, длинная женская рубашка, рубашка с боковыми карманами', 'рубашка женская', 'Удлиненная женская рубашка в в клеточку|Украина|Киев|'),
(201, 3, 'Женская белая рубашка со спущенным рукавом (арт. Р-24)', '&lt;p&gt;Комфортная женская белая рубашка со спущенным рукавом и потайной застёжкой.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-ПЭ&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://kamizelka.in.ua/ru/index.php?route=product/product&amp;amp;path=59&amp;amp;product_id=207&quot;&gt;Эта модель рубашки с юбкой.&lt;/a&gt;&lt;/p&gt;\r\n', 'Свободная и лаконичная женская рубашка со спущенным рукавом', 'купить белую женскую рубашку украинского производителя', 'рубашка женская', ' белая свободная женская рубашка |Украина|Киев|'),
(200, 2, 'Жіноча подовжена сорочка в клітинку (арт. Р-23)', '&lt;p&gt;Жіноча вільна подовжена сорочка &amp;nbsp;комбінована з тканин в&amp;nbsp;клітинку з кишенями у бічних швах і рукавом 3/4. Лінія низу фігурна і подовжена на спинці.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%- бавовна, 20%- ПЕ.&lt;/p&gt;\r\n', 'Вільна подовжена жіноча сорочка з бічними кишенями.', 'жіноча сорочка в клітинку, довга жіноча сорочка, сорочка з бічними кишенями', 'сорочка жіноча', 'Подовжена жіноча сорочка у в клітинку|Україна|Київ|'),
(202, 3, 'Женская рубашка в  полоску (арт. Р-25)', '&lt;p&gt;Свободная рубашка &amp;nbsp;комбинированная из&amp;nbsp;тканей в полоску с потайной застёжкой и воротником стойкой. Чуть выше линии талии декоративная деталь, на спинке рубашки шлица, на полочке накладной карман.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-ПЭ&lt;/p&gt;\r\n', 'Свободная и стильная женская рубашка в комбинированную полоску', 'купить полосатую женскую рубашку украинского производителя', 'рубашка женская', 'полосатая свободная женская рубашка |Украина|Киев|'),
(202, 2, 'Жіноча сорочка в  смужку (арт. Р-25)', '&lt;p&gt;Вільна сорочка &amp;nbsp;комбінована з тканин в смужку з потайною застібкою і коміром стійкою. Трохи вище за лінію талії декоративна деталь, на спинці сорочки шліца,&amp;nbsp;по переду накладна кишеня.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%- бавовна, 20%-ПЕ&lt;/p&gt;\r\n', 'Вільна і стильна жіноча сорочка в комбіновану смужку', 'купити смугасту жіночу сорочку українського виробника', 'сорочка жіноча', 'смугаста вільна жіноча сорочка |Україна|Київ|'),
(203, 2, 'Жіноча сорочка у  смужку (арт. Р-26)', '&lt;p&gt;Вільна сорочка &amp;nbsp;комбінована з тканин у вертикальну смужку з потайною застібкою і коміром стійкою. Трохи вище за лінію талії декоративна деталь, на спинці сорочки шліца,&amp;nbsp;по переду накладна кишеня.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%- бавовна, 20%-ПЕ&lt;/p&gt;\r\n', 'Вільна і стильна жіноча сорочка в комбіновану смужку', 'купити смугасту жіночу сорочку українського виробника', 'сорочка жіноча', 'смугаста вільна жіноча сорочка |Україна|Київ|'),
(203, 3, 'Женская рубашка в  полоску (арт. Р-26)', '&lt;p&gt;Свободная рубашка комбинированная из тканей в вертикальную полоску с потайной застёжкой и воротником стойкой. Чуть выше линии талии декоративная деталь, на спинке рубашки шлица, на полочке накладной карман.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-ПЭ&lt;/p&gt;\r\n', 'Свободная и стильная женская рубашка в комбинированную полоску', 'купить полосатую женскую рубашку украинского производителя', 'рубашка женская', 'полосатая свободная женская рубашка |Украина|Киев|'),
(202, 1, 'Сорочка жіноча (Р-25)', '', '', '', '', ''),
(203, 1, 'Сорочка жіноча (Р-26)', '', '', '', '', ''),
(204, 1, 'Сорочка жіноча (Р-27)', '', '', '', '', ''),
(204, 3, 'Белая рубашка с баской (арт. Р-27)', '&lt;p&gt;Белая рубашка без воротника, с потайной застежкой и передней баской присобраной на линии талии.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-ПЭ&lt;/p&gt;\r\n', 'Стильная и лаконичная белая женская рубашка без воротника', 'рубашка с потайной застёжкой, без воротника, с баской', 'рубашка женская', 'Белая рубашка 2017 купить в Украине Киеве'),
(204, 2, 'Біла сорочка з баскою (арт. Р- 27)', '&lt;p&gt;Біла сорочка без коміра, &amp;nbsp;з потайною застібкою і передньою баскою призібраною на лінії талії.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%% - бавовна, 20%% - ПЕ.&lt;/p&gt;\r\n', 'Стильна і лаконічна біла жіноча сорочка без коміра', 'сорочка з потайною застібкою, без коміра, з баскою', 'сорочка жіноча', 'Біла сорочка 2017 купити в Україні Києві'),
(205, 3, 'Белая рубашка с потайной застежкой со складками (арт. Р-28)', '&lt;p&gt;Белая рубашка &amp;nbsp;со смещенной потайной застежкой, декорированной складками. Воротник - стойка, длина рукава - 7/8.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-пэ&lt;/p&gt;\r\n', 'Женская белая рубашка для нескучного дресс кода', 'рубашка с потайной застёжкой, с воротником стойкой, с рукавом 7/8', 'рубашка женская', 'Женская белая рубашка 2017 с декоративной застежкой'),
(205, 2, 'Біла сорочка з потайною застібкою із складками (арт. Р- 28)', '&lt;p&gt;Біла сорочка &amp;nbsp;із зміщеною потайною застібкою, декорованою складками. Комір - стійка, довжина рукава - 7/8.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%-бавовна, 20%-пе&lt;/p&gt;\r\n', 'Жіноча біла сорочка для ненудного дресс коду', 'сорочка з потайною застібкою, з коміром стойкою, з рукавом 7/8', 'сорочка жіноча', 'Жіноча біла сорочка 2017 з декоративною застібкою'),
(206, 1, 'СПІДНИЦЯ (С-22)', '', '', '', '', ''),
(206, 3, 'Черная юбка карандаш с кружевной вставкой (арт. С-22)', '&lt;p&gt;Черная юбка &quot;карандаш&quot; с кружевной вставкой.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;полиэстер с добавлением эластана.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Черная юбка карандаш 2017', 'купить черную юбку, юбку-карандаш, с кружевом, в Украине, в Киеве, украинского производителя', 'юбка', 'Классическая черная юбка с кружевной вставкой купить'),
(206, 2, 'Чорна спідниця олівець з мереживною вставкою (арт. С- 22)', '&lt;p&gt;Чорна спідниця &quot; олівець&quot; з мереживною вставкою.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: поліестер з додаванням эластану.&lt;/p&gt;\r\n', 'Чорна спідниця олівець 2017', 'купити чорну спідницю, спідницю-олівець, з мереживом, в Україні, в Києві, українського виробника', 'спідниця', 'Класична чорна спідниця з мереживною вставкою купити'),
(207, 3, 'Черная юбка миди с запахом (арт. С-23)', '&lt;p&gt;Черная юбка со складками и глубоким запахом. В боковых швах карманы, застежка - две пуговицы.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;полиэстер, вискоза с добавлением эластана.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Черная юбка в складку с запахом, длина за колено', 'купить юбку Камизелька, в Украине, Киеве, черную с запахом', 'юбка', 'Юбка черная миди со складками и запахом'),
(207, 2, 'Чорна спідниця міді із запахом (арт. С- 23)', '&lt;p&gt;Чорна спідниця із складками і глибоким запахом. У бічних швах кишені, застібка - два гудзики.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: поліестер, віскоза&amp;nbsp;з додаванням эластану.&lt;/p&gt;\r\n', 'Чорна спідниця в складку із запахом, довжина за коліно', 'купити спідницю Камізелька, в Україні, Києві, чорну із запахом', 'спідниця', 'Спідниця чорна міді із складками і запахом'),
(201, 1, 'Сорочка жіноча (Р-24)', '', '', '', '', ''),
(208, 1, 'БОДІ (Б-15)', '', '', '', '', ''),
(208, 3, 'Рубашка боди голубая с потайной застежкой (арт. Б-15)', '&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;Рубашка боди нежно голубого&amp;nbsp;цвета с потайной застёжкой на пуговицы.&amp;nbsp;Силуэт рубашки боди - полуприталенный. Нижняя планка и стойка воротника изготовлены из ткани с бело-голубым принтом. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Состав ткани: хлопок-80%, пе-20%&lt;/span&gt;&lt;/p&gt;\r\n', 'И под брюки, и под юбку. Стильная и лаконичная нежно голубая рубашка боди.', 'купить рубашку боди в Украине, Киеве, качественные рубашки боди украинского производителя', ' рубашка боди', 'Нежно голубая женская рубашка боди | Купить в КаМизельке| Доставка по Украине'),
(208, 2, 'Сорочка боді блакитна з потайною застібкою (арт. Б- 15)', '&lt;p&gt;Сорочка боді ніжно блакитного кольору з потайною застібкою на гудзики. Силует сорочки боді - напівприталений. Нижня планка і стійка коміра виготовлені з тканини з біло-блакитним принтом. Боді по довжині регулюється еластичною вставкою на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини : бавовна-80%,пе-20%&lt;/p&gt;\r\n', 'І під брюки, і під спідницю. Стильна і лаконічна ніжно блакитна сорочка боді.', 'купити сорочку боді в Україні, Києві, якісні сорочки боді українського виробника', ' сорочка боді', 'Ніжно блакитна жіноча сорочка боді | Купити в Камізельці| Доставка по Україні'),
(209, 1, 'БОДІ (Б-16)', '', '', '', '', ''),
(209, 3, 'Рубашка боди белая с потайной застежкой (арт. Б-16)', '&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;Рубашка боди белого цвета с потайной застёжкой на пуговицы и аккуратным маленьким воротничком.&amp;nbsp;Силуэт рубашки боди - полуприталенный. Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Состав ткани: хлопок-80%,пе-20%&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', 'Стильный дресс код всегда в моде! Лаконичная белая рубашка боди от украинского производителя  Камизелька.', 'белую рубашку боди купить в Киеве, Украине, рубашка боди 2017', ' рубашка боди', 'Белая женская рубашка боди с аккуратным воротничком | Дресс код от КаМизельки| Доставка по Украине'),
(209, 2, 'Сорочка боді біла з потайною застібкою (арт. Б- 16)', '&lt;p&gt;Сорочка боді білого кольору з потайною застібкою на гудзики і акуратним маленьким комірцем. Силует сорочки боді - напівприталений. Боді по довжині регулюється еластичною вставкою на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини : бавовна-80%, пе-20%&lt;/p&gt;\r\n', 'Стильний дресс код завжди в моді! Лаконічна біла сорочка боді від українського виробника  Камізелька.', 'білу сорочку боді купити в Києві, Україні, сорочка боді 2017', ' сорочка боді', 'Біла жіноча сорочка боді з акуратним комірцем | Дресс код від Камізельки| Доставка по Україні'),
(210, 1, 'Блузка жіноча (БЛ-25)', '', '', '', '', ''),
(210, 3, 'Белая свободная блузка (арт. БЛ-25)', '&lt;p&gt;Белая свободная укороченная блузка без воротника с рукавом 3/4. Спинка блузки слегка удиненная с двумя косыми складками по бокам.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80%-хлопок, 20%-ПЭ&lt;/p&gt;\r\n', 'Женская белая блузка, которая удачно подчеркивает линию талии', 'белая укороченная блузка на пуговицах, без воротника, с рукавом 3/4, украинского производства', 'блузка женская', 'Женская белая укороченная блузка 2017 '),
(210, 2, 'Біла вільна блузка (арт. БЛ-25)', '&lt;p&gt;Біла вільна укорочена блузка без коміра з рукавом 3/4. Спинка блузки злегка подовжена з двома косими складками з боків.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%-бавовна, 20%-ПЕ&lt;/p&gt;\r\n', 'Жіноча біла блузка, яка вдало підкреслює лінію талії', 'біла укорочена блузка на гудзиках, без коміра, з рукавом 3/4, українського виробництва', 'блузка жіноча', 'Жіноча біла укорочена блузка 2017'),
(211, 1, 'Блузка жіноча (БЛ-26)', '', '', '', '', ''),
(211, 3, 'Белая укороченная блузка с нежным кружевом (арт. БЛ-26)', '&lt;p&gt;Белая свободная укороченная блузка без воротника с рукавом 3/4. Кокетка блузки и рукава декорированы тонким нежным белым кружевом. Передняя кокетка и нижняя часть спинки застегиваются на пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80% - хлопок, 20%-ПЭ&lt;/p&gt;\r\n', 'Расширенная к низу белая блуза идеально подходит под юбку карандаш и успешно подчеркивает линию талии.', 'белая блуза с элементами кружева, блуза расширенная к низу, блузка до линии талии', 'блузка', 'Белая блузка из новой коллекции 2017 от Камизельки');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`, `meta_Title`) VALUES
(211, 2, 'Біла укорочена блузка з ніжним мереживом (арт. БЛ- 26)', '&lt;p&gt;Біла вільна укорочена блузка без коміра з рукавом 3/4. Кокетка блузи і рукава декоровані тонким ніжним білим мереживом. Передня кокетка і нижня частина спинки застібаються на гудзики.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80%&amp;nbsp;- бавовна, 20%-ПЕ&lt;/p&gt;\r\n', 'Розширена до низу біла блузка ідеально підходить під спідницю &quot;олівець&quot; і успішно підкреслює лінію талії.', 'біла блузка з елементами мережива, блуза розширена до низу, блуза до лінії талії', 'блузка', 'Біла блузка з нової колекції 2017 від Камізельки'),
(212, 1, 'Блузка жіноча (БЛ-27)', '', '', '', '', ''),
(200, 1, 'Сорочка жіноча (Р-23)', '', '', '', '', ''),
(212, 3, 'Голубая укороченная блузка с  белым кружевом (арт. БЛ-27)', '&lt;p&gt;Нежно голубая&amp;nbsp;свободная укороченная блузка без воротника с рукавом 3/4. Кокетка блузки и рукава декорированы тонким белым кружевом. Передняя кокетка и нижняя часть спинки застегиваются на пуговицы.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 80% - хлопок, 20%-ПЭ&lt;/p&gt;\r\n', 'Модная в 2017 году короткая блуза', 'голубая блуза укороченная с кружевными вставками, блуза 2017', 'блузка', 'Голубая блуза из новой коллекции 2017 от Камизельки'),
(212, 2, 'Блакитна укорочена блуза з білим мереживом (арт. БЛ- 27)', '&lt;p&gt;Ніжно блакитна вільна укорочена блузка без коміра з рукавом 3/4. Кокетка блузки і рукава декоровані &amp;nbsp;білим мереживом. Передня кокетка і нижня частина спинки застібаються на гудзики.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 80% - бавовна, 20%-ПЕ&lt;/p&gt;\r\n', 'Модна в 2017 році коротка блуза', 'блакитна блуза укорочена з мереживними вставками, блуза 2017', 'блузка', 'Блакитна блуза з нової колекції 2017 від Камізельки'),
(213, 1, 'Сорочка боді сіро-біла смужка з потайною застібкою (арт. Б- 17)', '', '', '', '', ''),
(213, 3, 'Рубашка боди серо-белая полоска с потайной застежкой (арт. Б-17)', '&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;Рубашка боди с потайной застёжкой на пуговицы .&amp;nbsp;Силуэт рубашки боди - полуприталенный. Модель выполнена из двух разных тканей в серую полоску, воротник и манжеты белые.&amp;nbsp;Боди по длине регулируется эластичной вставкой на крючочках.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 20.7999992370605px;&quot;&gt;&lt;span style=&quot;line-height: 1.6em;&quot;&gt;Состав ткани: хлопок&amp;nbsp; с добавлением&amp;nbsp; полиэстера.&lt;/span&gt;&lt;/p&gt;\r\n', 'Уместная и в офисе, и на прогулке!', 'купить  рубашку боди, с потайной застежкой, в серую полоску, с белым воротником', ' рубашка боди', 'Купить рубашку боди в серую полоску'),
(213, 2, 'Сорочка боді сіро-біла смужка з потайною застібкою (арт. Б- 17)', '&lt;p&gt;Сорочка боді з потайною застібкою на гудзики . Силует сорочки боді - напівприталений. Модель виконана з двох різних тканин в сіру смужку, комір і манжети білі. Боді по довжині регулюється еластичною вставкою на гачках.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад тканини : бавовна &amp;nbsp;з додаванням &amp;nbsp;поліестеру.&lt;/p&gt;\r\n', 'Доречна і в офісі, і на прогулянці!', 'купити чорну сорочку боді, з потайною застібкою, в сіру смужку, з білим коміром', ' сорочка боді', 'Купити сорочку боді в сіру смужку'),
(214, 1, 'СПІДНИЦЯ (С-24)', '', '', '', '', ''),
(214, 3, 'Черная юбка с серой вставкой (арт. С-24)', '&lt;p&gt;Юбка-карандаш с поясом на талии. Перед юбки выполнен из плотного меланжевого трикотажа, слегка укорочен. Задняя часть юбки, с легким заходом на перед, выполнена из черной костюмной ткани. Застежка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;полиэстер с добавлением эластана.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Юбка 2017. &quot;Умная&quot; юбка создана специально для того, чтобы стройные бёдра выглядели ещё стройнее.', 'купить юбку для офиса, стильный дресс код, модная в 2017 году юбка-карандаш', 'юбка', 'Необычная юбка для офиса. Дресс код от Камизельки!'),
(214, 2, 'Чорна спідниця з сірою вставкою (арт. С- 24)', '&lt;p&gt;Спідниця-олівець з поясом на талії. Перед спідниці виконаний з меланжевого трикотажу, злегка укорочений. Задня частина спідниці, з легким заходом на перед, виконана з чорної костюмної тканини. Застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: поліестер з додаванням эластану.&lt;/p&gt;\r\n', 'Спідниця 2017. &quot;Розумна&quot; спідниця створена спеціально для того, щоб стрункі стегна виглядали ще стрункіше.', 'купити спідницю для офісу, стильний дресс код, модна в 2017 році спідниця-олівець', 'спідниця', 'Незвичайна спідниця для офісу. Дресс код від Камізельки!'),
(215, 1, 'СПІДНИЦЯ (С-18)', '', '', '', '', ''),
(215, 3, 'ЮБКА в пол (арт. С-18)', '&lt;p&gt;Легкая темно-синяя юбка макси. Верх юбки оформлен широкой кокеткой без пояса, в боковых швах карманы. Застежка - потайная молния.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 100% хлопок.&lt;/p&gt;\r\n', '', '', 'юбка', ''),
(215, 2, 'СПІДНИЦЯ максі  (арт. С-18)', '&lt;p&gt;Легка темно-синя спідниця максі. Верх спідниці оформлений широкою кокеткою без поясу, в бічних швах кишені. Застібка - потайна блискавка.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 100% бавовна.&lt;/p&gt;\r\n', '', '', 'спідниця', ''),
(207, 1, 'СПІДНИЦЯ (С-23)', '', '', '', '', ''),
(205, 1, 'Сорочка жіноча (Р-28)', '', '', '', '', ''),
(219, 3, 'ЮБКА ПОЛОСАТАЯ ШЕРСТЯНАЯ (арт. С-26)', '&lt;p&gt;Юбка в серо-черную полоску из теплой шерстяной ткани. В боковых швах карманы, застёжка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;шерсть&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Тёплая юбка из коллекции ЗИМА 2017 от Мастерской Камизелька', 'юбка полосатая, юбка серая, тёплая, шерстяная, юбка с карманами в боковых швах', 'юбка', 'Юбка в полоску тёплая'),
(220, 1, 'СУКНЯ ТРИКОТАЖНА А-силуэт (П- 14)', '', '', '', '', ''),
(220, 3, 'ПЛАТЬЕ ТРИКОТАЖНОЕ А-силуэт (П-14)', '&lt;p&gt;Платье из трикотажа двух оттенков серого.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Трикотажное платье А силуэта', 'платье трикотажное, платье серое, платье с косами, платье до колена', 'платье', 'Купить платье из новой коллекции зима 2017 от Мастерской Камизелька'),
(220, 2, 'СУКНЯ ТРИКОТАЖНА А-силует (П- 14)', '&lt;p&gt;Сукня з трикотажу двох відтінків сірого.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Трикотажна сукня А силуету', 'сукня трикотажна, сукня сіра, сукня з косами, сукня до коліна', 'Сукня', 'Купити теплу сукню з нової колекції ЗИМА 2017!'),
(221, 1, 'СУКНЯ МІДІ ТРИКОТАЖНА В''ЯЗАНІ КОСИ (П- 15)', '', '', '', '', ''),
(221, 3, 'ПЛАТЬЕ МИДИ ТРИКОТАЖНОЕ ВЯЗАНЫЕ КОСЫ (П-15)', '&lt;p&gt;Серое платье из трикотажа отрезное в верхней части бёдер. Рукава - митенки.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'Трикотажное платье с вязаными косами', 'платье трикотажное, платье серое, платье с косами, платье миди, платье с рукавами- митенками', 'платье', 'Купить платье из новой коллекции зима 2017 от Мастерской Камизелька'),
(221, 2, 'СУКНЯ МІДІ ТРИКОТАЖНА В''ЯЗАНІ КОСИ (П- 15)', '&lt;p&gt;Сіра сукня з трикотажу відрізна у верхній частині стегон. Рукави - мітенки.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Трикотажна сукня з в''язаними косами', 'сукня трикотажна, сукня сіра, сукня з косами, сукня міді, сукня з рукавами- мітенками', 'Сукня', 'Купити сукню з нової колекції зима 2017 від Майстерні Камізелька'),
(222, 1, 'сукня сорочка синя (п 20)', '', '', '', '', ''),
(222, 3, 'платье- рубашка синее (п 20)', '&lt;p&gt;Свободное платье рубашка с цельнокроеным рукавом и застежкой поло.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ&lt;/p&gt;\r\n', 'платье рубашка синее ', ' платье до колена, платье рубашка, ', 'платье', 'Купить платье из новой коллекциивесна 2017 от Мастерской Камизелька'),
(222, 2, 'сукня - сорочка синя (п 20)', '&lt;p&gt;Вільна сукня сорочка з суцільнокроєним рукавом і застібкою поло.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'сукня з суцільнокроєним рукавом', 'сукня до коліна', 'Сукня', 'Купити сукню сорочку'),
(223, 1, 'Светр-водолазка з рукавом 3/4 (СВ-01)', '', '', '', '', ''),
(223, 3, 'водолазка с рукавом 3/4 (СВ-01)', '&lt;p&gt;Легкий трикотажный гольф с рукавом 3/4&lt;/p&gt;\r\n\r\n&lt;p&gt;В наличии два цвета: черный и серый.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пе&lt;/p&gt;\r\n', 'Водолазка трикотажная ', 'водолазка, свитер-водолазка, одежда Камизелька', 'водолазка', 'Легкий трикотажный свитер-водолазка с рукавом 3/4'),
(223, 2, 'водолазка з рукавом 3/4 (СВ-01)', '&lt;p&gt;Легкий трикотажний гольф з рукавом 3/4&lt;/p&gt;\r\n\r\n&lt;p&gt;В наявності два кольори: чорний і сірий.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Водолазка трикотажна', 'водолазка, светр-водолазка, одяг Камізелька', 'водолазка', 'Легкий трикотажний светр-водолазка з рукавом 3/4'),
(224, 1, 'Блуза жіноча кремова з бантом   (БЛ- 28)', '', '', '', '', ''),
(224, 3, 'Блуза женская кремовая с бантом  (БЛ-28)', '&lt;p&gt;Легкая свободная блуза кремового цвета с длинными рукавами ,кокеткой на спинке и декоративным бантом спереди.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: вискоза, пэ.&lt;/p&gt;\r\n', 'Воздушная кремовая блузка с V образной горловиной', 'легкая блуза, кремовая блузка, блуза с бантом', 'блуза', 'Легкая блуза с кокеткой на спине и с бантом спереди'),
(224, 2, 'Блуза жіноча кремова з бантом   (БЛ- 28)', '&lt;p&gt;Легка вільна блуза кремового кольору з довгими рукавами,кокеткою на спинці і декоративним бантом спереду.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе.&lt;/p&gt;\r\n', 'Повітряна кремова блуза з V образною горловиною', 'легка блуза, кремова блуза, блуза з бантом', 'Блуза', 'Легка блуза з кокеткою на спинці і з бантом спереду'),
(225, 1, 'КАМІЗЕЛЬКА СІРА ТРИКОТАЖНА ТЕПЛА (КА- 13)', '', '', '', '', ''),
(296, 1, 'Сарафан теплий з червоною клітинкою  (СН 06)', '', '', '', '', ''),
(225, 3, 'ЖИЛЕТКА СЕРАЯ ТРИКОТАЖНАЯ ТЕПЛАЯ (КА-13)', '&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Серая жилетка из плотного трикотажа с одним карманом,&amp;nbsp;без подкладки.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;letter-spacing: 0px; font-size: 16px; line-height: 21px; color: rgb(66, 73, 77); font-family: ''Roboto Condensed'', Helvetica, Arial, sans-serif;&quot;&gt;Состав: вискоза, пе&lt;/p&gt;\r\n', 'Женская жилетка от украинского производителя Камизелька, купить Киев Украина', 'жилет женский серый, теплая женская жилетка украинского производства', 'жилет, жилетка', 'Женская серая жилетка из плотного трикотажа'),
(225, 2, 'КАМІЗЕЛЬКА СІРА ТРИКОТАЖНА ТЕПЛА (КА- 13)', '&lt;p&gt;Сіра камізелька з щільного трикотажу з однією кишенею, без підкладки.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Жіноча камізелька від українського виробника Камізелька, купити Київ Україна', 'жилет жіночий сірий, теплий жіночий жилет українського виробництва', 'жилет, камізелька', 'Жіноча сіра камізелька з теплого трикотажу'),
(226, 3, 'юбка черная кружевная со складками ( С 29)', '&lt;p&gt;Юбка черная кружевная на подкладке с поясом, застёжка на потайную молнию.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Черная кружевная юбка на подкладке от Мастерской Камизелька', 'юбка из кружева черная', 'юбка', 'Юбка черная кружевная'),
(226, 2, 'спідниця чорна мереживна із складками ( С 29)', '&lt;p&gt;Спідниця чорна мереживна на підкладці з поясом, застібка на потайну блискавку.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Чорна мереживна спідниця на підкладці від Майстерні Камізелька', 'спідниця з мережива чорна', 'спідниця', 'Спідниця чорна мереживна'),
(227, 1, 'СПІДНИЦЯ ЗІ СКЛАДКОЮ- ЗАПАХОМ ФУКСІЯ (арт. С- 27)', '', '', '', '', ''),
(227, 3, 'ЮБКА СО СКЛАДКОЙ- ЗАПАХОМ ФУКСИЯ (арт. С-27)', '&lt;p&gt;Юбка со складкой-запахом на пуговицах цвета фуксии.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: &lt;span style=&quot;font-size:12px;&quot;&gt;&lt;span style=&quot;color: rgb(66, 73, 77); font-family: &amp;quot;Roboto Condensed&amp;quot;, Helvetica, Arial, sans-serif; line-height: 21px;&quot;&gt;вискоза, пэ&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n', 'Юбка цвета фуксии с складкой-запахом', 'юбка со складкой, юбка с запахом, юбка цвета фуксии, ', 'юбка', 'Юбка с запахом-складкой'),
(227, 2, 'СПІДНИЦЯ ЗІ СКЛАДКОЮ- ЗАПАХОМ ФУКСІЯ (арт. С- 27)', '&lt;p&gt;Спідниця із складкою-запахом на гудзиках&amp;nbsp;кольору фуксії.&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: віскоза, пе&lt;/p&gt;\r\n', 'Спідниця кольору фуксії із складкою-запахом', 'спідниця із складкою, спідниця із запахом, спідниця кольору фуксії', 'спідниця', 'СПІДНИЦЯ ЗІ СКЛАДКОЮ- ЗАПАХОМ'),
(231, 3, 'Белая рубашка с кружевными вставками и потайной застежкой (арт. Р-29)', '&lt;p&gt;Белая рубашка &amp;nbsp;с потайной застежкой, декоративными кружевными вставками на локтях и кружевной кокеткой на спинке.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 95% высококачественный хлопок, 5% эластан&lt;/p&gt;\r\n', 'Женская белая рубашка с кружевной кокеткой на спине и кружевными вставками на локтях', 'рубашка с потайной застёжкой,с кружевом, с кокеткой', 'рубашка женская', 'Женская белая рубашка 2017 из высококачественного хлопка'),
(231, 2, 'Біла сорочка з мереживними вставками і потайною застібкою (арт. Р- 29)', '&lt;p&gt;Біла сорочка &amp;nbsp;з потайною застібкою, декоративними мереживними вставками на ліктях і мереживною кокеткою на спинці.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 95% високоякісна бавовна, 5% еластан&lt;/p&gt;\r\n', 'Жіноча біла сорочка з мереживною кокеткою на спині і мереживними вставками на ліктях', 'сорочка з потайною застібкою, з мереживом, з кокеткою', 'сорочка жіноча', 'Жіноча біла сорочка 2017 з високоякісної бавовни'),
(232, 1, 'Біла сорочка під запонки  з мереживним коміром і манжетами (арт. Р- 30)', '', '', '', '', ''),
(232, 3, 'Белая рубашка под запонки  с кружевным воротником и манжетами (арт. Р-30)', '&lt;p&gt;Белая рубашка под запонки с потайной застежкой, кружевным воротником и манжетами.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: 95% высококачественный хлопок, 5% эластан&lt;/p&gt;\r\n', 'Женская белая рубашка под запонки с кружевным воротником и манжетами', 'рубашка с потайной застёжкой под запонки', 'рубашка женская', 'Женская белая рубашка под запонки лакшери сегмент от Камизельки'),
(232, 2, 'Біла сорочка під запонки  з мереживним коміром і манжетами (арт. Р- 30)', '&lt;p&gt;Біла сорочка під запонки з потайною застібкою, мереживним коміром і манжетами.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Склад: 95% високоякісна бавовна, 5% еластан&lt;/p&gt;\r\n', 'Жіноча біла сорочка під запонки з мереживним коміром і манжетами', 'сорочка з потайною застібкою під запонки', 'сорочка жіноча', 'Жіноча біла сорочка під запонки лакшері сегмент від Камізельки');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=490 ;

--
-- Очистить таблицу перед добавлением данных `oc_product_discount`
--

TRUNCATE TABLE `oc_product_discount`;
--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(489, 296, 1, 0, 0, '1488.0000', '2018-02-13', '2018-03-10');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_filter`
--

TRUNCATE TABLE `oc_product_filter`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9013 ;

--
-- Очистить таблицу перед добавлением данных `oc_product_image`
--

TRUNCATE TABLE `oc_product_image`;
--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(8937, 307, 'data/products/VESNA 18/Kamizelka_02517.jpg', 0),
(6851, 47, 'data/products/136-Studio-Session.jpg', 0),
(6844, 41, 'data/products/Studio-Session-170.jpg', 0),
(6845, 41, 'data/products/Studio-Session-016.jpg', 0),
(9008, 306, 'data/products/VESNA 18/Kamizelka_01980.jpg', 2),
(8940, 305, 'data/products/VESNA 18/Kamizelka_01670.jpg', 2),
(8939, 305, 'data/products/VESNA 18/Kamizelka_01675.jpg', 3),
(9006, 306, 'data/products/VESNA 18/Kamizelka_02002.jpg', 1),
(8835, 298, 'data/products/ZIMA18/01268.jpg', 0),
(8832, 299, 'data/products/ZIMA18/01242.jpg', 0),
(6850, 47, 'data/products/134-Studio-Session.jpg', 0),
(6849, 47, 'data/products/138-Studio-Session.jpg', 0),
(6843, 41, 'data/products/Studio-Session-171.jpg', 0),
(8844, 296, 'data/products/ZIMA18/01524.jpg', 0),
(8830, 299, 'data/products/ZIMA18/01218.jpg', 0),
(7978, 75, 'data/products/110-Studio-Session.jpg', 0),
(7976, 75, 'data/products/096-Studio-Session.jpg', 0),
(7977, 75, 'data/products/105-Studio-Session.jpg', 0),
(9007, 306, 'data/products/VESNA 18/Kamizelka_01988.jpg', 3),
(8809, 275, 'data/products/LETO17/DSC_0255.jpg', 2),
(8808, 275, 'data/products/LETO17/DSC_0267.jpg', 1),
(6846, 49, 'data/Studio-Session-037.jpg', 2),
(6847, 49, 'data/Studio-Session-040.jpg', 3),
(6848, 49, 'data/Studio-Session-035.jpg', 1),
(8838, 302, 'data/products/ZIMA18/01175.jpg', 0),
(8837, 302, 'data/products/ZIMA18/01169.jpg', 0),
(8777, 303, 'data/products/ZIMA18/00943.jpg', 0),
(8765, 297, 'data/products/ZIMA18/01079.jpg', 0),
(8938, 305, 'data/products/VESNA 18/Kamizelka_01725.jpg', 1),
(8764, 297, 'data/products/ZIMA18/01086.jpg', 0),
(8833, 298, 'data/products/ZIMA18/01266.jpg', 0),
(8831, 299, 'data/products/ZIMA18/01184.jpg', 0),
(8430, 293, 'data/products/osen_zima17_18/Capture00609.jpg', 0),
(8443, 289, 'data/products/osen_zima17_18/Capture00385.jpg', 2),
(8442, 289, 'data/products/osen_zima17_18/Capture00391.jpg', 1),
(8441, 289, 'data/products/osen_zima17_18/Capture00374.jpg', 3),
(8788, 287, 'data/products/osen_zima17_18/Capture00688.jpg', 0),
(8787, 287, 'data/products/osen_zima17_18/Capture00664-(2).jpg', 0),
(8487, 288, 'data/products/osen_zima17_18/Capture00763.jpg', 0),
(8486, 288, 'data/products/osen_zima17_18/Capture00736.jpg', 0),
(8493, 286, 'data/products/osen_zima17_18/Capture00806.jpg', 0),
(8492, 286, 'data/products/osen_zima17_18/Capture00809-(1).jpg', 0),
(8429, 292, 'data/products/osen_zima17_18/Capture00831.jpg', 0),
(8428, 292, 'data/products/osen_zima17_18/Capture00503.jpg', 0),
(8464, 290, 'data/products/osen_zima17_18/Capture00719-(1).jpg', 2),
(8463, 290, 'data/products/osen_zima17_18/Capture00722.jpg', 3),
(8462, 290, 'data/products/osen_zima17_18/Capture00729.jpg', 1),
(8427, 292, 'data/products/osen_zima17_18/Capture00504.jpg', 0),
(8657, 291, 'data/products/osen_zima17_18/Capture00866.jpg', 1),
(8656, 291, 'data/products/osen_zima17_18/Capture00888.jpg', 2),
(8655, 291, 'data/products/osen_zima17_18/Capture00856.jpg', 3),
(8509, 285, 'no_image.jpg', 3),
(8510, 285, 'data/products/osen_zima17_18/Capture00274_1.jpg', 1),
(8511, 285, 'data/products/osen_zima17_18/Capture00313_1.jpg', 2),
(8773, 300, 'data/products/ZIMA18/01480.jpg', 0),
(8774, 300, 'data/products/ZIMA18/01468.jpg', 0),
(8941, 305, 'data/products/VESNA 18/Kamizelka_01730.jpg', 0),
(6440, 51, 'data/products/354-Studio-Session.jpg', 0),
(6439, 51, 'data/products/358-Studio-Session.jpg', 0),
(6438, 51, 'data/products/355-Studio-Session.jpg', 0),
(8782, 301, 'data/products/ZIMA18/01517.jpg', 0),
(8843, 296, 'data/products/ZIMA18/01529.jpg', 0),
(8781, 301, 'data/products/ZIMA18/01499.jpg', 0),
(8780, 301, 'data/products/ZIMA18/01417.jpg', 0),
(8779, 304, 'data/products/ZIMA18/01524-(1).jpg', 0),
(8778, 304, 'data/products/ZIMA18/01559-(1).jpg', 0),
(8776, 303, 'data/products/ZIMA18/00926.jpg', 0),
(8775, 303, 'data/products/ZIMA18/00950.jpg', 0),
(8763, 297, 'data/products/ZIMA18/01154.jpg', 0),
(8431, 293, 'data/products/osen_zima17_18/Capture00608.jpg', 0),
(8786, 287, 'data/products/osen_zima17_18/Capture00693.jpg', 0),
(8485, 288, 'data/products/osen_zima17_18/Capture00822_1.jpg', 0),
(8484, 288, 'data/products/osen_zima17_18/Capture00822.jpg', 0),
(8836, 302, 'data/products/ZIMA18/01162.jpg', 0),
(8650, 280, 'data/products/LETO17/DSC_0654-(1).jpg', 0),
(8649, 280, 'data/products/LETO17/DSC_0683-(1).jpg', 0),
(8272, 283, 'data/products/osen_zima17_18/Capture00227_1.jpg', 2),
(8273, 283, 'data/products/osen_zima17_18/Capture00227.jpg', 4),
(8271, 283, 'data/products/osen_zima17_18/Capture00246.jpg', 3),
(8847, 284, 'data/products/osen_zima17_18/Capture00307.jpg', 3),
(8846, 284, 'data/products/osen_zima17_18/Capture00274.jpg', 1),
(8845, 284, 'data/products/osen_zima17_18/Capture00313.jpg', 2),
(8440, 281, 'data/products/osen_zima17_18/Capture00123.jpg', 3),
(8439, 281, 'data/products/osen_zima17_18/Capture00083.jpg', 2),
(8438, 281, 'data/products/osen_zima17_18/Capture00089.jpg', 4),
(8241, 274, 'data/products/LETO17/DSC_0059_1-(32).jpg', 0),
(8240, 274, 'data/products/LETO17/DSC_0059_1-(40).jpg', 0),
(8712, 98, 'data/products/174-Studio-Session.jpg', 0),
(8711, 98, 'data/products/175-Studio-Session.jpg', 0),
(8710, 98, 'data/products/332-Studio-Session.jpg', 0),
(8842, 296, 'data/products/ZIMA18/01559.jpg', 0),
(8762, 294, 'data/products/osen_zima17_18/Capture00637.jpg', 2),
(8761, 294, 'data/products/osen_zima17_18/Capture00625.jpg', 1),
(8450, 295, 'data/products/osen_zima17_18/Capture00553.jpg', 1),
(8451, 295, 'data/products/osen_zima17_18/Capture00547.jpg', 2),
(8452, 295, 'data/products/osen_zima17_18/Capture00532.jpg', 3),
(7844, 252, 'data/products/vesna17/2017_02_2601852.jpg', 1),
(8415, 120, 'data/products/vesna15/Studio_09_03_2015-188.jpg', 3),
(8414, 120, 'data/products/vesna15/Studio_09_03_2015-189.jpg', 2),
(8108, 262, 'data/products/vesna17/2017_02_2602029.jpg', 2),
(8107, 262, 'data/products/vesna17/2017_02_2602028.jpg', 1),
(8106, 262, 'data/products/vesna17/2017_02_2602025.jpg', 3),
(8519, 261, 'data/products/vesna17/2017_02_2601646.jpg', 3),
(8518, 261, 'data/products/vesna17/2601646.jpg', 2),
(8596, 233, 'data/products/zima 17/DSC_1278.jpg', 1),
(8595, 233, 'data/products/zima 17/2016_11_0501418.jpg', 2),
(8394, 221, 'data/products/zima 17/2016_11_0501072.jpg', 4),
(8661, 219, 'data/products/zima 17/2016_11_0500878.jpg', 4),
(8406, 191, 'data/products/vesna 16/Capture00318.jpg', 3),
(7591, 243, 'data/products/vesna17/2017_02_2602248.jpg', 4),
(8637, 260, 'data/products/vesna17/2017_02_2602227_1.jpg', 4),
(8636, 260, 'data/products/vesna17/2017_02_2602210_2.jpg', 1),
(8635, 260, 'data/products/vesna17/2017_02_2602215_1.jpg', 2),
(8386, 244, 'data/products/vesna17/2017_02_2602293.jpg', 4),
(8385, 244, 'data/products/vesna17/2017_02_2602292.jpg', 3),
(8384, 244, 'data/products/vesna17/2017_02_2602310.jpg', 2),
(8383, 244, 'data/products/vesna17/2017_02_2602299.jpg', 1),
(7474, 245, 'data/products/zima 17/01183.jpg', 1),
(7475, 245, 'data/products/zima 17/01193.jpg', 2),
(7476, 245, 'data/products/zima 17/01178.jpg', 3),
(8517, 261, 'data/products/vesna17/2017_02_2601642.jpg', 1),
(8634, 260, 'data/products/vesna17/2017_02_2602227.jpg', 3),
(7602, 226, 'data/products/vesna17/2017_02_2602210_1.jpg', 4),
(7603, 226, 'data/products/vesna17/2017_02_2602227.jpg', 1),
(8600, 259, 'data/products/vesna17/2017_02_2601985.jpg', 4),
(8599, 259, 'data/products/vesna17/2017_02_2601992.jpg', 3),
(8598, 259, 'data/products/vesna17/2017_02_2601987.jpg', 2),
(8597, 259, 'data/products/vesna17/2017_02_2601970.jpg', 1),
(8129, 257, 'data/products/vesna17/2017_02_2601779_1.jpg', 3),
(8128, 257, 'data/products/vesna17/2017_02_2601779.jpg', 4),
(8127, 257, 'data/products/vesna17/2017_02_2601790.jpg', 1),
(8654, 237, 'data/products/vesna17/2017_02_2601720_1.jpg', 4),
(8652, 237, 'data/products/vesna17/2017_02_2601680.jpg', 2),
(7743, 258, 'data/products/vesna17/2017_02_2601766.jpg', 2),
(8569, 238, 'data/products/vesna17/2017_02_2601675-(1).jpg', 2),
(7742, 258, 'data/products/vesna17/2017_02_2601762.jpg', 1),
(7740, 258, 'data/products/vesna17/2017_02_2601740.jpg', 4),
(8669, 254, 'data/products/vesna17/2017_02_2601887.jpg', 2),
(8604, 253, 'data/products/vesna17/2017_02_2601946.jpg', 1),
(8668, 254, 'data/products/vesna17/2017_02_2601847.jpg', 1),
(8523, 246, 'data/products/vesna17/2017_02_2602130.jpg', 4),
(8522, 246, 'data/products/vesna17/2017_02_2602126.jpg', 1),
(8521, 246, 'data/products/vesna17/2017_02_2602147-(1).jpg', 3),
(8520, 246, 'data/products/vesna17/2017_02_2602139.jpg', 2),
(8603, 253, 'data/products/vesna17/2017_02_2601945.jpg', 2),
(8602, 253, 'data/products/vesna17/2017_02_2601958.jpg', 4),
(8601, 253, 'data/products/vesna17/2017_02_2601958_1.jpg', 3),
(8624, 247, 'data/products/vesna17/2017_02_2602164.jpg', 4),
(8623, 247, 'data/products/vesna17/2017_02_2602161.jpg', 3),
(8622, 247, 'data/products/vesna17/2017_02_2602191.jpg', 2),
(8621, 247, 'data/products/vesna17/2017_02_2602169.jpg', 1),
(8516, 261, 'data/products/vesna17/блуза.jpg', 4),
(8126, 257, 'data/products/vesna17/2017_02_2601787.jpg', 2),
(8527, 256, 'data/products/vesna17/2017_02_2601826.jpg', 4),
(8526, 256, 'data/products/vesna17/2017_02_2601825.jpg', 2),
(8125, 248, 'data/products/vesna17/2017_02_2602035.jpg', 1),
(8124, 248, 'data/products/vesna17/2017_02_2602034.jpg', 2),
(8123, 248, 'data/products/vesna17/2017_02_2602037_1.jpg', 3),
(8525, 256, 'data/products/vesna17/2017_02_2601811_1.jpg', 3),
(8524, 256, 'data/products/vesna17/2017_02_2601811.jpg', 1),
(7681, 255, 'data/products/vesna17/2017_02_2602118_1.jpg', 1),
(7680, 255, 'data/products/vesna17/2017_02_2601693.jpg', 3),
(7620, 249, 'data/products/vesna17/2017_02_2602079.jpg', 1),
(7621, 249, 'data/products/vesna17/2017_02_2602082.jpg', 2),
(7622, 249, 'data/products/vesna17/2017_02_2602079_1.jpg', 3),
(7623, 249, 'data/products/vesna17/2017_02_2602076.jpg', 4),
(8667, 254, 'data/products/vesna17/2017_02_2601869_1.jpg', 3),
(8666, 254, 'data/products/vesna17/2017_02_2601846.jpg', 4),
(7616, 250, 'data/products/vesna17/2017_02_2602056.jpg', 1),
(7617, 250, 'data/products/vesna17/2017_02_2602062.jpg', 2),
(7618, 250, 'data/products/vesna17/2017_02_2602056_1.jpg', 3),
(7619, 250, 'data/products/vesna17/2017_02_2602066.jpg', 4),
(7678, 255, 'data/products/vesna17/2017_02_2601701_1.jpg', 2),
(7679, 255, 'data/products/vesna17/2017_02_2601700.jpg', 4),
(8559, 251, 'data/products/vesna17/2017_02_2602110_1.jpg', 3),
(8558, 251, 'data/products/vesna17/2017_02_2602118.jpg', 2),
(8557, 251, 'data/products/vesna17/2017_02_2602113.jpg', 1),
(8556, 251, 'data/products/vesna17/2017_02_2602110.jpg', 4),
(8131, 231, 'data/products/zima 17/01279.jpg', 1),
(8132, 231, 'data/products/zima 17/01284_1.jpg', 4),
(8155, 229, 'data/products/zima 17/2016_11_0500907.jpg', 0),
(8154, 229, 'data/products/zima 17/2016_11_0500909.jpg', 0),
(8153, 229, 'data/products/zima 17/2016_11_0500904.jpg', 0),
(6758, 228, 'data/products/228-Studio-Session.jpg', 0),
(6759, 228, 'data/products/232-Studio-Session.jpg', 0),
(6760, 228, 'data/products/231-Studio-Session.jpg', 0),
(8157, 97, 'data/products/zima 17/2016_11_0500901.jpg', 0),
(8158, 97, 'data/products/zima 17/2016_11_0500896.jpg', 0),
(8901, 309, 'data/products/VESNA 18/Kamizelka_02108.jpg', 0),
(8133, 231, 'data/products/zima 17/01284.jpg', 2),
(8156, 97, 'data/products/zima 17/2016_11_0500899.jpg', 0),
(8806, 266, 'data/products/LETO17/DSC_0246.jpg', 0),
(8811, 269, 'data/products/LETO17/DSC_0592-(2).jpg', 1),
(8834, 298, 'data/products/ZIMA18/01309.jpg', 0),
(8812, 269, 'data/products/LETO17/DSC_0592-(1).jpg', 3),
(8810, 269, 'data/products/LETO17/DSC_0605.jpg', 2),
(8627, 268, 'data/products/LETO17/DSC_0808.jpg', 0),
(8208, 264, 'data/products/LETO17/DSC_0756.jpg', 0),
(8816, 265, 'data/products/LETO17/DSC_0565.jpg', 0),
(8815, 265, 'data/products/LETO17/DSC_0600-(1).jpg', 0),
(8227, 263, 'data/products/osen16/2016_07_23_Studio-00619.jpg', 2),
(8226, 263, 'data/products/osen16/2016_07_23_Studio-00606.jpg', 4),
(8225, 263, 'data/products/titul/2016_07_23_Studio-00612_1.jpg', 3),
(8008, 139, 'data/products/Leto15/Studio_19_07_2015-387.jpg', 1),
(8007, 139, 'data/products/Leto15/Studio_19_07_2015-393.jpg', 2),
(8006, 139, 'data/products/Leto15/Studio_19_07_2015-402.jpg', 4),
(8005, 139, 'data/products/Leto15/Studio_19_07_2015-411.jpg', 5),
(6497, 149, 'data/products/Leto15/Studio_19_07_2015-420.jpg', 0),
(6496, 149, 'data/products/Leto15/Studio_19_07_2015-419.jpg', 0),
(6495, 149, 'data/products/Leto15/Studio_19_07_2015-442.jpg', 0),
(6494, 149, 'data/products/Leto15/Studio_19_07_2015-445.jpg', 0),
(6835, 150, 'data/products/Leto15/Studio_19_07_2015-611.jpg', 4),
(6832, 150, 'data/products/Leto15/Studio_19_07_2015-623.jpg', 2),
(6833, 150, 'data/products/Leto15/Studio_19_07_2015-619.jpg', 1),
(6834, 150, 'data/products/Leto15/Studio_19_07_2015-621.jpg', 3),
(9005, 306, 'data/products/VESNA 18/Kamizelka_01914.jpg', 0),
(8224, 263, 'data/products/osen16/2016_07_23_Studio-00617.jpg', 1),
(7590, 243, 'data/products/vesna17/2017_02_2602237_1.jpg', 3),
(8590, 242, 'data/products/vesna17/2017_02_2602399.jpg', 2),
(8588, 242, 'data/products/vesna17/2017_02_2602392.jpg', 5),
(8589, 242, 'data/products/vesna17/2017_02_2602399-(1).jpg', 4),
(8413, 152, 'data/products/Leto15/Studio_19_07_2015-459.jpg', 0),
(8412, 152, 'data/products/Leto15/Studio_19_07_2015-452.jpg', 0),
(8411, 152, 'data/products/Leto15/Studio_19_07_2015-477.jpg', 0),
(8410, 152, 'data/products/Leto15/Studio_19_07_2015-459_1.jpg', 0),
(8665, 234, 'data/products/zima 17/00977.jpg', 2),
(8378, 235, 'data/products/vesna17/2017_02_2602455-(1).jpg', 2),
(8374, 236, 'data/products/vesna17/2017_02_2602415.jpg', 2),
(8373, 236, 'data/products/vesna17/2017_02_2602432.jpg', 1),
(8372, 236, 'data/products/vesna17/2017_02_2602418.jpg', 3),
(8375, 235, 'data/products/vesna17/2017_02_2602474-(2).jpg', 3),
(8376, 235, 'data/products/vesna17/2017_02_2602451.jpg', 1),
(8377, 235, 'data/products/vesna17/2017_02_2602471-(1).jpg', 4),
(7996, 158, 'data/products/Leto15/Studio_19_07_2015-520.jpg', 4),
(7995, 158, 'data/products/Leto15/Studio_19_07_2015-515.jpg', 3),
(7994, 158, 'data/products/Leto15/Studio_19_07_2015-513.jpg', 2),
(7993, 158, 'data/products/Leto15/Studio_19_07_2015-516.jpg', 1),
(8491, 286, 'data/products/osen_zima17_18/Capture00791.jpg', 0),
(8000, 159, 'data/products/Leto15/Studio_19_07_2015-660.jpg', 4),
(7997, 159, 'data/products/Leto15/Studio_19_07_2015-661.jpg', 1),
(7998, 159, 'data/products/Leto15/Studio_19_07_2015-663.jpg', 2),
(7999, 159, 'data/products/Leto15/Studio_19_07_2015-667_1.jpg', 3),
(8891, 308, 'data/products/VESNA 18/Kamizelka_02500-(1).jpg', 0),
(8900, 309, 'data/products/VESNA 18/Kamizelka_02123.jpg', 0),
(8890, 308, 'data/products/VESNA 18/Kamizelka_02500.jpg', 0),
(8889, 308, 'data/products/VESNA 18/Kamizelka_02501.jpg', 0),
(8888, 308, 'data/products/VESNA 18/Kamizelka_02483.jpg', 0),
(8936, 307, 'data/products/VESNA 18/Kamizelka_02528.jpg', 0),
(8935, 307, 'data/products/VESNA 18/Kamizelka_02557.jpg', 0),
(8934, 307, 'data/products/VESNA 18/Kamizelka_02531.jpg', 0),
(6815, 163, 'data/products/Leto15/Studio_19_07_2015-657.jpg', 2),
(6816, 163, 'data/products/Leto15/Studio_19_07_2015-656.jpg', 1),
(6814, 163, 'data/products/Leto15/Studio_19_07_2015-655_1.jpg', 3),
(6813, 163, 'data/products/Leto15/Studio_19_07_2015-655.jpg', 4),
(7589, 243, 'data/products/vesna17/2017_02_2602239.jpg', 2),
(7588, 243, 'data/products/vesna17/2017_02_2602237.jpg', 1),
(8586, 242, 'data/products/vesna17/2017_02_2602392-(1).jpg', 1),
(8664, 234, 'data/products/zima 17/00970.jpg', 1),
(7138, 204, 'data/products/osen16/2016_07_23_Studio-00553.jpg', 4),
(7139, 204, 'data/products/osen16/2016_07_23_Studio-00536.jpg', 1),
(8662, 234, 'data/products/zima 17/00977-(1).jpg', 4),
(8663, 234, 'data/products/zima 17/00993.jpg', 3),
(5352, 165, 'data/products/Leto15/Studio_19_07_2015-683.jpg', 1),
(5351, 165, 'data/products/Leto15/Studio_19_07_2015-682_1.jpg', 2),
(5350, 165, 'data/products/Leto15/Studio_19_07_2015-682.jpg', 3),
(8213, 270, 'no_image.jpg', 0),
(8212, 270, 'data/products/LETO17/DSC_0683.jpg', 0),
(8211, 270, 'data/products/LETO17/DSC_0654.jpg', 0),
(8805, 266, 'data/products/LETO17/DSC_0238.jpg', 0),
(8244, 267, 'data/products/LETO17/DSC_0865.jpg', 0),
(8243, 267, 'data/products/LETO17/DSC_0874.jpg', 0),
(8242, 267, 'data/products/LETO17/DSC_0864.jpg', 0),
(8626, 268, 'data/products/LETO17/DSC_0837.jpg', 0),
(8625, 268, 'data/products/LETO17/DSC_0835.jpg', 0),
(8207, 264, 'data/products/LETO17/DSC_0771.jpg', 0),
(8206, 264, 'data/products/LETO17/DSC_0747-(1).jpg', 0),
(8804, 266, 'data/products/LETO17/DSC_0213_1-(1).jpg', 0),
(6855, 170, 'data/products/Leto15/Studio_19_07_2015-611.jpg', 1),
(6854, 170, 'data/products/Leto15/Studio_19_07_2015-617_1.jpg', 3),
(6853, 170, 'data/products/Leto15/Studio_19_07_2015-615.jpg', 4),
(6852, 170, 'data/products/Leto15/Studio_19_07_2015-617.jpg', 2),
(8772, 300, 'data/products/ZIMA18/01478.jpg', 0),
(8152, 171, 'data/products/Leto15/Studio_19_07_2015-631.jpg', 3),
(8150, 171, 'data/products/Leto15/Studio_19_07_2015-633.jpg', 1),
(8151, 171, 'data/products/Leto15/Studio_19_07_2015-631_1.jpg', 2),
(8115, 181, 'data/products/vesna 16/Capture00164.jpg', 4),
(8145, 188, 'data/products/vesna 16/Capture00289.jpg', 3),
(8807, 275, 'data/products/LETO17/DSC_0256.jpg', 3),
(8550, 279, 'data/products/LETO17/DSC_0688-(1).jpg', 1),
(8549, 279, 'data/products/LETO17/DSC_0700.jpg', 2),
(8548, 279, 'data/products/LETO17/DSC_0706.jpg', 3),
(8648, 276, 'data/products/LETO17/DSC_0337.jpg', 2),
(8647, 276, 'data/products/LETO17/DSC_0316.jpg', 1),
(8646, 276, 'data/products/LETO17/DSC_0332.jpg', 4),
(8633, 278, 'data/products/LETO17/DSC_0474_1.jpg', 3),
(8803, 272, 'data/products/LETO17/DSC_0415.jpg', 0),
(8802, 272, 'data/products/LETO17/DSC_0422.jpg', 0),
(8229, 277, 'data/products/LETO17/DSC_0374.jpg', 4),
(8228, 277, 'data/products/LETO17/DSC_0346.jpg', 1),
(8801, 272, 'data/products/LETO17/DSC_0394.jpg', 0),
(8632, 278, 'data/products/LETO17/DSC_0491.jpg', 4),
(8631, 278, 'data/banner/DSC_0541.jpg', 0),
(8630, 278, 'data/products/LETO17/DSC_0472.jpg', 2),
(8202, 177, 'data/products/titul/Capture00036.jpg', 1),
(8201, 177, 'data/products/vesna 16/Capture00038.jpg', 2),
(8200, 177, 'data/products/vesna 16/Capture00042.jpg', 3),
(8199, 177, 'data/products/vesna 16/Capture00040.jpg', 4),
(7246, 178, 'data/products/vesna 16/Capture00236.jpg', 2),
(7245, 178, 'data/products/vesna 16/Capture00235.jpg', 1),
(7244, 178, 'data/products/vesna 16/Capture00239.jpg', 3),
(7243, 178, 'data/products/vesna 16/Capture00231.jpg', 4),
(8001, 179, 'data/products/vesna 16/Capture00072.jpg', 3),
(8002, 179, 'data/products/vesna 16/Capture00079.jpg', 1),
(8003, 179, 'data/products/vesna 16/Capture00070.jpg', 2),
(8004, 179, 'data/products/vesna 16/Capture00085.jpg', 4),
(8567, 238, 'data/products/vesna17/1234.jpg', 4),
(8615, 182, 'data/products/vesna 16/Capture00193.jpg', 3),
(8616, 182, 'data/products/vesna 16/Capture00198.jpg', 2),
(8114, 181, 'data/products/vesna 16/Capture00165.jpg', 3),
(8113, 181, 'data/products/vesna 16/Capture00168.jpg', 2),
(8112, 181, 'data/products/vesna 16/Capture00172.jpg', 1),
(8613, 182, 'data/products/titul/Capture00189.jpg', 4),
(8614, 182, 'data/products/vesna 16/Capture00202.jpg', 1),
(8137, 183, 'data/products/vesna 16/Capture00246.jpg', 3),
(8134, 183, 'data/products/vesna 16/Capture00250.jpg', 1),
(8135, 183, 'data/products/vesna 16/Capture00249.jpg', 2),
(8136, 183, 'data/products/titul/Capture00246_1.jpg', 4),
(8138, 184, 'data/products/titul/Capture00260_1.jpg', 4),
(8139, 184, 'data/products/vesna 16/Capture00258.jpg', 3),
(8140, 184, 'data/products/vesna 16/Capture00260.jpg', 2),
(8141, 184, 'data/products/vesna 16/Capture00255.jpg', 1),
(7992, 185, 'data/products/vesna 16/Capture00265.jpg', 3),
(7991, 185, 'data/products/vesna 16/Capture00267.jpg', 2),
(7990, 185, 'data/products/titul/Capture00263_1.jpg', 4),
(7989, 185, 'data/products/vesna 16/Capture00263.jpg', 1),
(7709, 241, 'data/products/vesna17/2017_02_2601551.jpg', 2),
(7708, 241, 'data/products/vesna17/2017_02_2601617.jpg', 4),
(8318, 240, 'data/products/vesna17/2017_02_2602551.jpg', 2),
(8317, 240, 'data/products/vesna17/2017_02_2602550.jpg', 4),
(8315, 240, 'data/products/vesna17/2017_02_2602561.jpg', 3),
(7843, 252, 'data/products/vesna17/2017_02_2601852_1.jpg', 3),
(7741, 258, 'data/products/vesna17/2017_02_2601740_1.jpg', 3),
(8144, 188, 'data/products/vesna 16/Capture00286.jpg', 1),
(8143, 188, 'data/products/vesna 16/Capture00287.jpg', 2),
(8543, 189, 'data/products/vesna 16/Capture00294.jpg', 1),
(8542, 189, 'data/products/titul/Capture00293_1.jpg', 4),
(8541, 189, 'data/products/vesna 16/Capture00297_3.jpg', 0),
(7842, 252, 'data/products/vesna17/2017_02_2601864-(1).jpg', 2),
(8653, 237, 'data/products/vesna17/2017_02_2601727.jpg', 1),
(8409, 191, 'data/products/titul/Capture00318_1.jpg', 4),
(8408, 191, 'data/products/vesna 16/Capture00319.jpg', 5),
(8407, 191, 'data/products/vesna 16/Capture00323.jpg', 2),
(7707, 241, 'data/products/vesna17/2017_02_2601574.jpg', 1),
(8405, 192, 'data/products/vesna 16/Capture00307.jpg', 2),
(8651, 237, 'data/products/vesna17/2017_02_2601729.jpg', 3),
(8111, 193, 'data/products/vesna 16/Capture00121.jpg', 1),
(8110, 193, 'data/products/vesna 16/Capture00125.jpg', 2),
(8109, 193, 'data/products/vesna 16/Capture00127.jpg', 3),
(8371, 239, 'data/products/vesna17/2017_02_2602354.jpg', 3),
(6831, 194, 'data/products/vesna 16/Capture00063.jpg', 1),
(6830, 194, 'data/products/vesna 16/Capture00059.jpg', 3),
(6829, 194, 'data/products/vesna 16/Capture00065.jpg', 4),
(8814, 273, 'data/products/LETO17/DSC_0180.jpg', 1),
(8239, 274, 'data/products/LETO17/DSC_0059_1-(12).jpg', 0),
(8404, 192, 'data/products/vesna 16/Capture00306.jpg', 3),
(8540, 189, 'data/products/vesna 16/Capture00293.jpg', 3),
(8403, 192, 'data/products/vesna 16/Capture00313.jpg', 5),
(8402, 192, 'data/products/vesna 16/Capture00311_4.jpg', 4),
(8813, 273, 'data/products/LETO17/DSC_0186.jpg', 2),
(8316, 240, 'data/products/vesna17/2017_02_2602544_1.jpg', 1),
(8547, 190, 'data/products/vesna 16/Capture00301.jpg', 1),
(8546, 190, 'data/products/vesna 16/Capture00304.jpg', 3),
(8545, 190, 'data/products/titul/Capture00304_1.jpg', 4),
(8544, 190, 'data/products/vesna 16/Capture00299.jpg', 2),
(8370, 239, 'data/products/vesna17/2017_02_2602350.jpg', 2),
(8142, 188, 'data/products/titul/Capture00289_1.jpg', 4),
(8568, 238, 'data/products/vesna17/2017_02_2601646.jpg', 1),
(8587, 242, 'data/products/vesna17/2017_02_2602378.jpg', 3),
(7706, 241, 'data/products/vesna17/2017_02_2601602.jpg', 3),
(8369, 239, 'data/products/vesna17/2017_02_2602338.jpg', 1),
(8149, 197, 'data/products/titul/Capture00070_blu.jpg', 4),
(8148, 197, 'data/products/vesna 16/Capture00085_blu.jpg', 1),
(8147, 197, 'data/products/vesna 16/Capture00079_blu.jpg', 3),
(8146, 197, 'data/products/vesna 16/Capture00072_blu.jpg', 2),
(6842, 199, 'data/products/vesna 16/Capture00040.jpg', 4),
(6841, 199, 'data/products/vesna 16/Capture00042.jpg', 3),
(6840, 199, 'data/products/vesna 16/Capture00038.jpg', 1),
(6839, 199, 'data/products/titul/Capture00036 (1).jpg', 2),
(8483, 201, 'data/products/osen16/2016_07_23_Studio-00531.jpg', 4),
(8482, 201, 'data/products/osen16/2016_07_23_Studio-00523.jpg', 3),
(7273, 200, 'data/products/osen16/2016_07_23_Studio-00448.jpg', 3),
(7272, 200, 'data/products/osen16/2016_07_23_Studio-00454.jpg', 2),
(8481, 201, 'data/products/osen16/2016_07_23_Studio-00519.jpg', 1),
(8480, 201, 'data/products/osen16/2016_07_23_Studio-00514.jpg', 2),
(7271, 200, 'data/products/osen16/2016_07_23_Studio-00451.jpg', 1),
(8382, 222, 'data/products/vesna17/2017_02_2602529.jpg', 1),
(8401, 202, 'data/products/osen16/2016_07_23_Studio-00473.jpg', 1),
(8400, 202, 'data/products/osen16/2016_07_23_Studio-00479.jpg', 3),
(8399, 202, 'data/products/osen16/2016_07_23_Studio-00458.jpg', 4),
(7149, 203, 'data/products/osen16/2016_07_23_Studio-00498.jpg', 1),
(7147, 203, 'data/products/osen16/2016_07_23_Studio-00502.jpg', 4),
(7148, 203, 'data/products/osen16/2016_07_23_Studio-00500.jpg', 3),
(7137, 204, 'data/products/osen16/2016_07_23_Studio-00546.jpg', 3),
(8531, 205, 'data/products/osen16/2016_07_23_Studio-00555.jpg', 1),
(8530, 205, 'data/products/osen16/2016_07_23_Studio-00567.jpg', 3),
(8529, 205, 'data/products/osen16/2016_07_23_Studio-00569.jpg', 2),
(8528, 205, 'data/products/osen16/2016_07_23_Studio-00590.jpg', 4),
(7123, 207, 'data/products/titul/2016_07_23_Studio-00612_1.jpg', 3),
(8500, 206, 'data/products/osen16/2016_07_23_Studio-00574_1.jpg', 3),
(8501, 206, 'data/products/osen16/2016_07_23_Studio-00590.jpg', 4),
(8499, 206, 'data/products/osen16/2016_07_23_Studio-00576.jpg', 2),
(8498, 206, 'data/products/osen16/2016_07_23_Studio-00598.jpg', 1),
(7122, 207, 'data/products/osen16/2016_07_23_Studio-00606.jpg', 4),
(7121, 207, 'data/products/osen16/2016_07_23_Studio-00619.jpg', 2),
(7120, 207, 'data/products/osen16/2016_07_23_Studio-00617.jpg', 1),
(7128, 208, 'data/products/titul/2016_07_23_Studio-00697.jpg', 4),
(7127, 208, 'data/products/osen16/2016_07_23_Studio-00702.jpg', 2),
(7126, 208, 'data/products/osen16/2016_07_23_Studio-00697_1.jpg', 3),
(8504, 209, 'data/products/osen16/2016_07_23_Studio-00672_1.jpg', 3),
(8503, 209, 'data/products/osen16/2016_07_23_Studio-00675.jpg', 2),
(8502, 209, 'data/products/titul/2016_07_23_Studio-00672.jpg', 4),
(8539, 211, 'data/products/osen16/2016_07_23_Studio-00652.jpg', 2),
(7988, 210, 'data/products/osen16/2016_07_23_Studio-00622.jpg', 1),
(7987, 210, 'data/products/osen16/2016_07_23_Studio-00632.jpg', 3),
(7986, 210, 'data/products/osen16/2016_07_23_Studio-00638.jpg', 2),
(8538, 211, 'data/products/osen16/2016_07_23_Studio-00649.jpg', 3),
(8537, 211, 'data/products/titul/2016_07_23_Studio-00643_1.jpg', 0),
(8536, 211, 'data/products/osen16/2016_07_23_Studio-00643.jpg', 1),
(8645, 212, 'data/products/osen16/2016_07_23_Studio-00664.jpg', 3),
(8644, 212, 'data/products/osen16/2016_07_23_Studio-00668.jpg', 2),
(8643, 212, 'data/products/titul/2016_07_23_Studio-00660_1.jpg', 0),
(8642, 212, 'data/products/osen16/2016_07_23_Studio-00660.jpg', 1),
(8130, 231, 'data/products/zima 17/01287.jpg', 3),
(8479, 213, 'data/products/zima 17/01323_1.jpg', 3),
(8478, 213, 'data/products/zima 17/01323.jpg', 2),
(8573, 214, 'data/products/osen16/2016_07_23_Studio-00694.jpg', 1),
(8572, 214, 'data/products/osen16/2016_07_23_Studio-00688.jpg', 2),
(8571, 214, 'data/products/osen16/2016_07_23_Studio-00676.jpg', 4),
(8570, 214, 'data/products/osen16/2016_07_23_Studio-00688_1.jpg', 3),
(8368, 239, 'data/products/vesna17/2017_02_2602368.jpg', 4),
(8566, 238, 'data/products/vesna17/2017_02_2601628_3.jpg', 3),
(8585, 215, 'data/products/titul/Capture00045.jpg', 4),
(8584, 215, 'data/products/vesna 16/Capture00050.jpg', 2),
(8583, 215, 'data/products/vesna 16/Capture00047.jpg', 1),
(8582, 215, 'data/products/vesna 16/Capture00056.jpg', 3),
(8381, 222, 'data/products/vesna17/2017_02_2602518.jpg', 2),
(8620, 216, 'data/products/zima 17/00869.jpg', 2),
(8619, 216, 'data/products/zima 17/00849.jpg', 3),
(8618, 216, 'data/products/zima 17/00826.jpg', 1),
(8617, 216, 'data/products/zima 17/00854.jpg', 4),
(8594, 217, 'data/products/zima 17/00962.jpg', 3),
(8593, 217, 'data/products/zima 17/00920.jpg', 4),
(8592, 217, 'data/products/zima 17/00955.jpg', 2),
(8591, 217, 'data/products/zima 17/00945.jpg', 1),
(8581, 218, 'data/products/zima 17/01121.jpg', 2),
(8580, 218, 'data/products/zima 17/01125.jpg', 1),
(8579, 218, 'no_image.jpg', 3),
(8578, 218, 'data/products/zima 17/01111_1.jpg', 4),
(8660, 219, 'data/products/zima 17/00877.jpg', 3),
(8659, 219, 'data/products/zima 17/00882.jpg', 2),
(8658, 219, 'data/products/zima 17/00891.jpg', 1),
(8497, 220, 'data/products/zima 17/2016_11_0501000.jpg', 4),
(8494, 220, 'data/products/zima 17/01006.jpg', 2),
(8495, 220, 'data/products/zima 17/01013.jpg', 3),
(8393, 221, 'data/products/zima 17/01075.jpg', 3),
(8392, 221, 'data/products/zima 17/01019.jpg', 2),
(8391, 221, 'data/products/zima 17/01035.jpg', 1),
(8380, 222, 'data/products/vesna17/2017_02_2602527.jpg', 3),
(8379, 222, 'data/products/vesna17/2017_02_2602508.jpg', 4),
(8496, 220, 'data/products/zima 17/00997.jpg', 1),
(7985, 223, 'data/products/zima 17/01123.jpg', 2),
(7984, 223, 'data/products/zima 17/01253_1.jpg', 3),
(7983, 223, 'data/products/zima 17/01111_1.jpg', 1),
(8820, 225, 'data/products/zima 17/01376_1.jpg', 4),
(8467, 224, 'data/products/zima 17/01144.jpg', 3),
(8466, 224, 'data/products/zima 17/01158.jpg', 2),
(8465, 224, 'data/products/zima 17/01150.jpg', 1),
(8819, 225, 'data/products/zima 17/01376.jpg', 3),
(8818, 225, 'data/products/zima 17/01374.jpg', 2),
(8817, 225, 'data/products/zima 17/01354.jpg', 1),
(8054, 227, 'data/products/zima 17/01245.jpg', 3),
(7600, 226, 'data/products/vesna17/2017_02_2602210.jpg', 2),
(7601, 226, 'data/products/vesna17/2017_02_2602215.jpg', 3),
(8053, 227, 'data/products/zima 17/01266.jpg', 1),
(8052, 227, 'data/products/zima 17/01253_2.jpg', 2),
(8535, 232, 'data/products/zima 17/01303.jpg', 4),
(8534, 232, 'data/products/zima 17/01305.jpg', 3),
(8533, 232, 'data/products/zima 17/01305_1.jpg', 2),
(8532, 232, 'data/products/zima 17/01313.jpg', 1),
(8899, 309, 'data/products/VESNA 18/Kamizelka_02123-(1).jpg', 0),
(8902, 309, 'data/products/VESNA 18/Kamizelka_02130.jpg', 0),
(8992, 310, 'data/products/VESNA 18/Kamizelka_01800.jpg', 0),
(8991, 310, 'data/products/VESNA 18/Kamizelka_01798.jpg', 1),
(8990, 310, 'data/products/VESNA 18/Kamizelka_01771.jpg', 3),
(8945, 311, 'data/products/VESNA 18/Kamizelka_01834.jpg', 3),
(8944, 311, 'data/products/VESNA 18/Kamizelka_01850.jpg', 0),
(8943, 311, 'data/products/VESNA 18/Kamizelka_01855.jpg', 0),
(8942, 311, 'data/products/VESNA 18/Kamizelka_01840.jpg', 1),
(8993, 310, 'data/products/VESNA 18/Kamizelka_01803.jpg', 0),
(8933, 312, 'data/products/VESNA 18/Kamizelka_02629.jpg', 0),
(8932, 312, 'data/products/VESNA 18/Kamizelka_02632.jpg', 0),
(8931, 312, 'data/products/VESNA 18/Kamizelka_02623.jpg', 0),
(8930, 312, 'data/products/VESNA 18/Kamizelka_02595.jpg', 0),
(8952, 313, 'data/products/VESNA 18/Kamizelka_01908.jpg', 0),
(8951, 313, 'data/products/VESNA 18/Kamizelka_01886-(1).jpg', 1),
(8950, 313, 'data/products/VESNA 18/Kamizelka_01891.jpg', 3),
(8953, 313, 'data/products/VESNA 18/Kamizelka_01886.jpg', 0),
(8969, 314, 'data/products/VESNA 18/Kamizelka_02156.jpg', 0),
(8968, 314, 'data/products/VESNA 18/Kamizelka_02187.jpg', 0),
(8967, 314, 'data/products/VESNA 18/Kamizelka_02184.jpg', 0),
(8966, 314, 'data/products/VESNA 18/Kamizelka_02146.jpg', 0),
(8977, 315, 'data/products/VESNA 18/Kamizelka_02234.jpg', 0),
(8976, 315, 'data/products/VESNA 18/Kamizelka_02254.jpg', 0),
(8975, 315, 'data/products/VESNA 18/Kamizelka_02255.jpg', 0),
(8974, 315, 'data/products/VESNA 18/Kamizelka_02236.jpg', 0),
(9012, 316, 'data/products/VESNA 18/Kamizelka_02708.jpg', 0),
(9011, 316, 'data/products/VESNA 18/Kamizelka_02760.jpg', 0),
(9010, 316, 'data/products/VESNA 18/Kamizelka_02678.jpg', 0),
(9009, 316, 'data/products/VESNA 18/Kamizelka_02674.jpg', 0),
(9003, 317, 'data/products/VESNA 18/Kamizelka_02338.jpg', 2),
(9002, 317, 'data/products/VESNA 18/Kamizelka_01661.jpg', 3),
(9001, 317, 'data/products/VESNA 18/Kamizelka_01642.jpg', 1),
(9004, 317, 'data/products/VESNA 18/Kamizelka_02342.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=505 ;

--
-- Очистить таблицу перед добавлением данных `oc_product_option`
--

TRUNCATE TABLE `oc_product_option`;
--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
(234, 47, 13, '', 1),
(364, 49, 15, '', 0),
(461, 273, 13, '', 1),
(237, 51, 13, '', 1),
(473, 285, 13, '', 1),
(233, 41, 13, '', 1),
(472, 284, 13, '', 1),
(467, 279, 13, '', 1),
(462, 274, 13, '', 1),
(463, 275, 13, '', 1),
(464, 276, 13, '', 1),
(465, 277, 13, '', 1),
(248, 75, 13, '', 1),
(469, 281, 13, '', 1),
(470, 282, 13, '', 1),
(471, 283, 13, '', 1),
(392, 209, 13, '', 1),
(418, 234, 13, '', 1),
(419, 235, 13, '', 1),
(420, 236, 13, '', 1),
(421, 237, 13, '', 1),
(422, 238, 13, '', 1),
(423, 239, 13, '', 1),
(424, 240, 13, '', 1),
(425, 241, 13, '', 1),
(426, 242, 13, '', 1),
(427, 243, 13, '', 1),
(428, 244, 13, '', 1),
(429, 245, 13, '', 1),
(430, 246, 13, '', 1),
(431, 247, 13, '', 1),
(440, 253, 13, '', 1),
(441, 254, 13, '', 1),
(452, 263, 13, '', 1),
(432, 248, 15, '', 0),
(433, 248, 13, '', 1),
(439, 252, 13, '', 1),
(434, 249, 13, '', 1),
(436, 250, 13, '', 1),
(437, 251, 13, '', 1),
(442, 255, 13, '', 1),
(443, 256, 13, '', 1),
(444, 257, 13, '', 1),
(445, 258, 13, '', 1),
(446, 259, 13, '', 1),
(447, 260, 13, '', 1),
(448, 261, 13, '', 1),
(449, 262, 13, '', 1),
(308, 139, 13, '', 1),
(309, 149, 13, '', 1),
(310, 150, 13, '', 1),
(453, 264, 13, '', 1),
(311, 152, 13, '', 1),
(451, 152, 14, '', 0),
(317, 158, 13, '', 1),
(318, 159, 13, '', 1),
(484, 296, 13, '', 1),
(483, 295, 13, '', 1),
(322, 163, 13, '', 1),
(482, 294, 13, '', 1),
(481, 293, 13, '', 1),
(480, 292, 13, '', 1),
(326, 120, 15, '', 0),
(275, 120, 13, '', 1),
(454, 265, 13, '', 1),
(455, 266, 13, '', 1),
(456, 267, 13, '', 1),
(457, 268, 13, '', 1),
(458, 269, 13, '', 1),
(340, 165, 13, '', 1),
(475, 287, 13, '', 1),
(476, 288, 13, '', 1),
(345, 170, 13, '', 1),
(346, 171, 13, '', 1),
(347, 51, 15, '', 0),
(479, 291, 13, '', 1),
(477, 289, 13, '', 1),
(478, 290, 13, '', 1),
(353, 177, 13, '', 1),
(354, 178, 13, '', 1),
(355, 179, 13, '', 1),
(357, 181, 13, '', 1),
(358, 182, 13, '', 1),
(359, 183, 13, '', 1),
(360, 184, 13, '', 1),
(361, 185, 13, '', 1),
(363, 41, 15, '', 0),
(229, 49, 13, '', 1),
(365, 47, 15, '', 0),
(474, 286, 13, '', 1),
(468, 280, 13, '', 1),
(466, 278, 13, '', 1),
(370, 188, 13, '', 1),
(371, 189, 13, '', 1),
(372, 190, 13, '', 1),
(373, 191, 13, '', 1),
(374, 192, 13, '', 1),
(375, 193, 13, '', 1),
(376, 194, 13, '', 1),
(460, 272, 13, '', 1),
(459, 270, 13, '', 1),
(379, 197, 13, '', 1),
(381, 199, 13, '', 1),
(382, 200, 13, '', 1),
(383, 201, 13, '', 1),
(384, 202, 13, '', 1),
(385, 203, 13, '', 1),
(386, 204, 13, '', 1),
(387, 205, 13, '', 1),
(388, 206, 13, '', 1),
(389, 207, 13, '', 1),
(390, 208, 15, '', 0),
(391, 208, 13, '', 1),
(393, 209, 15, '', 0),
(416, 209, 16, '', 0),
(394, 210, 13, '', 1),
(395, 211, 13, '', 1),
(396, 212, 13, '', 1),
(398, 213, 13, '', 1),
(397, 213, 15, '', 0),
(399, 214, 13, '', 1),
(400, 215, 13, '', 1),
(401, 216, 13, '', 1),
(402, 217, 13, '', 1),
(403, 218, 13, '', 1),
(404, 219, 13, '', 1),
(405, 220, 13, '', 1),
(406, 221, 13, '', 1),
(407, 222, 13, '', 1),
(408, 223, 13, '', 1),
(409, 224, 13, '', 1),
(410, 225, 13, '', 1),
(411, 226, 13, '', 1),
(412, 227, 13, '', 1),
(413, 231, 13, '', 1),
(414, 232, 13, '', 1),
(485, 297, 13, '', 1),
(486, 298, 13, '', 1),
(487, 299, 13, '', 1),
(488, 300, 13, '', 1),
(489, 301, 13, '', 1),
(490, 302, 13, '', 1),
(491, 303, 13, '', 1),
(492, 305, 13, '', 1),
(493, 306, 13, '', 1),
(494, 307, 13, '', 1),
(495, 308, 13, '', 1),
(496, 309, 13, '', 1),
(497, 310, 13, '', 1),
(498, 311, 13, '', 1),
(499, 312, 13, '', 1),
(500, 313, 13, '', 1),
(501, 314, 13, '', 1),
(502, 315, 13, '', 1),
(503, 316, 13, '', 1),
(504, 317, 13, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1026 ;

--
-- Очистить таблицу перед добавлением данных `oc_product_option_value`
--

TRUNCATE TABLE `oc_product_option_value`;
--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(992, 494, 307, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(985, 492, 305, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(986, 492, 305, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(987, 492, 305, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(38, 234, 47, 13, 49, 444, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(39, 234, 47, 13, 50, 444, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1009, 500, 313, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1017, 502, 315, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(41, 234, 47, 13, 53, 444, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(551, 364, 49, 15, 61, 0, 0, '45.0000', '-', 0, '+', '0.00000000', '+'),
(37, 233, 41, 13, 53, 999, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(25, 229, 49, 13, 53, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 229, 49, 13, 50, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(50, 237, 51, 13, 49, 222, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(51, 237, 51, 13, 50, 222, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(52, 237, 51, 13, 51, 222, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1024, 504, 317, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1023, 504, 317, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1025, 504, 317, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1019, 503, 316, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1018, 503, 316, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1020, 503, 316, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1021, 503, 316, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1015, 502, 315, 13, 50, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1016, 502, 315, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(959, 392, 209, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(958, 388, 206, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(957, 474, 286, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(956, 474, 286, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(938, 481, 293, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(936, 481, 293, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(937, 481, 293, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(939, 481, 293, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(941, 470, 282, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(914, 475, 287, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(913, 475, 287, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(953, 476, 288, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(945, 482, 294, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(944, 482, 294, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(943, 482, 294, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(952, 476, 288, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(951, 383, 201, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(947, 483, 295, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(948, 483, 295, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(949, 483, 295, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(950, 398, 213, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(927, 479, 291, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(200, 248, 75, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(97, 248, 75, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(98, 248, 75, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(757, 427, 243, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(835, 452, 263, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(790, 439, 252, 13, 49, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(791, 439, 252, 13, 50, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(758, 428, 244, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(759, 428, 244, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(760, 428, 244, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(761, 429, 245, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(762, 429, 245, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(763, 429, 245, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(990, 493, 306, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(805, 443, 256, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(804, 442, 255, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(975, 488, 300, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(973, 488, 300, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(797, 441, 254, 13, 53, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(798, 441, 254, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(796, 440, 253, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(795, 440, 253, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(794, 440, 253, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(793, 440, 253, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(792, 439, 252, 13, 51, 10, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(984, 491, 303, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(767, 430, 246, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(766, 430, 246, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(977, 489, 301, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(976, 489, 301, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(978, 489, 301, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(960, 466, 278, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(770, 431, 247, 13, 50, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(771, 431, 247, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(786, 437, 251, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(784, 436, 250, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(783, 436, 250, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(782, 436, 250, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(781, 436, 250, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(772, 432, 248, 15, 61, 0, 0, '50.0000', '-', 0, '+', '0.00000000', '+'),
(775, 433, 248, 13, 51, 10, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(774, 433, 248, 13, 50, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(773, 433, 248, 13, 49, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(779, 434, 249, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(778, 434, 249, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(777, 434, 249, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(776, 434, 249, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(36, 233, 41, 13, 51, 999, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(35, 233, 41, 13, 50, 999, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(95, 248, 75, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(96, 248, 75, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1010, 500, 313, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1011, 500, 313, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(996, 495, 308, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1006, 499, 312, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1007, 499, 312, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1008, 499, 312, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1005, 498, 311, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(997, 496, 309, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(998, 496, 309, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(999, 496, 309, 13, 50, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1004, 498, 311, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1003, 498, 311, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1002, 497, 310, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1000, 497, 310, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1001, 497, 310, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(753, 426, 242, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(755, 427, 243, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(749, 425, 241, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(746, 424, 240, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(747, 424, 240, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(751, 425, 241, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(750, 425, 241, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(53, 237, 51, 13, 53, 222, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(995, 495, 308, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(994, 495, 308, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(993, 494, 307, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(991, 494, 307, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(933, 480, 292, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(935, 480, 292, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(731, 419, 235, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(726, 407, 222, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(931, 407, 222, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(932, 428, 244, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(733, 420, 236, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(744, 423, 239, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(921, 478, 290, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(922, 478, 290, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(923, 478, 290, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(983, 491, 303, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(982, 491, 303, 13, 50, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(905, 473, 285, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(911, 474, 286, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(910, 474, 286, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(909, 474, 286, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(912, 475, 287, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(954, 475, 287, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(955, 475, 287, 13, 52, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(917, 476, 288, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(915, 476, 288, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(916, 476, 288, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(940, 477, 289, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(920, 477, 289, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(918, 477, 289, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(919, 477, 289, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(966, 485, 297, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(962, 484, 296, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(961, 484, 296, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(889, 468, 280, 13, 51, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(887, 467, 279, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(897, 470, 282, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(885, 467, 279, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(886, 467, 279, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(884, 466, 278, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(877, 465, 277, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(880, 465, 277, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(878, 465, 277, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(964, 485, 297, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(876, 464, 276, 13, 51, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(873, 464, 276, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(871, 463, 275, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(870, 463, 275, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(872, 463, 275, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(894, 469, 281, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(895, 469, 281, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(851, 457, 268, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(942, 469, 281, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(865, 461, 273, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(856, 458, 269, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(855, 458, 269, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(854, 458, 269, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(863, 461, 273, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(864, 461, 273, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(857, 459, 270, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(858, 459, 270, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(859, 459, 270, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(862, 460, 272, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(860, 460, 272, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(861, 460, 272, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(868, 462, 274, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(893, 469, 281, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(882, 466, 278, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(841, 454, 265, 13, 51, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(849, 456, 267, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(848, 456, 267, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(850, 456, 267, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(844, 455, 266, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(988, 493, 306, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(843, 454, 265, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(840, 453, 264, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(971, 487, 299, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(839, 453, 264, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(838, 453, 264, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(836, 452, 263, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(837, 452, 263, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(834, 452, 263, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(387, 311, 152, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(828, 448, 261, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(827, 448, 261, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(826, 448, 261, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(825, 448, 261, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(831, 449, 262, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(830, 449, 262, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(832, 449, 262, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(967, 486, 298, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(823, 447, 260, 13, 53, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(817, 446, 259, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(899, 471, 283, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(818, 446, 259, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(819, 446, 259, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(820, 446, 259, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(816, 445, 258, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(815, 445, 258, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(814, 445, 258, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(813, 445, 258, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(900, 471, 283, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(901, 471, 283, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(809, 444, 257, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(373, 308, 139, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(377, 309, 149, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(378, 309, 149, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(379, 309, 149, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(380, 309, 149, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(384, 310, 150, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(383, 310, 150, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(382, 310, 150, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(381, 310, 150, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(754, 426, 242, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(743, 423, 239, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(742, 423, 239, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(388, 311, 152, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(386, 311, 152, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(385, 311, 152, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(833, 451, 152, 14, 60, 0, 0, '60.0000', '+', 0, '+', '0.00000000', '+'),
(728, 418, 234, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(928, 423, 239, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(739, 422, 238, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(968, 486, 298, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(929, 420, 236, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(734, 420, 236, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(730, 419, 235, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(729, 419, 235, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(930, 419, 235, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(732, 420, 236, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(412, 317, 158, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(411, 317, 158, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(410, 317, 158, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(409, 317, 158, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(684, 404, 219, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(416, 318, 159, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(415, 318, 159, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(413, 318, 159, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(414, 318, 159, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(429, 322, 163, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(430, 322, 163, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(431, 322, 163, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(432, 322, 163, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(443, 326, 120, 15, 61, 0, 0, '45.0000', '-', 0, '+', '0.00000000', '+'),
(232, 275, 120, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(231, 275, 120, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(230, 275, 120, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(229, 275, 120, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(748, 424, 240, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(745, 424, 240, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(647, 392, 209, 13, 53, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(727, 407, 222, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(460, 340, 165, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(461, 340, 165, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(462, 340, 165, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(463, 340, 165, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(480, 345, 170, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(481, 345, 170, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(482, 345, 170, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(483, 345, 170, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(756, 427, 243, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(639, 390, 208, 15, 61, 0, 0, '50.0000', '-', 0, '+', '0.00000000', '+'),
(485, 346, 171, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(484, 346, 171, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(488, 347, 51, 15, 61, 0, 0, '45.0000', '-', 0, '+', '0.00000000', '+'),
(513, 353, 177, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(512, 353, 177, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(511, 353, 177, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(510, 353, 177, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(514, 354, 178, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(515, 354, 178, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(516, 354, 178, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(517, 354, 178, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(969, 486, 298, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(519, 355, 179, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(518, 355, 179, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(520, 355, 179, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(521, 355, 179, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(808, 443, 256, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(807, 443, 256, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(529, 357, 181, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(528, 357, 181, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(527, 357, 181, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(526, 357, 181, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(533, 358, 182, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(532, 358, 182, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(531, 358, 182, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(530, 358, 182, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(537, 359, 183, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(536, 359, 183, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(535, 359, 183, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(534, 359, 183, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(898, 470, 282, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(896, 470, 282, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(538, 360, 184, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(539, 360, 184, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(541, 360, 184, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(540, 360, 184, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(543, 361, 185, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(545, 361, 185, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(544, 361, 185, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(542, 361, 185, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(34, 233, 41, 13, 49, 999, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 229, 49, 13, 51, 9999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(40, 234, 47, 13, 51, 444, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1022, 503, 316, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1014, 501, 314, 13, 50, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1012, 501, 314, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(1013, 501, 314, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(560, 370, 188, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(561, 370, 188, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(562, 370, 188, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(563, 370, 188, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(564, 371, 189, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(565, 371, 189, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(566, 371, 189, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(567, 371, 189, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(568, 372, 190, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(569, 372, 190, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(570, 372, 190, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(571, 372, 190, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(572, 373, 191, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(573, 373, 191, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(574, 373, 191, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(575, 373, 191, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(740, 422, 238, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(577, 374, 192, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(576, 374, 192, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(578, 374, 192, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(579, 374, 192, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(963, 484, 296, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(582, 375, 193, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(587, 376, 194, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(586, 376, 194, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(585, 376, 194, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(584, 376, 194, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(803, 442, 255, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(802, 442, 255, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(801, 442, 255, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(736, 421, 237, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(597, 379, 197, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(596, 379, 197, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(595, 379, 197, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(598, 379, 197, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(606, 381, 199, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(605, 381, 199, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(604, 381, 199, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(603, 381, 199, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(607, 382, 200, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(608, 383, 201, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(609, 383, 201, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(610, 383, 201, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(611, 383, 201, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(612, 382, 200, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(613, 382, 200, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(614, 382, 200, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(618, 384, 202, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(617, 384, 202, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(616, 384, 202, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(615, 384, 202, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(622, 385, 203, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(621, 385, 203, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(620, 385, 203, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(619, 385, 203, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(626, 386, 204, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(625, 386, 204, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(624, 386, 204, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(623, 386, 204, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(627, 387, 205, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(628, 387, 205, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(629, 387, 205, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(630, 387, 205, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(631, 388, 206, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(632, 388, 206, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(633, 388, 206, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(634, 388, 206, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(635, 389, 207, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(636, 389, 207, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(637, 389, 207, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(638, 389, 207, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(641, 391, 208, 13, 49, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(642, 391, 208, 13, 50, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(643, 391, 208, 13, 51, 8, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(646, 392, 209, 13, 49, 5, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(644, 392, 209, 13, 51, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(645, 392, 209, 13, 50, 7, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(721, 416, 209, 16, 62, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(648, 393, 209, 15, 61, 0, 0, '50.0000', '-', 0, '+', '0.00000000', '+'),
(649, 394, 210, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(650, 394, 210, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(651, 394, 210, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(652, 394, 210, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(654, 395, 211, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(655, 395, 211, 13, 51, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(965, 485, 297, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(659, 396, 212, 13, 50, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(713, 413, 231, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(665, 398, 213, 13, 51, 10, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(664, 398, 213, 13, 50, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(663, 398, 213, 13, 49, 9, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(661, 397, 213, 15, 61, 0, 0, '50.0000', '-', 0, '+', '0.00000000', '+'),
(669, 399, 214, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(668, 399, 214, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(667, 399, 214, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(666, 399, 214, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(640, 391, 208, 13, 53, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(673, 400, 215, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(672, 400, 215, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(671, 400, 215, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(670, 400, 215, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(550, 363, 41, 15, 61, 0, 0, '45.0000', '-', 0, '+', '0.00000000', '+'),
(23, 229, 49, 13, 49, 999, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(552, 365, 47, 15, 61, 0, 0, '45.0000', '-', 0, '+', '0.00000000', '+'),
(903, 472, 284, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(974, 488, 300, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(677, 402, 217, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(934, 480, 292, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(679, 403, 218, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(680, 403, 218, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(681, 403, 218, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(683, 404, 219, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(691, 406, 221, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(690, 406, 221, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(689, 406, 221, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(687, 405, 220, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(725, 401, 216, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(693, 407, 222, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(695, 408, 223, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(696, 408, 223, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(697, 408, 223, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(698, 408, 223, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(702, 409, 224, 13, 53, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(701, 409, 224, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(700, 409, 224, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(699, 409, 224, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(972, 487, 299, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(970, 487, 299, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(704, 410, 225, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(707, 411, 226, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(708, 411, 226, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(709, 411, 226, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(710, 412, 227, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(711, 412, 227, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(712, 412, 227, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(714, 413, 231, 13, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(715, 413, 231, 13, 50, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(716, 413, 231, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(989, 493, 306, 13, 49, 1, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(979, 490, 302, 13, 49, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(718, 414, 232, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_profile`
--

DROP TABLE IF EXISTS `oc_product_profile`;
CREATE TABLE IF NOT EXISTS `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_profile`
--

TRUNCATE TABLE `oc_product_profile`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_recurring`
--

TRUNCATE TABLE `oc_product_recurring`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_related`
--

TRUNCATE TABLE `oc_product_related`;
--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(201, 207),
(201, 255),
(201, 263),
(207, 201),
(209, 216),
(209, 241),
(216, 209),
(216, 223),
(223, 216),
(223, 241),
(241, 209),
(241, 223),
(255, 201),
(263, 201),
(265, 269),
(265, 273),
(265, 275),
(269, 265),
(269, 270),
(270, 269),
(270, 273),
(270, 275),
(273, 265),
(273, 270),
(275, 265),
(275, 270);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5416 ;

--
-- Очистить таблицу перед добавлением данных `oc_product_reward`
--

TRUNCATE TABLE `oc_product_reward`;
--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(5053, 261, 2, 0),
(5281, 301, 2, 0),
(5379, 305, 2, 0),
(4027, 49, 2, 0),
(4783, 262, 2, 0),
(5385, 313, 2, 0),
(4025, 41, 2, 0),
(4697, 75, 2, 0),
(5221, 98, 2, 0),
(5413, 306, 2, 0),
(5319, 302, 2, 0),
(5375, 312, 2, 0),
(5277, 303, 2, 0),
(4029, 47, 2, 0),
(3789, 51, 2, 0),
(5117, 260, 2, 0),
(5075, 251, 2, 0),
(5097, 259, 2, 0),
(4517, 258, 2, 0),
(4485, 255, 2, 0),
(5057, 256, 2, 0),
(5279, 304, 2, 0),
(5021, 290, 2, 0),
(5129, 291, 2, 0),
(4993, 292, 2, 0),
(5005, 289, 2, 0),
(4995, 293, 2, 0),
(5303, 273, 2, 0),
(4871, 274, 2, 0),
(5299, 275, 2, 0),
(5123, 276, 2, 0),
(4863, 277, 2, 0),
(5305, 265, 2, 0),
(5297, 266, 2, 0),
(4873, 267, 2, 0),
(5111, 268, 2, 0),
(4811, 97, 2, 0),
(5323, 296, 2, 0),
(5269, 297, 2, 0),
(5317, 298, 2, 0),
(5315, 299, 2, 0),
(5275, 300, 2, 0),
(4793, 248, 2, 0),
(5285, 287, 2, 0),
(5035, 288, 2, 0),
(5109, 247, 2, 0),
(5055, 246, 2, 0),
(4379, 245, 1, 0),
(4967, 244, 2, 0),
(4439, 243, 2, 0),
(5301, 269, 2, 0),
(5393, 314, 2, 0),
(5397, 315, 2, 0),
(5415, 316, 2, 0),
(5411, 317, 2, 0),
(4795, 257, 2, 0),
(4983, 120, 2, 0),
(4851, 270, 2, 0),
(5293, 271, 2, 0),
(5295, 272, 2, 0),
(5135, 254, 2, 0),
(4453, 250, 2, 0),
(5099, 253, 2, 0),
(4455, 249, 2, 0),
(5107, 216, 2, 0),
(5093, 217, 2, 0),
(5087, 218, 2, 0),
(5131, 219, 2, 0),
(5041, 220, 2, 0),
(4971, 221, 2, 0),
(4794, 257, 1, 0),
(4454, 249, 1, 0),
(5322, 296, 1, 0),
(5268, 297, 1, 0),
(5316, 298, 1, 0),
(5314, 299, 1, 0),
(5274, 300, 1, 0),
(5108, 247, 1, 0),
(5284, 287, 1, 0),
(5034, 288, 1, 0),
(5054, 246, 1, 0),
(4378, 245, 2, 0),
(4452, 250, 1, 0),
(5392, 314, 1, 0),
(5396, 315, 1, 0),
(5410, 317, 1, 0),
(5300, 269, 1, 0),
(4792, 248, 1, 0),
(4966, 244, 1, 0),
(4438, 243, 1, 0),
(5091, 242, 2, 0),
(5090, 242, 1, 0),
(4982, 120, 1, 0),
(5294, 272, 1, 0),
(5134, 254, 1, 0),
(5414, 316, 1, 0),
(5304, 265, 1, 0),
(5296, 266, 1, 0),
(4872, 267, 1, 0),
(5110, 268, 1, 0),
(4850, 270, 1, 0),
(4499, 241, 2, 0),
(4498, 241, 1, 0),
(4696, 75, 1, 0),
(4024, 41, 1, 0),
(4026, 49, 1, 0),
(4028, 47, 1, 5),
(4782, 262, 1, 0),
(5052, 261, 1, 0),
(3788, 51, 1, 0),
(5116, 260, 1, 0),
(5096, 259, 1, 0),
(4516, 258, 1, 0),
(5292, 271, 1, 0),
(5074, 251, 1, 0),
(4484, 255, 1, 0),
(5056, 256, 1, 0),
(5098, 253, 1, 0),
(5280, 301, 1, 0),
(5318, 302, 1, 0),
(5276, 303, 1, 0),
(5278, 304, 1, 0),
(5378, 305, 1, 0),
(5412, 306, 1, 0),
(5374, 312, 1, 0),
(5384, 313, 1, 0),
(5128, 291, 1, 0),
(4992, 292, 1, 0),
(5020, 290, 1, 0),
(5004, 289, 1, 0),
(4994, 293, 1, 0),
(5220, 98, 1, 0),
(5302, 273, 1, 0),
(4870, 274, 1, 0),
(5298, 275, 1, 0),
(5122, 276, 1, 0),
(5106, 216, 1, 0),
(5092, 217, 1, 0),
(5086, 218, 1, 0),
(5130, 219, 1, 0),
(5040, 220, 1, 0),
(4970, 221, 1, 0),
(4713, 139, 2, 0),
(4712, 139, 1, 0),
(4810, 97, 1, 0),
(4573, 252, 2, 0),
(4572, 252, 1, 0),
(4809, 229, 2, 0),
(4808, 229, 1, 0),
(3973, 228, 1, 0),
(3972, 228, 2, 0),
(5225, 230, 2, 0),
(5224, 230, 1, 0),
(4961, 236, 2, 0),
(4960, 236, 1, 0),
(4963, 235, 2, 0),
(4962, 235, 1, 0),
(5095, 233, 2, 0),
(5094, 233, 1, 0),
(5133, 234, 2, 0),
(5132, 234, 1, 0),
(3827, 149, 2, 0),
(3826, 149, 1, 0),
(4019, 150, 2, 0),
(4018, 150, 1, 0),
(5267, 294, 2, 0),
(5266, 294, 1, 0),
(4981, 152, 2, 0),
(4980, 152, 1, 0),
(5377, 307, 2, 0),
(5376, 307, 1, 0),
(5353, 308, 2, 0),
(5352, 308, 1, 0),
(5359, 309, 2, 0),
(5358, 309, 1, 0),
(5405, 310, 2, 0),
(5404, 310, 1, 0),
(5381, 311, 2, 0),
(5380, 311, 1, 0),
(4707, 158, 2, 0),
(4706, 158, 1, 0),
(4709, 159, 2, 0),
(4708, 159, 1, 0),
(4009, 163, 2, 0),
(4008, 163, 1, 0),
(5127, 237, 2, 0),
(5126, 237, 1, 0),
(3147, 165, 2, 0),
(3146, 165, 1, 0),
(5115, 278, 2, 0),
(5114, 278, 1, 0),
(5069, 279, 2, 0),
(5068, 279, 1, 0),
(5125, 280, 2, 0),
(5124, 280, 1, 0),
(5003, 281, 2, 0),
(5002, 281, 1, 0),
(4031, 170, 2, 0),
(4030, 170, 1, 0),
(4862, 277, 1, 0),
(4807, 171, 2, 0),
(4806, 171, 1, 0),
(4891, 283, 2, 0),
(4890, 283, 1, 0),
(5001, 282, 2, 0),
(5000, 282, 1, 0),
(5325, 284, 2, 0),
(5324, 284, 1, 0),
(5049, 285, 2, 0),
(5048, 285, 1, 0),
(5013, 295, 2, 0),
(5012, 295, 1, 0),
(4843, 177, 2, 0),
(4842, 177, 1, 0),
(4259, 178, 2, 0),
(4258, 178, 1, 0),
(4711, 179, 2, 0),
(4710, 179, 1, 0),
(4925, 240, 2, 0),
(4924, 240, 1, 0),
(4787, 181, 2, 0),
(4786, 181, 1, 0),
(5105, 182, 2, 0),
(5104, 182, 1, 0),
(4799, 183, 2, 0),
(4798, 183, 1, 0),
(4801, 184, 2, 0),
(4800, 184, 1, 0),
(4705, 185, 2, 0),
(4704, 185, 1, 0),
(4847, 264, 2, 0),
(4846, 264, 1, 0),
(4859, 263, 2, 0),
(4858, 263, 1, 0),
(4803, 188, 2, 0),
(4802, 188, 1, 0),
(5065, 189, 2, 0),
(5064, 189, 1, 0),
(5067, 190, 2, 0),
(5066, 190, 1, 0),
(4979, 191, 2, 0),
(4978, 191, 1, 0),
(4977, 192, 2, 0),
(4976, 192, 1, 0),
(4785, 193, 2, 0),
(4784, 193, 1, 0),
(4017, 194, 2, 0),
(4016, 194, 1, 0),
(4959, 239, 2, 0),
(4958, 239, 1, 0),
(5081, 238, 2, 0),
(5080, 238, 1, 0),
(4805, 197, 2, 0),
(4804, 197, 1, 0),
(5039, 286, 2, 0),
(5038, 286, 1, 0),
(4023, 199, 2, 0),
(4022, 199, 1, 0),
(4273, 200, 2, 0),
(4272, 200, 1, 0),
(5033, 201, 2, 0),
(5032, 201, 1, 0),
(4975, 202, 2, 0),
(4974, 202, 1, 0),
(4201, 203, 2, 0),
(4200, 203, 1, 0),
(4195, 204, 2, 0),
(4194, 204, 1, 0),
(5059, 205, 2, 0),
(5058, 205, 1, 0),
(5043, 206, 2, 0),
(5042, 206, 1, 0),
(4181, 207, 2, 0),
(4180, 207, 1, 0),
(4187, 208, 2, 0),
(4186, 208, 1, 0),
(5045, 209, 2, 0),
(5044, 209, 1, 0),
(4703, 210, 2, 0),
(4702, 210, 1, 0),
(5063, 211, 2, 0),
(5062, 211, 1, 0),
(5121, 212, 2, 0),
(5120, 212, 1, 0),
(5031, 213, 2, 0),
(5030, 213, 1, 0),
(5083, 214, 2, 0),
(5082, 214, 1, 0),
(5089, 215, 2, 0),
(5088, 215, 1, 0),
(4965, 222, 2, 0),
(4964, 222, 1, 0),
(4701, 223, 2, 0),
(4700, 223, 1, 0),
(5023, 224, 2, 0),
(5022, 224, 1, 0),
(5307, 225, 2, 0),
(5306, 225, 1, 0),
(4445, 226, 2, 0),
(4444, 226, 1, 0),
(4749, 227, 2, 0),
(4748, 227, 1, 0),
(4797, 231, 2, 0),
(4796, 231, 1, 0),
(5061, 232, 2, 0),
(5060, 232, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `multi_discount_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1669 ;

--
-- Очистить таблицу перед добавлением данных `oc_product_special`
--

TRUNCATE TABLE `oc_product_special`;
--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`, `multi_discount_id`) VALUES
(756, 47, 1, 1, '335.0000', '2014-10-31', '2014-11-30', 0),
(937, 214, 1, 0, '632.0000', '2017-01-23', '2017-05-31', 0),
(1642, 266, 1, 1, '840.0000', '2017-11-24', '2017-11-27', 0),
(1615, 234, 1, 1, '920.0000', '2017-11-24', '2017-11-27', 0),
(1646, 269, 1, 1, '432.0000', '2017-11-24', '2017-11-27', 0),
(1609, 231, 1, 1, '712.0000', '2017-11-24', '2017-11-27', 7),
(1613, 219, 1, 1, '752.0000', '2017-11-24', '2017-11-27', 0),
(1083, 276, 1, 1, '364.9000', '2017-11-08', '2017-11-11', 0),
(1651, 265, 1, 1, '738.7000', '2017-11-08', '2017-11-11', 0),
(910, 246, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(893, 277, 1, 0, '420.0000', '2017-09-04', '2018-05-31', 0),
(846, 139, 1, 0, '660.0000', '2017-01-10', '2017-03-31', 0),
(842, 75, 1, 0, '340.0000', '2016-08-14', '0000-00-00', 0),
(891, 263, 1, 0, '1232.0000', '2017-05-20', '2017-08-31', 0),
(1648, 273, 1, 1, '472.0000', '2017-11-24', '2017-11-27', 0),
(752, 163, 1, 0, '320.0000', '2016-08-06', '2017-01-31', 0),
(941, 216, 1, 0, '1192.0000', '2017-02-22', '2017-05-31', 0),
(879, 171, 1, 0, '350.0000', '2016-08-14', '0000-00-00', 0),
(1640, 272, 1, 1, '328.0000', '2017-11-24', '2017-11-27', 0),
(1644, 275, 1, 1, '344.0000', '2017-11-24', '2017-11-27', 0),
(1608, 282, 1, 1, '2304.0000', '2017-11-24', '2017-11-27', 7),
(1607, 227, 1, 1, '528.0000', '2017-11-24', '2017-11-27', 7),
(907, 220, 1, 0, '920.0000', '2017-02-22', '2017-05-31', 0),
(800, 178, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(875, 183, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(876, 184, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(843, 185, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(908, 206, 1, 0, '624.0000', '2017-01-29', '2017-05-31', 0),
(939, 218, 1, 0, '672.0000', '2017-01-29', '2017-05-31', 0),
(877, 188, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(911, 189, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(912, 190, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(904, 191, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(903, 192, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(878, 197, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(901, 221, 1, 0, '960.0000', '2017-01-23', '2017-05-31', 0),
(940, 217, 1, 0, '1112.0000', '2017-01-23', '2017-05-31', 0),
(844, 158, 1, 0, '460.0000', '2016-08-14', '2017-02-28', 0),
(845, 159, 1, 0, '460.0000', '2016-08-14', '2017-02-28', 0),
(906, 224, 1, 0, '380.0000', '2015-09-06', '2016-01-31', 0),
(1075, 268, 1, 1, '1023.5000', '2017-11-08', '2017-11-11', 0),
(897, 267, 1, 0, '590.0000', '2017-09-04', '2018-05-31', 0),
(1606, 226, 1, 1, '856.0000', '2017-11-24', '2017-11-27', 7),
(1652, 225, 1, 1, '624.0000', '2017-11-24', '2017-11-27', 0),
(1604, 224, 1, 1, '600.0000', '2017-11-24', '2017-11-27', 7),
(1603, 223, 1, 1, '360.0000', '2017-11-24', '2017-11-27', 7),
(1602, 246, 1, 1, '704.0000', '2017-11-24', '2017-11-27', 7),
(1601, 215, 1, 1, '712.0000', '2017-11-24', '2017-11-27', 7),
(1600, 214, 1, 1, '632.0000', '2017-11-24', '2017-11-27', 7),
(1073, 247, 1, 1, '560.7000', '2017-11-08', '2017-11-11', 0),
(1599, 213, 1, 1, '600.0000', '2017-11-24', '2017-11-27', 7),
(1598, 212, 1, 1, '512.0000', '2017-11-24', '2017-11-27', 7),
(1597, 211, 1, 1, '512.0000', '2017-11-24', '2017-11-27', 7),
(1596, 210, 1, 1, '476.0000', '2017-11-24', '2017-11-27', 7),
(1595, 209, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1594, 208, 1, 1, '600.0000', '2017-11-24', '2017-11-27', 7),
(1593, 207, 1, 1, '744.0000', '2017-11-24', '2017-11-27', 7),
(1084, 280, 1, 1, '391.6000', '2017-11-08', '2017-11-11', 0),
(1592, 206, 1, 1, '624.0000', '2017-11-24', '2017-11-27', 7),
(1591, 205, 1, 1, '488.0000', '2017-11-24', '2017-11-27', 7),
(1590, 204, 1, 1, '528.0000', '2017-11-24', '2017-11-27', 7),
(1589, 292, 1, 1, '1400.0000', '2017-11-24', '2017-11-27', 7),
(1082, 276, 1, 0, '250.0000', '2017-09-04', '2018-05-31', 0),
(1588, 203, 1, 1, '576.0000', '2017-11-24', '2017-11-27', 7),
(1078, 278, 1, 1, '1326.1000', '2017-11-08', '2017-11-11', 0),
(1587, 202, 1, 1, '576.0000', '2017-11-24', '2017-11-27', 7),
(1586, 218, 1, 1, '672.0000', '2017-11-24', '2017-11-27', 7),
(1585, 201, 1, 1, '488.0000', '2017-11-24', '2017-11-27', 7),
(1584, 200, 1, 1, '672.0000', '2017-11-24', '2017-11-27', 7),
(1583, 199, 1, 1, '512.0000', '2017-11-24', '2017-11-27', 7),
(1650, 265, 1, 1, '664.0000', '2017-11-24', '2017-11-27', 0),
(1581, 197, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1580, 270, 1, 1, '504.0000', '2017-11-24', '2017-11-27', 7),
(1638, 271, 1, 1, '288.0000', '2017-11-24', '2017-11-27', 0),
(1578, 194, 1, 1, '528.0000', '2017-11-24', '2017-11-27', 7),
(1577, 193, 1, 1, '1264.0000', '2017-11-24', '2017-11-27', 7),
(1576, 192, 1, 1, '448.0000', '2017-11-24', '2017-11-27', 7),
(1575, 191, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1079, 260, 1, 1, '507.3000', '2017-11-08', '2017-11-11', 0),
(1574, 190, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1573, 189, 1, 1, '424.0000', '2017-11-24', '2017-11-27', 7),
(1572, 188, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1571, 185, 1, 1, '392.0000', '2017-11-24', '2017-11-27', 7),
(1570, 184, 1, 1, '512.0000', '2017-11-24', '2017-11-27', 7),
(1569, 183, 1, 1, '392.0000', '2017-11-24', '2017-11-27', 7),
(1568, 182, 1, 1, '1184.0000', '2017-11-24', '2017-11-27', 7),
(1567, 239, 1, 1, '1504.0000', '2017-11-24', '2017-11-27', 7),
(1566, 238, 1, 1, '1192.0000', '2017-11-24', '2017-11-27', 7),
(1565, 179, 1, 1, '512.0000', '2017-11-24', '2017-11-27', 7),
(1614, 234, 1, 0, '920.0000', '2017-02-22', '2017-05-31', 0),
(1563, 178, 1, 1, '472.0000', '2017-11-24', '2017-11-27', 7),
(1562, 281, 1, 1, '2256.0000', '2017-11-24', '2017-11-27', 7),
(1561, 216, 1, 1, '1192.0000', '2017-11-24', '2017-11-27', 7),
(1628, 294, 1, 1, '1448.0000', '2017-11-24', '2017-11-27', 0),
(1559, 177, 1, 1, '304.0000', '2017-11-24', '2017-11-27', 7),
(1558, 171, 1, 1, '380.0000', '2017-11-24', '2017-11-27', 7),
(1074, 268, 1, 0, '690.0000', '2017-09-04', '2018-05-31', 0),
(1557, 170, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1556, 165, 1, 1, '208.0000', '2017-11-24', '2017-11-27', 7),
(1555, 233, 1, 1, '360.0000', '2017-11-24', '2017-11-27', 7),
(1554, 163, 1, 1, '336.0000', '2017-11-24', '2017-11-27', 7),
(1553, 237, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1479, 237, 1, 1, '614.1000', '2017-11-08', '2017-11-11', 0),
(1552, 236, 1, 1, '976.0000', '2017-11-24', '2017-11-27', 7),
(1551, 235, 1, 1, '976.0000', '2017-11-24', '2017-11-27', 7),
(1550, 159, 1, 1, '448.0000', '2017-11-24', '2017-11-27', 7),
(1549, 158, 1, 1, '448.0000', '2017-11-24', '2017-11-27', 7),
(1548, 245, 1, 1, '568.0000', '2017-11-24', '2017-11-27', 7),
(1547, 244, 1, 1, '1000.0000', '2017-11-24', '2017-11-27', 7),
(1546, 243, 1, 1, '1000.0000', '2017-11-24', '2017-11-27', 7),
(1545, 242, 1, 1, '1352.0000', '2017-11-24', '2017-11-27', 7),
(1544, 241, 1, 1, '1424.0000', '2017-11-24', '2017-11-27', 7),
(1478, 237, 1, 1, '552.0000', '2017-11-24', '2017-11-25', 0),
(1543, 152, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1542, 150, 1, 1, '368.0000', '2017-11-24', '2017-11-27', 7),
(1541, 149, 1, 1, '672.0000', '2017-11-24', '2017-11-27', 7),
(1540, 267, 1, 1, '776.0000', '2017-11-24', '2017-11-27', 7),
(1539, 228, 1, 1, '88.0000', '2017-11-24', '2017-11-27', 7),
(1641, 266, 1, 0, '630.0000', '2017-09-04', '2018-05-31', 0),
(1537, 268, 1, 1, '920.0000', '2017-11-24', '2017-11-27', 7),
(1645, 269, 1, 0, '324.0000', '2017-07-24', '2018-05-31', 0),
(1535, 229, 1, 1, '312.0000', '2017-11-24', '2017-11-27', 7),
(1626, 230, 1, 1, '312.0000', '2017-11-24', '2017-11-27', 0),
(1533, 240, 1, 1, '680.0000', '2017-11-24', '2017-11-27', 7),
(1532, 222, 1, 1, '976.0000', '2017-11-24', '2017-11-27', 7),
(1531, 221, 1, 1, '960.0000', '2017-11-24', '2017-11-27', 7),
(1530, 139, 1, 1, '704.0000', '2017-11-24', '2017-11-27', 7),
(1529, 285, 1, 1, '624.0000', '2017-11-24', '2017-11-27', 7),
(1528, 181, 1, 1, '712.0000', '2017-11-24', '2017-11-27', 7),
(1639, 272, 1, 0, '250.0000', '2017-09-04', '2018-05-31', 0),
(1616, 254, 1, 1, '1336.0000', '2017-11-24', '2017-11-27', 0),
(1525, 253, 1, 1, '1392.0000', '2017-11-24', '2017-11-27', 7),
(1524, 252, 1, 1, '600.0000', '2017-11-24', '2017-11-27', 7),
(1523, 251, 1, 1, '680.0000', '2017-11-24', '2017-11-27', 7),
(1522, 250, 1, 1, '680.0000', '2017-11-24', '2017-11-27', 7),
(1521, 249, 1, 1, '680.0000', '2017-11-24', '2017-11-27', 7),
(1520, 248, 1, 1, '608.0000', '2017-11-24', '2017-11-27', 7),
(1519, 260, 1, 1, '456.0000', '2017-11-24', '2017-11-27', 7),
(1518, 259, 1, 1, '784.0000', '2017-11-24', '2017-11-27', 7),
(1517, 258, 1, 1, '616.0000', '2017-11-24', '2017-11-27', 7),
(1516, 257, 1, 1, '680.0000', '2017-11-24', '2017-11-27', 7),
(1649, 265, 1, 0, '498.0000', '2017-07-24', '2018-05-31', 0),
(1515, 256, 1, 1, '424.0000', '2017-11-24', '2017-11-27', 7),
(1514, 255, 1, 1, '744.0000', '2017-11-24', '2017-11-27', 7),
(1513, 261, 1, 1, '456.0000', '2017-11-24', '2017-11-27', 7),
(1512, 220, 1, 1, '920.0000', '2017-11-24', '2017-11-27', 7),
(1612, 219, 1, 0, '752.0000', '2017-01-23', '2017-05-31', 0),
(1510, 217, 1, 1, '1112.0000', '2017-11-24', '2017-11-27', 7),
(1509, 264, 1, 1, '1264.0000', '2017-11-24', '2017-11-27', 7),
(1508, 263, 1, 1, '1232.0000', '2017-11-24', '2017-11-27', 7),
(1507, 262, 1, 1, '1560.0000', '2017-11-24', '2017-11-27', 7),
(1506, 120, 1, 1, '696.0000', '2017-11-24', '2017-11-27', 7),
(1505, 278, 1, 1, '1192.0000', '2017-11-24', '2017-11-27', 7),
(1504, 277, 1, 1, '552.0000', '2017-11-24', '2017-11-27', 7),
(1503, 276, 1, 1, '328.0000', '2017-11-24', '2017-11-27', 7),
(1643, 275, 1, 0, '258.0000', '2017-07-24', '2018-05-31', 0),
(1501, 274, 1, 1, '912.0000', '2017-11-24', '2017-11-27', 7),
(1081, 212, 1, 1, '569.6000', '2017-11-08', '2017-11-11', 0),
(1647, 273, 1, 0, '354.0000', '2017-07-24', '2018-05-31', 0),
(1499, 279, 1, 1, '544.0000', '2017-11-24', '2017-11-27', 7),
(1498, 280, 1, 1, '352.0000', '2017-11-24', '2017-11-27', 7),
(1660, 284, 1, 1, '744.0000', '2017-11-24', '2017-11-27', 0),
(1496, 283, 1, 1, '712.0000', '2017-11-24', '2017-11-27', 7),
(1495, 97, 1, 1, '312.0000', '2017-11-24', '2017-11-27', 7),
(1494, 295, 1, 1, '1528.0000', '2017-11-24', '2017-11-27', 7),
(1493, 293, 1, 1, '1152.0000', '2017-11-24', '2017-11-27', 7),
(1611, 291, 1, 1, '1240.0000', '2017-11-24', '2017-11-27', 0),
(1491, 290, 1, 1, '712.0000', '2017-11-24', '2017-11-27', 7),
(1490, 289, 1, 1, '712.0000', '2017-11-24', '2017-11-27', 7),
(1489, 288, 1, 1, '784.0000', '2017-11-24', '2017-11-27', 7),
(1636, 287, 1, 1, '792.0000', '2018-03-01', '2018-09-01', 0),
(1487, 286, 1, 1, '744.0000', '2017-11-24', '2017-11-27', 7),
(1486, 51, 1, 1, '376.0000', '2017-11-24', '2017-11-27', 7),
(1485, 247, 1, 1, '504.0000', '2017-11-24', '2017-11-27', 7),
(1484, 75, 1, 1, '352.0000', '2017-11-24', '2017-11-27', 7),
(1483, 49, 1, 1, '472.0000', '2017-11-24', '2017-11-27', 7),
(1482, 47, 1, 1, '472.0000', '2017-11-24', '2017-11-27', 7),
(1481, 41, 1, 1, '472.0000', '2017-11-24', '2017-11-27', 7),
(1624, 98, 1, 1, '568.0000', '2017-11-24', '2017-11-27', 0),
(1610, 232, 1, 1, '744.0000', '2017-11-24', '2017-11-27', 7),
(1656, 299, 1, 0, '903.0000', '2018-02-13', '2018-05-31', 0),
(1629, 297, 1, 0, '1256.0000', '2018-02-13', '2018-03-10', 0),
(1659, 296, 1, 0, '1302.0000', '2018-02-13', '2018-05-31', 0),
(1657, 298, 1, 0, '903.0000', '0000-00-00', '2018-05-31', 0),
(1632, 300, 1, 0, '792.0000', '2018-02-13', '2018-03-10', 0),
(1633, 303, 1, 0, '744.0000', '2018-02-13', '2018-03-10', 0),
(1634, 304, 1, 0, '312.0000', '2018-02-13', '2018-03-10', 0),
(1635, 301, 1, 0, '1064.0000', '2018-02-13', '2018-03-10', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_to_category`
--

TRUNCATE TABLE `oc_product_to_category`;
--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
(41, 57, 0),
(262, 65, 0),
(262, 60, 0),
(47, 57, 0),
(49, 57, 0),
(51, 57, 0),
(261, 24, 0),
(256, 65, 0),
(261, 65, 0),
(260, 65, 0),
(259, 65, 0),
(259, 60, 0),
(286, 24, 0),
(287, 68, 0),
(288, 24, 0),
(288, 68, 0),
(289, 68, 0),
(289, 59, 0),
(293, 68, 0),
(98, 68, 0),
(307, 60, 0),
(229, 63, 0),
(303, 59, 0),
(303, 69, 0),
(305, 70, 0),
(278, 60, 0),
(230, 63, 0),
(279, 67, 0),
(292, 68, 0),
(280, 67, 0),
(296, 64, 0),
(269, 24, 0),
(270, 59, 0),
(270, 67, 0),
(307, 70, 0),
(298, 64, 0),
(265, 59, 0),
(266, 24, 0),
(306, 70, 0),
(97, 63, 0),
(98, 63, 0),
(257, 24, 0),
(257, 65, 0),
(279, 24, 0),
(278, 67, 0),
(228, 63, 0),
(304, 69, 0),
(265, 67, 0),
(269, 67, 0),
(273, 67, 0),
(275, 67, 0),
(286, 68, 0),
(277, 24, 0),
(276, 67, 0),
(255, 59, 0),
(254, 60, 0),
(254, 65, 0),
(253, 60, 0),
(253, 65, 0),
(252, 57, 0),
(267, 59, 0),
(294, 59, 0),
(294, 68, 0),
(295, 68, 0),
(295, 59, 0),
(296, 59, 0),
(301, 60, 0),
(260, 24, 0),
(120, 57, 0),
(267, 67, 0),
(268, 59, 0),
(268, 67, 0),
(258, 65, 0),
(256, 24, 0),
(258, 24, 0),
(255, 65, 0),
(287, 24, 0),
(216, 59, 0),
(285, 68, 0),
(217, 66, 0),
(281, 68, 0),
(218, 66, 0),
(251, 57, 0),
(296, 69, 0),
(297, 69, 0),
(297, 59, 0),
(139, 59, 0),
(75, 64, 0),
(301, 69, 0),
(221, 59, 0),
(217, 59, 0),
(233, 66, 0),
(233, 63, 0),
(139, 64, 0),
(149, 59, 0),
(150, 59, 0),
(280, 24, 0),
(152, 24, 0),
(290, 68, 0),
(290, 24, 0),
(291, 59, 0),
(292, 59, 0),
(293, 59, 0),
(158, 24, 0),
(159, 64, 0),
(300, 60, 0),
(299, 69, 0),
(298, 69, 0),
(163, 64, 0),
(219, 59, 0),
(165, 24, 0),
(271, 63, 0),
(272, 24, 0),
(308, 60, 0),
(273, 24, 0),
(170, 60, 0),
(171, 60, 0),
(75, 24, 0),
(305, 59, 0),
(304, 63, 0),
(302, 60, 0),
(300, 69, 0),
(299, 60, 0),
(298, 60, 0),
(163, 24, 0),
(158, 64, 0),
(171, 64, 0),
(291, 68, 0),
(277, 67, 0),
(278, 65, 0),
(274, 59, 0),
(299, 64, 0),
(274, 67, 0),
(275, 24, 0),
(272, 67, 0),
(271, 67, 0),
(240, 24, 0),
(177, 24, 0),
(178, 24, 0),
(243, 65, 0),
(239, 65, 0),
(179, 59, 0),
(250, 65, 0),
(251, 65, 0),
(181, 59, 0),
(242, 65, 0),
(238, 65, 0),
(182, 60, 0),
(243, 59, 0),
(183, 24, 0),
(184, 24, 0),
(238, 59, 0),
(242, 59, 0),
(185, 24, 0),
(264, 67, 0),
(264, 59, 0),
(282, 68, 0),
(263, 59, 0),
(188, 24, 0),
(237, 24, 0),
(237, 65, 0),
(189, 24, 0),
(190, 24, 0),
(241, 65, 0),
(218, 59, 0),
(191, 24, 0),
(241, 59, 0),
(192, 24, 0),
(193, 59, 0),
(240, 65, 0),
(194, 65, 0),
(194, 59, 0),
(250, 57, 0),
(249, 65, 0),
(248, 57, 0),
(214, 59, 0),
(197, 24, 0),
(244, 65, 0),
(276, 24, 0),
(306, 59, 0),
(199, 65, 0),
(199, 59, 0),
(201, 24, 0),
(233, 64, 0),
(226, 65, 0),
(203, 24, 0),
(204, 24, 0),
(205, 24, 0),
(236, 65, 0),
(206, 66, 0),
(235, 65, 0),
(244, 59, 0),
(206, 59, 0),
(285, 24, 0),
(212, 24, 0),
(236, 59, 0),
(214, 66, 0),
(284, 68, 0),
(207, 59, 0),
(281, 60, 0),
(234, 59, 0),
(247, 24, 0),
(230, 66, 0),
(202, 24, 0),
(246, 24, 0),
(200, 24, 0),
(213, 57, 0),
(209, 57, 0),
(208, 57, 0),
(220, 59, 0),
(211, 24, 0),
(210, 24, 0),
(239, 59, 0),
(215, 59, 0),
(159, 24, 0),
(219, 66, 0),
(283, 60, 0),
(283, 68, 0),
(220, 66, 0),
(221, 66, 0),
(284, 59, 0),
(222, 59, 0),
(282, 60, 0),
(223, 24, 0),
(222, 65, 0),
(224, 24, 0),
(246, 65, 0),
(245, 59, 0),
(225, 60, 0),
(226, 59, 0),
(235, 59, 0),
(234, 66, 0),
(227, 59, 0),
(266, 67, 0),
(247, 65, 0),
(231, 24, 0),
(232, 24, 0),
(249, 57, 0),
(308, 70, 0),
(309, 59, 0),
(309, 70, 0),
(310, 59, 0),
(310, 70, 0),
(311, 59, 0),
(311, 70, 0),
(312, 70, 0),
(312, 60, 0),
(313, 70, 0),
(313, 59, 0),
(314, 70, 0),
(314, 59, 0),
(315, 70, 0),
(315, 59, 0),
(316, 70, 0),
(316, 24, 0),
(317, 24, 0),
(317, 70, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_to_download`
--

TRUNCATE TABLE `oc_product_to_download`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_to_layout`
--

TRUNCATE TABLE `oc_product_to_layout`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_product_to_store`
--

TRUNCATE TABLE `oc_product_to_store`;
--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(41, 0),
(47, 0),
(49, 0),
(51, 0),
(75, 0),
(97, 0),
(98, 0),
(120, 0),
(139, 0),
(149, 0),
(150, 0),
(152, 0),
(158, 0),
(159, 0),
(163, 0),
(165, 0),
(170, 0),
(171, 0),
(177, 0),
(178, 0),
(179, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(197, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(215, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(225, 0),
(226, 0),
(227, 0),
(228, 0),
(229, 0),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(243, 0),
(244, 0),
(245, 0),
(246, 0),
(247, 0),
(248, 0),
(249, 0),
(250, 0),
(251, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(260, 0),
(261, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 0),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(289, 0),
(290, 0),
(291, 0),
(292, 0),
(293, 0),
(294, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0),
(304, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0),
(309, 0),
(310, 0),
(311, 0),
(312, 0),
(313, 0),
(314, 0),
(315, 0),
(316, 0),
(317, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_profile`
--

DROP TABLE IF EXISTS `oc_profile`;
CREATE TABLE IF NOT EXISTS `oc_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_profile`
--

TRUNCATE TABLE `oc_profile`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_profile_description`
--

DROP TABLE IF EXISTS `oc_profile_description`;
CREATE TABLE IF NOT EXISTS `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_profile_description`
--

TRUNCATE TABLE `oc_profile_description`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Очистить таблицу перед добавлением данных `oc_return`
--

TRUNCATE TABLE `oc_return`;
--
-- Дамп данных таблицы `oc_return`
--

INSERT INTO `oc_return` (`return_id`, `order_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES
(2, 47, 0, 0, 'Irochka', 'Gavrilenko', 'Gavrilenko.1@gmail.com', '0662634533', 'Боди БТ-12', 'БОДІ БТ-12', 1, 0, 6, 0, 2, '', '2014-12-16', '2014-12-23 14:47:40', '2014-12-23 14:47:40'),
(3, 156, 0, 74, 'Оксана', 'Томашенко', 'oksana98673@gmail.com', '+380983891175', 'СОРОЧКА БІЛА З ФІГУРНОЮ ПЛАНКОЮ ТА ОБРАМЛЕНОЮ КИШЕНЕЮ', 'Р 37', 1, 1, 8, 0, 2, 'не підійшов розмір', '2018-02-18', '2018-02-21 23:25:57', '2018-02-21 23:25:57');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Очистить таблицу перед добавлением данных `oc_return_action`
--

TRUNCATE TABLE `oc_return_action`;
--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent'),
(1, 3, 'Refunded'),
(2, 3, 'Credit Issued'),
(3, 3, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Очистить таблицу перед добавлением данных `oc_return_history`
--

TRUNCATE TABLE `oc_return_history`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Очистить таблицу перед добавлением данных `oc_return_reason`
--

TRUNCATE TABLE `oc_return_reason`;
--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(8, 1, '3. інше'),
(6, 3, '1. не тот размер'),
(6, 2, '1. не той розмір'),
(6, 1, '1. не той розмір'),
(7, 3, '2. брак'),
(7, 2, '2. брак'),
(8, 3, '3. другое'),
(8, 2, '3. інше'),
(7, 1, '2. брак');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Очистить таблицу перед добавлением данных `oc_return_status`
--

TRUNCATE TABLE `oc_return_status`;
--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products'),
(1, 3, 'Pending'),
(3, 3, 'Complete'),
(2, 3, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Очистить таблицу перед добавлением данных `oc_review`
--

TRUNCATE TABLE `oc_review`;
--
-- Дамп данных таблицы `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(55, 47, 0, 'Ирина', 'Отличная рубашка-боди, хорошо сидит на фигуре и качество отличное!', 5, 1, '2015-02-22 20:06:06', '0000-00-00 00:00:00'),
(54, 41, 0, 'Леся', 'Редко встретишь сейчас одежду такого хорошего качества. Ребята молодцы, так держать.', 5, 1, '2015-02-10 23:19:01', '0000-00-00 00:00:00'),
(48, 47, 0, 'Светлана', 'Для офиса то что надо, можно носить и с юбкой и со штанами. У меня теперь это самая любимая вещь. Подумываю над тем чтобы купить еще какую нибудь рубашку боди другого цвета, может серую, еще не решила)', 5, 1, '2015-01-19 00:35:35', '0000-00-00 00:00:00'),
(47, 49, 0, 'Ольга', 'Я себе взяла такую. По размеру подошла, села очень хорошо. Брала 42р.(у меня 86-68-90). Радуююсь, что спинка теперь в тепле))', 4, 1, '2015-01-06 20:57:23', '0000-00-00 00:00:00'),
(44, 51, 0, 'Светик', 'Взяла этот бодик. Получается очень стильно с джинсами и кедами, оч довольна.', 5, 1, '2014-12-23 22:48:44', '0000-00-00 00:00:00'),
(43, 41, 0, 'Карина', 'Рубашка боди подошла. На работу то что надо. Хочу еще черную заказать, брала р.42. Вобщем хороший товар по доступной цене', 5, 1, '2014-12-23 22:45:25', '0000-00-00 00:00:00'),
(57, 75, 0, 'Диана', 'Блузка смотрится великолепно, нончайшая нежная ткань, очень качественный пошив. Размер маломерит, поэтому рекомендуюю сначала сравнить свои мерки с размерной сеткой здесь на сайте. В остально все замечательно, спасибо мастерам!', 5, 1, '2015-03-01 23:06:10', '0000-00-00 00:00:00'),
(187, 203, 60, 'Алла', 'Отримала свою сорочку через три дні після замовлення, сіла ідеально, все зроблено дуже акуратно. Приємне спілкування, враховано всі побажання, якісно і швидко. Індпошив за дуже приємною ціною! Браво, КАМІЗЕЛЬКА, буду радити подругам і замовляти ще!', 5, 1, '2017-10-06 22:43:49', '0000-00-00 00:00:00'),
(76, 49, 0, 'Инна', 'Люблю лаконичные вещи,чтобы ничего лишнего.Это именно тот случай.Размер подошел,качество хорошее,спасибо\r\n', 5, 1, '2015-04-05 16:17:20', '0000-00-00 00:00:00'),
(185, 235, 0, 'Светлана Батьковна', 'Я бы назвала это платье &quot;надежным&quot;, лаконичное и одновременно может быть празднечным. Меня уже 1 раз выручило), после работы попала на день роджкения и была при &quot;параде&quot;', 5, 1, '2017-05-24 09:09:09', '0000-00-00 00:00:00'),
(186, 278, 0, 'Оксана ', 'Добрый день. \r\nХочу оставить отзыв. Потому, как покупкой осталась очень довольна. \r\nПриятное общение и консультация продавца. \r\nЖилетка просто супер!!!\r\n Спасибо!!! ', 5, 1, '2017-06-11 13:59:53', '0000-00-00 00:00:00'),
(84, 120, 0, 'Лена', 'Очень нежный и женственный бодик. После его покупки чувствую себя принцессой))) Качество отменное, сервис тоже на высоком уровне. Рекомендую всем!', 5, 1, '2015-04-09 23:46:37', '0000-00-00 00:00:00'),
(86, 75, 0, 'Лиля', 'Очень стильная, как я люблю- можно и с джинсами и с юбкой и с брюками. Действительно очень лёгкая дышащая ткань. Качество пошива очень хорошее, я сама шью, так что авторитетно заявляю- качество на 100% соответствует заявленной цене!', 5, 1, '2015-04-10 00:00:11', '0000-00-00 00:00:00'),
(90, 41, 0, 'Zaza', 'Я такую рубашку боди искала давно, нашла только здесь. Ее плюс в том, что она в зоне боди не отрезная, и если одеть с брюками низкой посадки, то шов не выглядывает. Еще у неё не выточки, а рельефные швы, благодаря им посадка на фигуре отличная.Рада, что в Украине появился такой производитель женской одежды!', 5, 1, '2015-05-09 11:48:35', '0000-00-00 00:00:00'),
(92, 120, 0, 'Sara', 'Шикарная вещь. В ней каким то волшебным образом сочетаются и легкость и деловой стиль. Снял жабо-и на работу. Одел жабо-и в кафешку))). Мне эта рубашка боди подошла на 100%!', 5, 1, '2015-05-09 11:49:07', '0000-00-00 00:00:00'),
(94, 75, 0, 'Янна', 'Отличная блузочка. Ношу без пояска. Оченьдовольна.', 5, 1, '2015-05-09 11:48:51', '0000-00-00 00:00:00'),
(96, 41, 0, 'Олеся', 'якісна та зручна сорочка боді. обслуговування на сайті гарне.', 5, 1, '2015-05-11 13:12:33', '0000-00-00 00:00:00'),
(102, 47, 0, 'Іра', 'Для роботи в офісі те, що потрібно!якісне пошиття!', 5, 1, '2015-05-12 22:43:55', '0000-00-00 00:00:00'),
(106, 41, 0, 'Карина', 'Первая рубашка боди в котрой меня все устраивает. После покупки этой я поклонница этого сайта. Брала себе S, все соответствует тем параметрам которые указаны на сайте.', 5, 1, '2015-05-14 21:27:42', '0000-00-00 00:00:00'),
(107, 120, 0, 'Ирина', 'Заказала, через 2 часа позвонили, уточнили мои параметры, сказали, что готовой нет и надо шить. И на следующий день отправили. Сегодня получила и...... моей радости нет придела) села идеально, пошита очень аккуратно, в общем ребята работают на 5 с +!', 5, 1, '2015-05-14 21:27:35', '0000-00-00 00:00:00'),
(109, 49, 0, 'Уляна', 'Тут поповнюю свій офісний гардероб майже щомісяця. досі ще не розчарувалася. Якісно, стильно, недорого.', 5, 1, '2015-05-14 21:27:05', '0000-00-00 00:00:00'),
(189, 217, 0, 'Алла', 'Плаття шикарно сидить :) якісне пошиття та тканина ', 5, 1, '2017-12-25 22:49:37', '0000-00-00 00:00:00'),
(190, 296, 0, 'Лена Леночкина', 'Он волшебный и теплый! Спасибо Камизелька!', 5, 1, '2018-01-16 00:30:52', '0000-00-00 00:00:00'),
(191, 298, 0, 'Nika', 'Как то удачно смотрится жилеточка и на работе и на выход) Удачносочетается  и с платьем и с брюками, нравится очень)', 5, 1, '2018-01-16 00:33:14', '0000-00-00 00:00:00'),
(192, 297, 0, 'Иришка', 'Как только одену сарафан , так и любуюсь собой) И мужу очень нравится) Сказал &quot; редкое сочетание когда и тепло и красиво&quot;!', 5, 1, '2018-01-16 00:35:53', '0000-00-00 00:00:00'),
(117, 75, 0, 'Solo', 'Работает хорошая команда! Жаль здесь нельзя оставить общий отзыв о магазине, только в товарах. А у меня их уже три- рубашка боди, юбка и эта блузка. Всеми изделиями довольна и буду покупать ещё))))))', 5, 1, '2015-05-16 12:07:51', '0000-00-00 00:00:00'),
(168, 216, 0, 'Инна ', 'Здравствуйте! Сарафан получила, размер подошел. Качеством осталась очень довольна. Спасибо. Буду обращаться к Вам еще. \r\nУдачных продаж!!!! ', 5, 1, '2016-11-24 21:14:03', '0000-00-00 00:00:00'),
(120, 47, 0, 'Лиза', 'Нашла этот сайт, смотрю -только хорошие отзывы, не поверила. А рубашку то купить надо. Заказала эту. Вчера получила Новой Почтой. И правда-отличное качество за хорошую цену, ни капли не пожалела и как любитель рубашек обязательно куплю здесь ещё!', 5, 1, '2015-05-16 12:15:19', '0000-00-00 00:00:00'),
(121, 98, 0, 'Наташа', 'Краватка супепер!!! Виглядає дуже стильно!!!', 5, 1, '2015-05-16 15:06:44', '0000-00-00 00:00:00'),
(182, 255, 0, 'Валентина', 'Отличная модель, позволяет худеть и поправляться))), легко можно перешить пуговку. В уходе очень лёгкая, не мнется . Спасибо Камизельке!', 5, 1, '2017-05-18 22:36:48', '0000-00-00 00:00:00'),
(183, 242, 0, 'Нели', 'Спасибо Камизельке за это чудесноеплатье! Муж сказал: вот такие платья и носи)))', 5, 1, '2017-05-24 09:08:54', '0000-00-00 00:00:00'),
(184, 236, 0, 'Эля', 'Понравилось) Очень универсальное и нескучное платье, качество, как всегда на высоте)', 4, 1, '2017-05-24 09:09:02', '0000-00-00 00:00:00'),
(180, 253, 0, 'Марина ', 'Делаю покупку в интернет магазине &quot;Камизелька&quot; уже не первый раз. Как всегда, все ОК: приятное общение, быстрая доставка....\r\nПокупкой ооочень довольна!!!. В жизни жилетка мне понравилась даже больше чем на фото.\r\nБольшое Вам спасибо за еще одну стильную вещь в моем гардеробе. \r\nС нетерпением буду ждать обновление  летней коллекции. ', 5, 1, '2017-05-12 21:16:39', '0000-00-00 00:00:00'),
(181, 253, 0, 'Надія', 'Оооо! Ця камізелька причудова! З задоволенням ношу і &quot;ловлю&quot; компліменти!', 5, 1, '2017-05-18 22:36:39', '0000-00-00 00:00:00'),
(129, 120, 0, 'Валентина Ивановна', 'Сегодня забрала на почте, распаковала 2 часа назад и перемеряла с десятком юбок и столько же штанов:=) Смотрится сногсшибательно!!!', 5, 1, '2015-05-19 22:31:38', '0000-00-00 00:00:00'),
(188, 287, 0, 'Iris', 'Сорочка крута прикрута) Я собі в ній подобаюсь і оточуючим!', 5, 1, '2017-10-23 23:04:27', '0000-00-00 00:00:00'),
(136, 41, 0, 'Лилия', 'Очень долго себе искала строгую рубашку-боди без излишеств, так сказать полный минимализм. И вот наткнулась на Камизельку. Милая и вежливая девушка-менеджер помогла мне определиться с размером.\r\nСегодня получила свой заказ. Размер подошел идеально. :-) Покупкой очень довольна. Приятно удивило, что на боди зад идет стрингами, что очень удобно под брюками.', 5, 1, '2015-05-26 15:20:47', '0000-00-00 00:00:00'),
(138, 75, 0, 'Оксана', 'Познайомилася з цим брендом на фестивалі. Купила таку блузочку і виявилося дуже вдало - приємна і стильна модель. Рекомендую цей одяг усім хто любить якісні речі!', 5, 1, '2015-06-15 17:26:48', '0000-00-00 00:00:00'),
(167, 230, 0, 'Ольга ', 'Заказала шапочку. Очень понравилась, цвет нейтральный - подходит под все. Покупкой осталась очень довольна. \r\nСпасибо!!!', 5, 1, '2016-11-24 21:14:17', '0000-00-00 00:00:00'),
(141, 75, 0, 'Олена', 'Надзвичайно вдала, неординарна,  цікава блузка! В житті виглядає набагато ефектніше, ніж на фото. Чоловіки звертають увагу, особливо коли вітер завіває пелерину  :)) Рекомендую особам, які люблять небанальні речі! Якість пошиття бездоганна!', 5, 1, '2015-09-02 17:43:36', '0000-00-00 00:00:00'),
(142, 139, 0, 'Катерина', 'О, это платьице я купила на фестивале в Киеве. Такого качественного пошива я не встречала уже давно, клеточка в клеточку, шовчики ровненькие - всё идеально. жду когда чуть похолодает и сразу одену, а пока любуюсь перед зеркалом)))', 5, 1, '2015-09-02 17:40:20', '0000-00-00 00:00:00'),
(144, 152, 0, 'Ольга', 'Рубашка, как всегда, отличная. Рекомендую всем любителям рубашек покупать их у Камизельки. У меня уже 4 рубашки этой марки и всеми очень довольна!', 5, 1, '2015-09-14 09:39:00', '0000-00-00 00:00:00'),
(176, 220, 0, 'Екатерина ', ' Очень порядочный, приятный в общении и честный продавец! Заказываю повторно, качеством очень довольна! Спасибо!!!', 5, 1, '2017-03-04 22:57:54', '0000-00-00 00:00:00'),
(177, 239, 0, 'Ольга ', 'Платье просто супер!!!\r\nСпасибо Вам за приятное сотрудничество.', 5, 1, '2017-03-04 23:11:20', '0000-00-00 00:00:00'),
(178, 240, 0, 'маня)', 'Теперь моя любимая!!!', 5, 1, '2017-03-21 18:20:53', '0000-00-00 00:00:00'),
(179, 207, 0, 'Наталя', 'Спідниця дуже гарна, елегантна,якісна ', 5, 1, '2017-05-12 21:16:52', '0000-00-00 00:00:00'),
(147, 51, 0, 'Аля', 'Купила такую рубашку боди у Камизельки на фестивале. Вот зашла на сайт за другой расцветкой) Решила написать отзыв и порекомендовать эту торговую марку всем любительницам рубашек, сама такая))) Очень качественный пошив, всё очень аккуратно и носится замечательно!', 5, 1, '2015-10-01 23:03:14', '0000-00-00 00:00:00'),
(149, 41, 0, 'Марина', 'Очень довольна бодиком и сервисом, молодцы! Привезли все оперативно - несколько размеров на выбор. Качество хорошее, да и сам факт наличия подобных боди сегодня почему-то очень редкий на нашем рынке. Спасибо!!!', 5, 1, '2015-11-11 21:57:35', '0000-00-00 00:00:00'),
(150, 47, 0, 'Ірина', 'Дуже вдала модель, відмінна якість, дуже добреноситься! Залишилась повністю задоволена. Фасон настільки підійшов, що обовязково замовлю іншого кольору! Дякую! ', 5, 1, '2015-11-11 21:58:11', '0000-00-00 00:00:00'),
(151, 152, 0, 'Лариса', 'Рубашке &quot;вживую&quot; намного круче, чем на фото. Качество супер, редко такое встретишь!', 5, 1, '2016-01-16 00:45:56', '0000-00-00 00:00:00'),
(153, 165, 0, 'Алиса', 'Удобный и приятный лонгслив. Ткань приятная к телу, все строчки ровные, хорошо сел на фигуру, размер соответствует заявленному.', 5, 1, '2016-01-16 00:46:10', '0000-00-00 00:00:00'),
(155, 170, 0, 'ВераВеар', 'Представитель компании быстро связался после оформления заказа, вежливо уточнил все нюансы. Жилетку получила, как и обещали, через три дня. Ткань, пошив и сама модель жилетки отличные, ожида что нибудь попроще, а оказалось, хорошая брендовая вещь. Рекомендую этот бренд любительницам качества и стиля!', 5, 1, '2016-01-16 00:45:46', '0000-00-00 00:00:00'),
(157, 181, 0, 'Ліля', 'Чудова сукня, дуже легка та приємна до тіла. Чекаємо справжнього тепла))))', 5, 1, '2016-04-16 12:24:08', '0000-00-00 00:00:00'),
(159, 192, 0, 'Тамила', 'Очень рада, что познакомилась с этим производителем. Узнала о них на Фестивале украинских производителей в Киеве. Купила эту кофточку, довольна сказочно! Леккая, удобная, красивая-что ёще надо? и вообще все модели сделаны качественно и стильно.', 5, 1, '2016-04-26 00:01:37', '0000-00-00 00:00:00'),
(160, 41, 0, 'Анна', 'Рубашку-боди очень тяжело найти в интернет-магазинах) Спасибо Камизельке, качество обслуживания и качество вещи на высоте - строчечка в строчечку, очень аккуратно пошито. Ткань приятная к телу. Сразу заметно, что работают профессионалы - подскажут по размерам, и даже сошьют по вашим меркам при необходимости :) Отправили быстро.\r\nВсем осталась довольна, рекомендую!', 5, 1, '2016-06-30 21:45:56', '0000-00-00 00:00:00'),
(161, 177, 0, 'Ірина', 'Надзвичайно вдала модель та якість! Дякую!', 5, 1, '2016-06-30 22:11:23', '0000-00-00 00:00:00'),
(162, 192, 0, 'Оксана', 'Придбала цю блузу на фестивалі, якістю дуже задоволена!  Дуже рада, що познайомилась з цим брендом, хотіла купити ще гарну сорочку, але нажаль на фестивалях гроші закінчуються дуже швидко. Але тепер ретельно слідкую за новинками Камізельки.!', 5, 1, '2016-06-30 22:15:36', '0000-00-00 00:00:00'),
(163, 181, 0, 'Люба', 'Платье, так сказать 2 в 1))). Жарко-ношу как платье, а когда прохладно-ношу с футболкой и джинсами. Размер определяла по размерной сетке здесь на сайте, село идеально!', 5, 1, '2016-06-30 22:18:57', '0000-00-00 00:00:00'),
(164, 178, 0, 'Наталья', 'Спасибо вам Камизелька за эту модель! Искала блузу-тренд этого года и нашла! Спасибо за все консультации в подборе размера, всё подошло идеально. Желаю развития и стабильного курса!!!', 5, 1, '2016-06-30 22:22:30', '0000-00-00 00:00:00'),
(165, 211, 0, 'Александра', 'Познакомилась с этим брендом на фестивале украинских производителей и была приятно удивлена. Хорошее качество, изделия стильные, &quot;вкусные&quot;. Эту блузочку одевала уже пару раз, стирала - мне все нравится)', 5, 1, '2016-08-11 15:51:52', '0000-00-00 00:00:00'),
(166, 203, 0, 'Лина', 'Первая рубашка с которой получилось так: увидела-понравилось-одела-заплатила-ушла!!!! Это было на фестивале, где Камизелька представляла свою новую коллекцию.Спинка на рубашке как то сшита так, что при моём росте 1м 54 см. а размере 44 рубашка села идеально, нигде не топорщится и прямо как на меня шили.', 5, 1, '2016-08-13 20:38:03', '0000-00-00 00:00:00'),
(169, 217, 0, 'Гость', 'Плаття просто супер!!!! Якість бездоганна. Рекомендую відповідального та приємного в спілкуванні продавця. Дякую за співпрацю. Все пройшло оперативно. Успіхів Вам та гарних покупців!', 5, 1, '2016-12-09 07:08:25', '0000-00-00 00:00:00'),
(170, 216, 0, 'Ольга', 'Очень классный товар. Покупаю не первый раз и всем рекомендую!', 5, 1, '2016-12-09 07:08:50', '0000-00-00 00:00:00'),
(171, 214, 0, 'Оксана ', 'Очень долго искала необычную юбку. И вот увидела эту. Никогда не заказывала вещи по интернету, по этому немного переживала..., что что то пойдет не так. В результате покупкой осталась очень довольна. Буду обязательно  заглядывать к Вам еще. ', 5, 1, '2016-12-09 07:09:10', '0000-00-00 00:00:00'),
(172, 218, 0, 'Саша ', 'Добрий день! Хочу залишити відгук. \r\nСукня мені дуже сподобалась. Якість відмінна. Від співпраці залишилися приємні враження.\r\nДякую!!!', 5, 1, '2016-12-09 07:08:40', '0000-00-00 00:00:00'),
(173, 222, 0, 'Марина ', 'Спасибо за симпатичное платьице! Размер подошел, очень хорошо село. Ткань приятная. Буду к Вам заглядывать еще. ', 5, 1, '2016-12-15 14:09:49', '0000-00-00 00:00:00'),
(174, 221, 0, 'Milena', 'Сегодня получила платье. Одела и влюбилась!!! \r\nПлатье смотрится еще лучше чем на фото,  очень приятное.\r\nКачество пошива супер!!! Спасибо Вам большое!!', 5, 1, '2016-12-15 14:10:17', '0000-00-00 00:00:00'),
(175, 225, 0, 'Диана ', 'Заказывала  у Вас жилетку на прошлой неделе. Вот решила оставить отзыв, потому , как покупкой осталась очень довольна - жилетка подходит и под штаны и даже с платьем смотрится супер!!!! \r\n Спасибо за качественную и оригинальную вещь!!!!', 5, 1, '2016-12-21 22:43:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33440 ;

--
-- Очистить таблицу перед добавлением данных `oc_setting`
--

TRUNCATE TABLE `oc_setting`;
--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(18445, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(18444, 0, 'sub_total', 'sub_total_status', '1', 0),
(18441, 0, 'tax', 'tax_sort_order', '5', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(18440, 0, 'tax', 'tax_status', '0', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(3334, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(3333, 0, 'cod', 'cod_order_status_id', '1', 0),
(3332, 0, 'cod', 'cod_total', '0.01', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(33175, 0, 'coupon', 'coupon_sort_order', '4', 0),
(33174, 0, 'coupon', 'coupon_status', '1', 0),
(30590, 0, 'courier', 'courier_min_total_for_free_delivery', '1500', 0),
(16092, 0, 'free', 'free_sort_order', '', 0),
(16091, 0, 'free', 'free_status', '0', 0),
(23798, 0, 'novaposhta', 'novaposhta_geo_zone_id', '0', 0),
(30594, 0, 'courier', 'courier_sort_order', '1', 0),
(18437, 0, 'credit', 'credit_sort_order', '7', 0),
(18436, 0, 'credit', 'credit_status', '0', 0),
(23968, 0, 'news', 'news_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:8:"headline";s:1:"1";s:8:"numchars";s:3:"100";s:9:"layout_id";s:1:"1";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(23964, 0, 'news', 'news_popup_width', '50', 0),
(18439, 0, 'reward', 'reward_sort_order', '2', 0),
(18438, 0, 'reward', 'reward_status', '0', 0),
(16090, 0, 'free', 'free_geo_zone_id', '0', 0),
(19396, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(23963, 0, 'news', 'news_thumb_height', '50', 0),
(23972, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(23961, 0, 'news', 'news_headline_module', '1', 0),
(20898, 0, 'google_sitemap', 'google_sitemap_status', '1', 0),
(16087, 0, 'flat', 'flat_status', '0', 0),
(21665, 0, 'bank_transfer', 'bank_transfer_status', '1', 0),
(21666, 0, 'bank_transfer', 'bank_transfer_sort_order', '2', 0),
(23800, 0, 'novaposhta', 'novaposhta_sort_order', '6', 0),
(23799, 0, 'novaposhta', 'novaposhta_status', '0', 0),
(30825, 0, 'simple', 'simple_header_tag', 'h3', 0),
(30826, 0, 'simple', 'simple_headers', 'a:2:{s:11:"header_main";a:3:{s:2:"id";s:11:"header_main";s:5:"label";a:3:{s:2:"ru";s:37:"Основная информация";s:2:"ua";s:35:"Основна інформація";s:2:"en";s:9:"Main info";}s:5:"place";s:8:"customer";}s:14:"header_address";a:3:{s:2:"id";s:14:"header_address";s:5:"label";a:3:{s:2:"ru";s:10:"Адрес";s:2:"ua";s:12:"Адреса";s:2:"en";s:7:"Address";}s:5:"place";s:8:"customer";}}', 1),
(21664, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '0', 0),
(33408, 0, 'config', 'config_maintenance', '0', 0),
(33409, 0, 'config', 'config_password', '1', 0),
(18443, 0, 'voucher', 'voucher_sort_order', '8', 0),
(18442, 0, 'voucher', 'voucher_status', '0', 0),
(31601, 0, 'bestseller', 'bestseller_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"0";s:10:"sort_order";s:0:"";}}', 1),
(32605, 0, 'featured', 'product', '', 0),
(32606, 0, 'featured', 'featured_product', '255,237,258', 0),
(32607, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"180";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"2";}}', 1),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(14884, 0, 'banner', 'banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"6";s:5:"width";s:3:"182";s:6:"height";s:3:"182";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"3";}}', 1),
(21663, 0, 'bank_transfer', 'bank_transfer_order_status_id', '1', 0),
(21662, 0, 'bank_transfer', 'bank_transfer_total', '', 0),
(21661, 0, 'bank_transfer', 'bank_transfer_bank_1', 'qqqqq', 0),
(30823, 0, 'simple', 'simple_joomla_path', '', 0),
(30824, 0, 'simple', 'simple_joomla_route', '', 0),
(29584, 0, 'oc_smsc', 'oc_smsc_status_id_15', '', 0),
(30827, 0, 'simple', 'restore', '0', 0),
(30828, 0, 'simple', 'simple_payment_titles', 'a:3:{s:13:"bank_transfer";a:3:{s:4:"show";s:1:"0";s:5:"title";a:3:{s:2:"ru";s:35:"Банковский перевод";s:2:"ua";s:35:"Банковский перевод";s:2:"en";s:35:"Банковский перевод";}s:11:"description";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:3:"cod";a:3:{s:4:"show";s:1:"0";s:5:"title";a:3:{s:2:"ru";s:36:"Оплата при доставке";s:2:"ua";s:36:"Оплата при доставке";s:2:"en";s:36:"Оплата при доставке";}s:11:"description";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:13:"free_checkout";a:3:{s:4:"show";s:1:"0";s:5:"title";a:3:{s:2:"ru";s:31:"Бесплатный заказ";s:2:"ua";s:31:"Бесплатный заказ";s:2:"en";s:31:"Бесплатный заказ";}s:11:"description";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}}', 1),
(33410, 0, 'config', 'config_encryption', '79278db12fec8cfb96cc317fc3ff65e8', 0),
(33411, 0, 'config', 'config_compression', '0', 0),
(29583, 0, 'oc_smsc', 'oc_smsc_status_id_1', '', 0),
(33414, 0, 'config', 'config_error_filename', 'error.txt', 0),
(33415, 0, 'config', 'config_google_analytics', '&lt;!-- Google Analytics --&gt;\r\n&lt;script&gt;\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-57659232-1'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n&lt;/script&gt;\r\n&lt;!-- /Google Analytics --&gt;\r\n\r\n&lt;!-- Yandex.Metrika counter --&gt;\r\n\r\n&lt;script type=&quot;text/javascript&quot;&gt;\r\n    (function (d, w, c) {\r\n        (w[c] = w[c] || []).push(function() {\r\n            try {\r\n                w.yaCounter27836184 = new Ya.Metrika({\r\n                    id:27836184,\r\n                    clickmap:true,\r\n                    trackLinks:true,\r\n                    accurateTrackBounce:true,\r\n                    webvisor:true,\r\n                    trackHash:true\r\n                });\r\n            } catch(e) { }\r\n        });\r\n\r\n        var n = d.getElementsByTagName(&quot;script&quot;)[0],\r\n            s = d.createElement(&quot;script&quot;),\r\n            f = function () { n.parentNode.insertBefore(s, n); };\r\n        s.type = &quot;text/javascript&quot;;\r\n        s.async = true;\r\n        s.src = &quot;https://mc.yandex.ru/metrika/watch.js&quot;;\r\n\r\n        if (w.opera == &quot;[object Opera]&quot;) {\r\n            d.addEventListener(&quot;DOMContentLoaded&quot;, f, false);\r\n        } else { f(); }\r\n    })(document, window, &quot;yandex_metrika_callbacks&quot;);\r\n&lt;/script&gt;\r\n&lt;noscript&gt;&lt;div&gt;&lt;img src=&quot;https://mc.yandex.ru/watch/27836184&quot; style=&quot;position:absolute; left:-9999px;&quot; alt=&quot;&quot; /&gt;&lt;/div&gt;&lt;/noscript&gt;\r\n&lt;!-- /Yandex.Metrika counter --&gt;\r\n\r\n', 0),
(23811, 0, 'ukrpost', 'ukrpost_sort_order', '3', 0),
(23810, 0, 'ukrpost', 'ukrpost_status', '1', 0),
(23809, 0, 'ukrpost', 'ukrpost_geo_zone_id', '0', 0),
(29582, 0, 'oc_smsc', 'oc_smsc_status_id_5', '', 0),
(33439, 0, 'deadcow_seo', 'deadcow_seo_source_language_code', 'ua', 0),
(33402, 0, 'config', 'config_seo_url', '1', 0),
(33403, 0, 'config', 'config_seo_url_type', 'seo_pro', 0),
(33404, 0, 'config', 'config_seo_url_include_path', '1', 0),
(33405, 0, 'config', 'config_seo_url_postfix', '.html', 0),
(33406, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(33407, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(31716, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(19413, 0, 'category', 'category_module', 'a:4:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}i:3;a:4:{s:9:"layout_id";s:2:"13";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(33397, 0, 'config', 'config_fraud_score', '', 0),
(33398, 0, 'config', 'config_fraud_status_id', '7', 0),
(33399, 0, 'config', 'config_secure', '0', 0),
(33400, 0, 'config', 'config_shared', '0', 0),
(33401, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(3114, 0, 'onecheckout', 'onecheckout_status', '1', 0),
(3113, 0, 'onecheckout', 'onecheckout_check_deliveryaddress', '1', 0),
(3112, 0, 'onecheckout', 'onecheckout_check_newsletter', '0', 0),
(3111, 0, 'onecheckout', 'onecheckout_refresh_payment', '1', 0),
(3110, 0, 'onecheckout', 'onecheckout_refresh_postcode', '1', 0),
(3109, 0, 'onecheckout', 'onecheckout_refresh_city', '1', 0),
(3108, 0, 'onecheckout', 'onecheckout_check_register', '1', 0),
(3107, 0, 'onecheckout', 'onecheckout_style', '1', 0),
(3100, 0, 'short_checkout', 'address_2_required', '0', 0),
(3099, 0, 'short_checkout', 'address_2_status', '0', 0),
(3098, 0, 'short_checkout', 'address_1_required', '0', 0),
(3097, 0, 'short_checkout', 'address_1_status', '1', 0),
(3096, 0, 'short_checkout', 'company_required', '0', 0),
(3095, 0, 'short_checkout', 'company_status', '0', 0),
(3094, 0, 'short_checkout', 'fax_required', '0', 0),
(3093, 0, 'short_checkout', 'fax_status', '0', 0),
(3092, 0, 'short_checkout', 'telephone_required', '0', 0),
(3091, 0, 'short_checkout', 'telephone_status', '1', 0),
(3090, 0, 'short_checkout', 'email_required', '0', 0),
(3089, 0, 'short_checkout', 'email_status', '1', 0),
(3088, 0, 'short_checkout', 'lastname_required', '0', 0),
(3087, 0, 'short_checkout', 'lastname_status', '1', 0),
(3086, 0, 'short_checkout', 'firstname_required', '0', 0),
(3085, 0, 'short_checkout', 'firstname_status', '1', 0),
(3084, 0, 'short_checkout', 'min_order_sum', '', 0),
(3083, 0, 'short_checkout', 'status', '1', 0),
(3101, 0, 'short_checkout', 'city_status', '1', 0),
(3102, 0, 'short_checkout', 'city_required', '0', 0),
(3103, 0, 'short_checkout', 'postcode_status', '1', 0),
(3104, 0, 'short_checkout', 'postcode_required', '0', 0),
(3105, 0, 'short_checkout', 'country_status', '1', 0),
(3106, 0, 'short_checkout', 'country_required', '0', 0),
(16089, 0, 'free', 'free_total', '1000', 0),
(21660, 0, 'bank_transfer', 'bank_transfer_bank_2', 'У найближчий час наш менеджер зв`яжеться з Вами для уточнення деталей та повідомить номер банківської картки для сплати покупки.', 0),
(3335, 0, 'cod', 'cod_status', '1', 0),
(3336, 0, 'cod', 'cod_sort_order', '3', 0),
(8151, 0, 'pickup', 'pickup_sort_order', '0', 0),
(8150, 0, 'pickup', 'pickup_status', '1', 0),
(8149, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(23962, 0, 'news', 'news_thumb_width', '50', 0),
(23960, 0, 'news', 'news_box', '1', 0),
(23959, 0, 'news', 'news_icon', '0', 0),
(23958, 0, 'news', 'news_header', '1', 0),
(23957, 0, 'news', 'news_customtitle1', 'News', 0),
(23807, 0, 'courier_ua', 'courier_ua_status', '1', 0),
(16088, 0, 'flat', 'flat_sort_order', '', 0),
(30593, 0, 'courier', 'courier_status', '1', 0),
(30591, 0, 'courier', 'courier_delivery_price', '50', 0),
(23797, 0, 'novaposhta', 'novaposhta_delivery_price', '333', 0),
(23796, 0, 'novaposhta', 'novaposhta_min_total_for_free_delivery', '1000', 0),
(18454, 0, 'openbaymanager', 'openbay_version', '2334', 0),
(21659, 0, 'bank_transfer', 'bank_transfer_bank_3', 'В ближайшее время наш менеджер свяжется с Вами для уточнения подробностей и сообщит номер банковской карты для оплаты покупки. ', 0),
(30817, 0, 'simple', 'simple_registration_subscribe_init', '1', 0),
(30818, 0, 'simple', 'simple_registration_view_customer_type', '0', 0),
(30819, 0, 'simple', 'simple_set_registration', 'a:1:{s:5:"group";a:2:{i:1;s:153:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,header_address,main_country_id,main_zone_id,main_city,main_address_1";i:2;s:153:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,header_address,main_country_id,main_zone_id,main_city,main_address_1";}}', 1),
(30820, 0, 'simple', 'simple_account_view_customer_type', '0', 0),
(30821, 0, 'simple', 'simple_set_account_info', 'a:1:{s:5:"group";a:2:{i:1;s:63:"main_email,main_firstname,main_lastname,main_telephone,main_fax";i:2;s:63:"main_email,main_firstname,main_lastname,main_telephone,main_fax";}}', 1),
(30822, 0, 'simple', 'simple_set_account_address', 'a:1:{s:5:"group";a:2:{i:1;s:82:"main_firstname,main_lastname,main_country_id,main_zone_id,main_city,main_address_1";i:2;s:82:"main_firstname,main_lastname,main_country_id,main_zone_id,main_city,main_address_1";}}', 1),
(30592, 0, 'courier', 'courier_geo_zone_id', '0', 0),
(33412, 0, 'config', 'config_error_display', '0', 0),
(33413, 0, 'config', 'config_error_log', '1', 0),
(30832, 0, 'simple', 'simple_customer_two_column', '', 0),
(30831, 0, 'simple', 'simple_googleapi_key', '', 0),
(30830, 0, 'simple', 'simple_googleapi', '0', 0),
(30829, 0, 'simple', 'simple_shipping_titles', 'a:4:{s:7:"courier";a:4:{s:4:"show";s:1:"1";s:15:"use_description";s:1:"1";s:5:"title";a:3:{s:2:"ru";s:37:"Курьерская доставка";s:2:"ua";s:37:"Курьерская доставка";s:2:"en";s:37:"Курьерская доставка";}s:11:"description";a:3:{s:2:"ru";s:56:"Бесплатно при заказе от 1500 грн.";s:2:"ua";s:70:"Безкоштовно при замовленні від 1500 грн.";s:2:"en";s:68:"Безкоштовно при замовленні від 1500грн";}}s:10:"courier_ua";a:4:{s:4:"show";s:1:"1";s:15:"use_description";s:1:"1";s:5:"title";a:3:{s:2:"ru";s:39:"Доставка НовойПочтой";s:2:"ua";s:39:"Доставка НовойПочтой";s:2:"en";s:57:"Курьерская доставка по Украине";}s:11:"description";a:3:{s:2:"ru";s:214:"Уточнить стоимость доставки можно на сайте\r\n		&lt;a href=&quot;http://novaposhta.ua/frontend/calculator?lang=ru&quot; target=&quot;_blank&quot;&gt;Нова Пошта&lt;/a&gt; ";s:2:"ua";s:212:"Уточнити вартість доставки можно на сайті\r\n		&lt;a href=&quot;http://novaposhta.ua/frontend/calculator?lang=ru&quot; target=&quot;_blank&quot;&gt;Нова Пошта&lt;/a&gt; ";s:2:"en";s:468:"Точная цена зависит от служб доставки, см. калькуляторы\r\n	&lt;a href=&quot;http://www.intime.ua/calc/&quot; target=&quot;_blank&quot;&gt;Ин-Тайм&lt;/a&gt;,\r\n	&lt;a href=&quot;http://novaposhta.ua/frontend/calculator?lang=ru&quot; target=&quot;_blank&quot;&gt;Нова Пошта&lt;/a&gt; или\r\n	&lt;a href=&quot;http://autolux.ua/Kalkulyator_stoimosti&quot; target=&quot;_blank&quot;&gt;Автолюкс&lt;/a&gt;";}}s:6:"pickup";a:3:{s:4:"show";s:1:"0";s:5:"title";a:3:{s:2:"ru";s:18:"Самовывоз";s:2:"ua";s:18:"Самовывоз";s:2:"en";s:18:"Самовывоз";}s:11:"description";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:7:"ukrpost";a:4:{s:4:"show";s:1:"1";s:15:"use_description";s:1:"1";s:5:"title";a:3:{s:2:"ru";s:35:"Доставка УкрПочтой";s:2:"ua";s:35:"Доставка УкрПоштой";s:2:"en";s:35:"Доставка УкрПочтой";}s:11:"description";a:3:{s:2:"ru";s:207:"Уточнить стоимость доставки можно на сайте\r\n		&lt;a href=&quot;http://ukrposhta.ua/dostaviti/posilku/tarifi&quot; target=&quot;_blank&quot;&gt;УкрПочта&lt;/a&gt; ";s:2:"ua";s:205:"Уточнити вартість доставки можно на сайті\r\n		&lt;a href=&quot;http://ukrposhta.ua/dostaviti/posilku/tarifi&quot; target=&quot;_blank&quot;&gt;УкрПошта&lt;/a&gt; ";s:2:"en";s:35:"Доставка УкрПочтой";}}}', 1),
(30816, 0, 'simple', 'simple_registration_subscribe', '2', 0),
(30815, 0, 'simple', 'simple_registration_captcha', '0', 0),
(30814, 0, 'simple', 'simple_registration_agreement_checkbox_init', '0', 0),
(30813, 0, 'simple', 'simple_registration_agreement_checkbox', '1', 0),
(30812, 0, 'simple', 'simple_registration_agreement_id', '0', 0),
(30811, 0, 'simple', 'simple_registration_password_length_max', '20', 0),
(30810, 0, 'simple', 'simple_registration_password_length_min', '4', 0),
(30809, 0, 'simple', 'simple_registration_password_confirm', '1', 0),
(30808, 0, 'simple', 'simple_registration_generate_password', '0', 0),
(30807, 0, 'simple', 'simple_registration_view_email_confirm', '0', 0),
(30806, 0, 'simple', 'placeholder_en', '', 0),
(30805, 0, 'simple', 'placeholder_ua', '', 0),
(30804, 0, 'simple', 'placeholder_ru', '', 0),
(30803, 0, 'simple', 'mask', '', 0),
(30802, 0, 'simple', 'save_to', '', 0),
(30801, 0, 'simple', 'validation_error_en', '', 0),
(30800, 0, 'simple', 'validation_error_ua', '', 0),
(30799, 0, 'simple', 'validation_error_ru', '', 0),
(30798, 0, 'simple', 'validation_regexp', '', 0),
(30797, 0, 'simple', 'validation_max', '', 0),
(30796, 0, 'simple', 'validation_min', '', 0),
(30795, 0, 'simple', 'validation_type', '0', 0),
(30794, 0, 'simple', 'values_en', '', 0),
(30793, 0, 'simple', 'values_ua', '', 0),
(30792, 0, 'simple', 'values_ru', '', 0),
(30791, 0, 'simple', 'date_only_for', '', 0),
(30790, 0, 'simple', 'date_end', '', 0),
(30789, 0, 'simple', 'date_max', '', 0),
(30788, 0, 'simple', 'date_start', '', 0),
(30787, 0, 'simple', 'date_min', '', 0),
(30786, 0, 'simple', 'place', 'customer', 0),
(30785, 0, 'simple', 'type', 'text', 0),
(30784, 0, 'simple', 'object_field', '', 0),
(30783, 0, 'simple', 'object_type', 'order', 0),
(30781, 0, 'simple', 'label_ua', '', 0),
(30782, 0, 'simple', 'label_en', '', 0),
(30779, 0, 'simple', 'id', '', 0),
(30780, 0, 'simple', 'label_ru', '', 0),
(30761, 0, 'simple', 'simple_address_hide_if_logged', '0', 0),
(30762, 0, 'simple', 'simple_show_shipping_address', '1', 0),
(30763, 0, 'simple', 'simple_show_shipping_address_same_init', '1', 0),
(30764, 0, 'simple', 'simple_show_shipping_address_same_show', '1', 0),
(30765, 0, 'simple', 'simple_shipping_view_address_select', '1', 0),
(30766, 0, 'simple', 'simple_shipping_address_use_geo_selector', '0', 0),
(30767, 0, 'simple', 'simple_shipping_address_geo_selector_type', '2', 0),
(30768, 0, 'simple', 'simple_set_checkout_address', 'a:3:{s:5:"group";a:2:{i:1;s:72:"main_firstname,main_lastname,main_country_id,main_zone_id,main_address_1";i:2;s:72:"main_firstname,main_lastname,main_country_id,main_zone_id,main_address_1";}s:8:"shipping";a:2:{i:1;a:6:{s:7:"courier";s:0:"";s:10:"courier_ua";s:0:"";s:6:"pickup";s:0:"";s:7:"ukrpost";s:0:"";s:10:"novaposhta";s:0:"";s:4:"flat";s:0:"";}i:2;a:6:{s:7:"courier";s:0:"";s:10:"courier_ua";s:0:"";s:6:"pickup";s:0:"";s:7:"ukrpost";s:0:"";s:10:"novaposhta";s:0:"";s:4:"flat";s:0:"";}}s:7:"payment";a:2:{i:1;a:3:{s:13:"bank_transfer";s:0:"";s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}i:2;a:3:{s:13:"bank_transfer";s:0:"";s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}}}', 1),
(30769, 0, 'simple', 'shipping_code_for_customer_1', '', 0),
(30770, 0, 'simple', 'shipping_code_for_customer_2', '', 0),
(30771, 0, 'simple', 'shipping_code_for_shipping_1', '', 0),
(30772, 0, 'simple', 'shipping_code_for_shipping_2', '', 0),
(30773, 0, 'simple', 'simple_links', 'a:3:{s:13:"bank_transfer";s:26:"ukrpost,courier_ua,courier";s:3:"cod";s:25:"pickup,courier_ua,courier";s:13:"free_checkout";s:0:"";}', 1),
(30774, 0, 'simple', 'simple_links_2', 'a:7:{s:7:"courier";s:0:"";s:10:"courier_ua";s:0:"";s:6:"pickup";s:0:"";s:7:"ukrpost";s:0:"";s:10:"novaposhta";s:0:"";s:4:"flat";s:0:"";s:19:"simple_links_2_stub";s:0:"";}', 1),
(30775, 0, 'simple', 'simple_group_payment', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 1),
(30776, 0, 'simple', 'simple_group_shipping', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 1),
(30777, 0, 'simple', 'simple_fields_main', 'a:15:{s:10:"main_email";a:16:{s:2:"id";s:10:"main_email";s:5:"label";a:3:{s:2:"ru";s:6:"E-mail";s:2:"ua";s:6:"E-mail";s:2:"en";s:6:"E-mail";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"3";s:17:"validation_regexp";s:56:"/^[a-z0-9_\\.\\-]{1,20}@[a-z0-9\\.\\-]{1,20}\\.[a-z]{2,4}$/si";s:16:"validation_error";a:3:{s:2:"ru";s:62:"Ошибка в адресе электронной почты";s:2:"ua";s:64:"Помилка в адресі електронної пошти";s:2:"en";s:43:"E-Mail Address does not appear to be valid!";}s:7:"save_to";s:5:"email";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:14:"main_firstname";a:18:{s:2:"id";s:14:"main_firstname";s:5:"label";a:3:{s:2:"ru";s:6:"Имя";s:2:"ua";s:6:"Iм''я";s:2:"en";s:10:"First Name";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:2:"30";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:60:"Имя должно быть от 1 до 30 символов";s:2:"ua";s:65:"Ім''я повинно бути від 1 до 30 символів";s:2:"en";s:47:"First Name must be between 1 and 32 characters!";}s:7:"save_to";s:9:"firstname";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:13:"main_lastname";a:18:{s:2:"id";s:13:"main_lastname";s:5:"label";a:3:{s:2:"ru";s:14:"Фамилия";s:2:"ua";s:16:"Прізвище";s:2:"en";s:9:"Last Name";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:2:"30";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:68:"Фамилия должно быть от 1 до 30 символов";s:2:"ua";s:74:"Прізвище повинне бути від 1 до 30 символів";s:2:"en";s:46:"Last Name must be between 1 and 32 characters!";}s:7:"save_to";s:8:"lastname";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:14:"main_telephone";a:18:{s:2:"id";s:14:"main_telephone";s:5:"label";a:3:{s:2:"ru";s:14:"Телефон";s:2:"ua";s:14:"Телефон";s:2:"en";s:9:"Telephone";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"3";s:14:"validation_max";s:2:"32";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:69:"Телефон должен быть от 3 до 32 символов!";s:2:"ua";s:73:"Телефон повинен бути від 3 до 32 символів!";s:2:"en";s:46:"Telephone must be between 3 and 32 characters!";}s:7:"save_to";s:9:"telephone";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:8:"main_fax";a:18:{s:2:"id";s:8:"main_fax";s:5:"label";a:3:{s:2:"ru";s:8:"Факс";s:2:"ua";s:8:"Факс";s:2:"en";s:3:"Fax";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:7:"save_to";s:3:"fax";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:12:"main_company";a:18:{s:2:"id";s:12:"main_company";s:5:"label";a:3:{s:2:"ru";s:16:"Компания";s:2:"ua";s:16:"Компанія";s:2:"en";s:7:"Company";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:7:"save_to";s:7:"company";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:15:"main_company_id";a:18:{s:2:"id";s:15:"main_company_id";s:5:"label";a:3:{s:2:"ru";s:10:"Company ID";s:2:"ua";s:10:"Company ID";s:2:"en";s:10:"Company ID";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:7:"save_to";s:10:"company_id";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:11:"main_tax_id";a:18:{s:2:"id";s:11:"main_tax_id";s:5:"label";a:3:{s:2:"ru";s:6:"Tax ID";s:2:"ua";s:6:"Tax ID";s:2:"en";s:6:"Tax ID";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:7:"save_to";s:6:"tax_id";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:14:"main_address_1";a:18:{s:2:"id";s:14:"main_address_1";s:5:"label";a:3:{s:2:"ru";s:10:"Адрес";s:2:"ua";s:12:"Адреса";s:2:"en";s:14:"Address Line 1";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"3";s:14:"validation_max";s:3:"128";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:65:"Адрес должен быть от 3 до 128 символов";s:2:"ua";s:71:"Адреса повинна бути від 3 до 128 символів";s:2:"en";s:47:"Address 1 must be between 3 and 128 characters!";}s:7:"save_to";s:9:"address_1";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:36:"улица, дом, квартира";s:2:"ua";s:38:"вулиця, дім, квартира";s:2:"en";s:38:"вулиця, дім, квартира";}}s:14:"main_address_2";a:18:{s:2:"id";s:14:"main_address_2";s:5:"label";a:3:{s:2:"ru";s:35:"Адрес (продолжение)";s:2:"ua";s:37:"Адреса (продовження)";s:2:"en";s:14:"Address Line 2";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:7:"save_to";s:9:"address_2";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:13:"main_postcode";a:18:{s:2:"id";s:13:"main_postcode";s:5:"label";a:3:{s:2:"ru";s:12:"Индекс";s:2:"ua";s:12:"Індекс";s:2:"en";s:8:"Postcode";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"2";s:14:"validation_max";s:2:"10";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:83:"Почтовый индекс должен быть от 2 до 10 символов";s:2:"ua";s:87:"Поштовий індекс повинен бути від 2 до 10 символів";s:2:"en";s:45:"Postcode must be between 2 and 10 characters!";}s:7:"save_to";s:8:"postcode";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:15:"main_country_id";a:18:{s:2:"id";s:15:"main_country_id";s:5:"label";a:3:{s:2:"ru";s:12:"Страна";s:2:"ua";s:12:"Країна";s:2:"en";s:7:"Country";}s:4:"type";s:6:"select";s:6:"values";s:9:"countries";s:4:"init";s:3:"220";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:15:"validation_type";s:1:"4";s:16:"validation_error";a:3:{s:2:"ru";s:50:"Пожалуйста выберите страну";s:2:"ua";s:49:"Будь ласка виберіть країну";s:2:"en";s:23:"Please select a country";}s:7:"save_to";s:10:"country_id";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:12:"main_zone_id";a:18:{s:2:"id";s:12:"main_zone_id";s:5:"label";a:3:{s:2:"ru";s:14:"Область";s:2:"ua";s:14:"Область";s:2:"en";s:4:"Zone";}s:4:"type";s:6:"select";s:6:"values";s:5:"zones";s:4:"init";s:1:"0";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:15:"validation_type";s:1:"4";s:16:"validation_error";a:3:{s:2:"ru";s:48:"Пожалуйста выберите город";s:2:"ua";s:47:"Будь ласка виберіть місто";s:2:"en";s:22:"Please select a region";}s:7:"save_to";s:7:"zone_id";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:9:"main_city";a:18:{s:2:"id";s:9:"main_city";s:5:"label";a:3:{s:2:"ru";s:10:"Город";s:2:"ua";s:10:"Місто";s:2:"en";s:5:"City1";}s:4:"type";s:4:"text";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"2";s:14:"validation_max";s:3:"128";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:65:"Город должен быть от 2 до 128 символов";s:2:"ua";s:61:"Місто має бути від 2 до 128 символів";s:2:"en";s:42:"City must be between 2 and 128 characters!";}s:7:"save_to";s:4:"city";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}s:12:"main_comment";a:18:{s:2:"id";s:12:"main_comment";s:5:"label";a:3:{s:2:"ru";s:22:"Комментарий";s:2:"ua";s:18:"Коментарі";s:2:"en";s:7:"Comment";}s:4:"type";s:8:"textarea";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:7:"save_to";s:7:"comment";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}}', 1),
(33437, 0, 'deadcow_seo', 'deadcow_seo_yahoo_id', '', 0),
(23955, 0, 'news', 'news_customtitle3', 'Интересности', 0),
(13836, 0, 'google_maps', 'google_maps_module', 'a:1:{i:0;a:11:{s:3:"mts";s:4:"map1";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"zoom";s:2:"17";s:7:"maptype";s:7:"ROADMAP";s:7:"showbox";s:1:"1";s:8:"boxtitle";a:3:{i:3;s:0:"";i:2;s:0:"";i:1;s:0:"";}s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:0:"";}}', 1),
(13837, 0, 'google_maps', 'google_maps_module_map', 'a:1:{i:1;a:4:{s:8:"mapalias";s:4:"map1";s:7:"latlong";s:19:"50.498716,30.600772";s:7:"maptext";a:3:{i:3;s:33:"&lt;p&gt;ЗигЗаг&lt;/p&gt;\r\n";i:2;s:33:"&lt;p&gt;ЗигЗаг&lt;/p&gt;\r\n";i:1;s:33:"&lt;p&gt;ЗигЗаг&lt;/p&gt;\r\n";}s:11:"onelinetext";a:3:{i:3;s:12:"ЗигЗаг";i:2;s:12:"ЗигЗаг";i:1;s:0:"";}}}', 1),
(33438, 0, 'deadcow_seo', 'deadcow_seo_yahoo_checkbox', '0', 0),
(33436, 0, 'deadcow_seo', 'deadcow_seo_tags_template', '[product_name], [model_name], [manufacturer_name], [categories_names]', 0),
(33435, 0, 'deadcow_seo', 'deadcow_seo_meta_template', '[product_name], [model_name], [manufacturer_name], [categories_names]', 0),
(33434, 0, 'deadcow_seo', 'deadcow_seo_manufacturers_suffix', '.html', 0),
(33433, 0, 'deadcow_seo', 'deadcow_seo_manufacturers_template', '[manufacturer_name]', 0),
(33432, 0, 'deadcow_seo', 'deadcow_seo_products_suffix', '', 0),
(33431, 0, 'deadcow_seo', 'deadcow_seo_products_template', '[product_name]', 0),
(33430, 0, 'deadcow_seo', 'deadcow_seo_categories_suffix', '', 0),
(33429, 0, 'deadcow_seo', 'deadcow_seo_categories_template', '[category_name]', 0),
(16086, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(16085, 0, 'flat', 'flat_tax_class_id', '0', 0),
(16084, 0, 'flat', 'flat_cost', '35', 0),
(23806, 0, 'courier_ua', 'courier_ua_geo_zone_id', '0', 0),
(30778, 0, 'simple', 'simple_fields_custom', 'a:4:{s:12:"custom_point";a:21:{s:2:"id";s:12:"custom_point";s:5:"label";a:3:{s:2:"ru";s:40:"Отделения Новой Почты";s:2:"ua";s:39:"Відділення НоваПошта";s:2:"en";s:39:"Відділення НоваПошта";}s:11:"object_type";s:5:"order";s:12:"object_field";s:0:"";s:4:"type";s:4:"text";s:5:"place";s:8:"customer";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:1:"3";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:66:"Введите номер отделения Новой Почти";s:2:"ua";s:68:"Введіть номер відділення Нової Пошти";s:2:"en";s:6:"ййй";}s:7:"save_to";s:7:"comment";s:10:"save_label";s:1:"1";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:51:"Номер отделения Новой Почти";s:2:"ua";s:53:"Номер відділення Нової Пошти";s:2:"en";s:53:"Номер відділення Нової Пошти";}}s:15:"custom_delivery";a:22:{s:2:"id";s:15:"custom_delivery";s:5:"label";a:3:{s:2:"ru";s:29:"Служба доставки";s:2:"ua";s:29:"Служба доставки";s:2:"en";s:29:"Служба доставки";}s:11:"object_type";s:5:"order";s:12:"object_field";s:0:"";s:4:"type";s:6:"select";s:5:"place";s:8:"customer";s:6:"values";a:3:{s:2:"ru";s:72:"value1=Новая Почта;value2=ИнТайм;value3=Автолюкс";s:2:"ua";s:70:"value1=Нова Пошта;value2=ІнТайм;value3=Автолюкс";s:2:"en";s:72:"value1=Новая Почта;value2=ИнТайм;value3=Автолюкс";}s:4:"init";s:6:"value1";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"1";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:46:"Выберите службу доставки";s:2:"ua";s:44:"Оберіть службу доставки";s:2:"en";s:44:"Оберіть службу доставки";}s:7:"save_to";s:7:"comment";s:10:"save_label";s:1:"1";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:46:"Выберите службу доставки";s:2:"ua";s:44:"Оберіть службу доставки";s:2:"en";s:44:"Оберіть службу доставки";}}s:13:"custom_number";a:21:{s:2:"id";s:13:"custom_number";s:5:"label";a:3:{s:2:"ru";s:51:"Номер отделения Новой Почты";s:2:"ua";s:53:"Номер відділення Нової Пошти";s:2:"en";s:53:"Номер відділення Нової Пошти";}s:11:"object_type";s:5:"order";s:12:"object_field";s:0:"";s:4:"type";s:4:"text";s:5:"place";s:8:"customer";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"1";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:74:"Введите номер отделения службы доставки";s:2:"ua";s:76:"Введіть номер відділення служби доставки";s:2:"en";s:76:"Введіть номер відділення служби доставки";}s:7:"save_to";s:7:"comment";s:10:"save_label";s:1:"1";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:59:"Номер отделения службы доставки";s:2:"ua";s:61:"Номер відділення служби доставки";s:2:"en";s:59:"номер отделения службы доставки";}}s:17:"custom_middlename";a:21:{s:2:"id";s:17:"custom_middlename";s:5:"label";a:3:{s:2:"ru";s:16:"Отчество";s:2:"ua";s:21:"По батькові";s:2:"en";s:11:"middle name";}s:11:"object_type";s:8:"customer";s:12:"object_field";s:0:"";s:4:"type";s:4:"text";s:5:"place";s:8:"customer";s:6:"values";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"1";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:3:{s:2:"ru";s:11:"middle name";s:2:"ua";s:11:"middle name";s:2:"en";s:11:"middle name";}s:7:"save_to";s:7:"comment";s:10:"save_label";s:1:"1";s:4:"mask";s:0:"";s:11:"placeholder";a:3:{s:2:"ru";s:0:"";s:2:"ua";s:0:"";s:2:"en";s:0:"";}}}', 1),
(23965, 0, 'news', 'news_popup_height', '50', 0),
(23966, 0, 'news', 'news_newspage_addthis', '0', 0),
(23967, 0, 'news', 'news_headline_chars', '100', 0),
(23956, 0, 'news', 'news_customtitle2', 'Цікавості', 0),
(19414, 0, 'latest', 'latest_module', 'a:1:{i:0;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:3:"232";s:12:"image_height";s:3:"350";s:9:"layout_id";s:2:"13";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(33396, 0, 'config', 'config_fraud_key', '', 0),
(33395, 0, 'config', 'config_fraud_detection', '0', 0),
(33392, 0, 'config', 'config_alert_mail', '1', 0),
(33393, 0, 'config', 'config_account_mail', '1', 0),
(33394, 0, 'config', 'config_alert_emails', 'gavrilenko.1@gmail.com,3759326@gmail.com', 0),
(33391, 0, 'config', 'config_smtp_timeout', '15', 0),
(33390, 0, 'config', 'config_smtp_port', '25', 0),
(33389, 0, 'config', 'config_smtp_password', 'Mx25L4005', 0),
(33387, 0, 'config', 'config_smtp_host', 'mail.kamizelka.in.ua', 0),
(33388, 0, 'config', 'config_smtp_username', 'info@kamizelka.in.ua', 0),
(33386, 0, 'config', 'config_mail_parameter', '', 0),
(33385, 0, 'config', 'config_mail_protocol', 'mail', 0),
(33384, 0, 'config', 'config_ftp_status', '0', 0),
(33383, 0, 'config', 'config_ftp_root', '', 0),
(33382, 0, 'config', 'config_ftp_password', '', 0),
(33381, 0, 'config', 'config_ftp_username', '', 0),
(33380, 0, 'config', 'config_ftp_port', '21', 0),
(33379, 0, 'config', 'config_ftp_host', 'mag-zigzag.tk', 0),
(33378, 0, 'config', 'config_image_cart_height', '47', 0),
(33377, 0, 'config', 'config_image_cart_width', '47', 0),
(33376, 0, 'config', 'config_image_wishlist_height', '47', 0),
(33375, 0, 'config', 'config_image_wishlist_width', '47', 0),
(33374, 0, 'config', 'config_image_compare_height', '392', 0),
(33373, 0, 'config', 'config_image_compare_width', '260', 0),
(33372, 0, 'config', 'config_image_related_height', '270', 0),
(33371, 0, 'config', 'config_image_related_width', '200', 0),
(33370, 0, 'config', 'config_image_additional_height', '450', 0),
(33369, 0, 'config', 'config_image_additional_width', '299', 0),
(33368, 0, 'config', 'config_image_product_height', '603', 0),
(33367, 0, 'config', 'config_image_product_width', '400', 0),
(33366, 0, 'config', 'config_image_popup_height', '1000', 0),
(33365, 0, 'config', 'config_image_popup_width', '664', 0),
(33364, 0, 'config', 'config_image_thumb_height', '450', 0),
(33363, 0, 'config', 'config_image_thumb_width', '299', 0),
(30760, 0, 'simple', 'simple_set_checkout_customer', 'a:3:{s:5:"group";a:2:{i:1;s:178:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_zone_id,main_city,main_address_1,main_comment";i:2;s:178:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_zone_id,main_city,main_address_1,main_comment";}s:8:"shipping";a:2:{i:1;a:6:{s:7:"courier";s:165:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_city,main_address_1,main_comment";s:10:"courier_ua";s:164:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_city,custom_number,main_comment";s:6:"pickup";s:89:"header_main,undefined,main_email,main_firstname,main_lastname,main_telephone,main_comment";s:7:"ukrpost";s:179:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_city,main_postcode,main_address_1,main_comment";s:10:"novaposhta";s:178:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_city,main_address_1,main_comment,custom_point";s:4:"flat";s:178:"header_main,main_email,main_firstname,main_lastname,custom_middlename,main_telephone,split_split,header_address,main_country_id,main_zone_id,undefined,main_address_1,main_comment";}i:2;a:6:{s:7:"courier";s:147:"header_main,main_email,main_firstname,main_lastname,main_telephone,split_split,header_address,main_country_id,main_city,main_address_1,main_comment";s:10:"courier_ua";s:146:"header_main,main_email,main_firstname,main_lastname,main_telephone,split_split,header_address,main_country_id,main_city,custom_number,main_comment";s:6:"pickup";s:79:"header_main,main_email,main_firstname,main_lastname,main_telephone,main_comment";s:7:"ukrpost";s:159:"header_main,main_email,main_firstname,main_lastname,main_telephone,undefined,header_address,main_country_id,main_city,main_postcode,main_address_1,main_comment";s:10:"novaposhta";s:0:"";s:4:"flat";s:0:"";}}s:7:"payment";a:2:{i:1;a:3:{s:13:"bank_transfer";s:0:"";s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}i:2;a:3:{s:13:"bank_transfer";s:0:"";s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}}}', 1),
(30759, 0, 'simple', 'simple_customer_view_customer_type', '0', 0),
(30743, 0, 'simple', 'simple_customer_hide_if_logged', '0', 0),
(30744, 0, 'simple', 'simple_show_will_be_registered', '1', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(30745, 0, 'simple', 'simple_customer_action_register', '2', 0),
(30746, 0, 'simple', 'simple_customer_view_email', '2', 0),
(30747, 0, 'simple', 'simple_customer_view_email_confirm', '0', 0),
(30748, 0, 'simple', 'simple_customer_view_customer_register_init', '1', 0),
(30749, 0, 'simple', 'simple_customer_generate_password', '0', 0),
(30750, 0, 'simple', 'simple_customer_view_password_confirm', '0', 0),
(30751, 0, 'simple', 'simple_customer_view_password_length_min', '4', 0),
(30752, 0, 'simple', 'simple_customer_view_password_length_max', '20', 0),
(30753, 0, 'simple', 'simple_customer_action_subscribe', '2', 0),
(30754, 0, 'simple', 'simple_customer_view_customer_subscribe_init', '1', 0),
(30755, 0, 'simple', 'simple_customer_view_login', '1', 0),
(33362, 0, 'config', 'config_image_category_height', '80', 0),
(33361, 0, 'config', 'config_image_category_width', '80', 0),
(33360, 0, 'config', 'config_icon', 'data/favicon_2017.png', 0),
(33359, 0, 'config', 'config_logo', 'data/logo_2017.png', 0),
(33358, 0, 'config', 'config_return_status_id', '2', 0),
(33357, 0, 'config', 'config_return_id', '5', 0),
(33356, 0, 'config', 'config_commission', '5', 0),
(33355, 0, 'config', 'config_affiliate_id', '4', 0),
(33354, 0, 'config', 'config_stock_status_id', '7', 0),
(33353, 0, 'config', 'config_stock_checkout', '1', 0),
(33352, 0, 'config', 'config_stock_warning', '0', 0),
(33351, 0, 'config', 'config_stock_display', '0', 0),
(33350, 0, 'config', 'config_complete_status_id', '5', 0),
(33349, 0, 'config', 'config_order_status_id', '1', 0),
(33348, 0, 'config', 'config_invoice_prefix', 'INV-2014-00', 0),
(33347, 0, 'config', 'config_order_edit', '100', 0),
(33346, 0, 'config', 'config_checkout_id', '5', 0),
(33345, 0, 'config', 'config_guest_checkout', '1', 0),
(33344, 0, 'config', 'config_cart_weight', '0', 0),
(33343, 0, 'config', 'config_account_id', '3', 0),
(33342, 0, 'config', 'config_customer_price', '0', 0),
(33340, 0, 'config', 'config_customer_group_id', '1', 0),
(33341, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(33339, 0, 'config', 'config_customer_online', '1', 0),
(33338, 0, 'config', 'config_tax_customer', 'shipping', 0),
(33337, 0, 'config', 'config_tax_default', 'shipping', 0),
(33336, 0, 'config', 'config_vat', '0', 0),
(33335, 0, 'config', 'config_tax', '0', 0),
(33334, 0, 'config', 'config_voucher_max', '1000', 0),
(33333, 0, 'config', 'config_voucher_min', '1', 0),
(33332, 0, 'config', 'config_download', '1', 0),
(33331, 0, 'config', 'config_review_status', '1', 0),
(33330, 0, 'config', 'config_product_count', '1', 0),
(33329, 0, 'config', 'config_admin_limit', '20', 0),
(30757, 0, 'simple', 'simple_customer_use_geo_selector', '0', 0),
(23808, 0, 'courier_ua', 'courier_ua_sort_order', '2', 0),
(30758, 0, 'simple', 'simple_customer_geo_selector_type', '2', 0),
(23969, 0, 'news', 'buttonForm', 'save', 0),
(30739, 0, 'simple', 'simple_payment_methods_hide', '0', 0),
(30740, 0, 'simple', 'simple_payment_view_address_empty', '1', 0),
(30741, 0, 'simple', 'simple_payment_view_autoselect_first', '1', 0),
(33328, 0, 'config', 'config_catalog_limit', '16', 0),
(26865, 0, 'langmark_widgets', 'general_list-what', 'html', 0),
(26866, 0, 'langmark_widgets', 'general_list', 'a:1:{i:1;a:5:{s:4:"type";s:4:"html";s:17:"title_list_latest";a:3:{i:3;s:8:"Language";i:2;s:8:"Language";i:1;s:8:"Language";}s:8:"template";s:15:"html_jquery.tpl";s:6:"anchor";s:30:"$(''#lang'').html(langmarkdata);";s:4:"html";a:3:{i:3;s:953:"&lt;?php if (count($languages) &gt; 1) { ?&gt;\r\n&lt;?php foreach ($languages as $language) {\r\nif ($language[''code''] != $language_code) {\r\n?&gt;\r\n&lt;span style=&quot;color: #C42726;&quot; &gt;\r\n&lt;a href=&quot;&lt;?php echo $language[''url'']; ?&gt;&quot;&gt;&lt;?php } ?&gt;&lt;?php echo $language[''code'']; ?&gt;&lt;?php if ($language[''code''] != $language_code) { ?&gt;&lt;/a&gt;&lt;/span&gt;\r\n&lt;?php } } ?&gt;\r\n&lt;?php } ?&gt;\r\n&lt;script&gt;\r\n$(document).ready(function() {\r\n	var lprefix = ''&lt;?php  echo $language_prefix; ?&gt;'';\r\n\r\n	$(''form'').each(function(index) {\r\n		var laction = $(this).attr(''action'');\r\n		if (typeof laction!=''undefined'') {\r\n		 if (typeof laction.value!=''undefined'') {\r\n			var llast = laction.value.length - 1;\r\n			if (llast != ''/'') {\r\n				laction = laction + ''/'';\r\n			}\r\n			var li = laction.indexOf( lprefix);\r\n			if (li &lt; 0) {\r\n				$(this).attr(''action'', laction + lprefix);\r\n			}\r\n		 }\r\n		}\r\n	});\r\n});\r\n&lt;/script&gt;";i:2;s:953:"&lt;?php if (count($languages) &gt; 1) { ?&gt;\r\n&lt;?php foreach ($languages as $language) {\r\nif ($language[''code''] != $language_code) {\r\n?&gt;\r\n&lt;span style=&quot;color: #C42726;&quot; &gt;\r\n&lt;a href=&quot;&lt;?php echo $language[''url'']; ?&gt;&quot;&gt;&lt;?php } ?&gt;&lt;?php echo $language[''code'']; ?&gt;&lt;?php if ($language[''code''] != $language_code) { ?&gt;&lt;/a&gt;&lt;/span&gt;\r\n&lt;?php } } ?&gt;\r\n&lt;?php } ?&gt;\r\n&lt;script&gt;\r\n$(document).ready(function() {\r\n	var lprefix = ''&lt;?php  echo $language_prefix; ?&gt;'';\r\n\r\n	$(''form'').each(function(index) {\r\n		var laction = $(this).attr(''action'');\r\n		if (typeof laction!=''undefined'') {\r\n		 if (typeof laction.value!=''undefined'') {\r\n			var llast = laction.value.length - 1;\r\n			if (llast != ''/'') {\r\n				laction = laction + ''/'';\r\n			}\r\n			var li = laction.indexOf( lprefix);\r\n			if (li &lt; 0) {\r\n				$(this).attr(''action'', laction + lprefix);\r\n			}\r\n		 }\r\n		}\r\n	});\r\n});\r\n&lt;/script&gt;";i:1;s:1093:"&lt;?php if (count($languages) &gt; 1) { ?&gt;\r\n&lt;?php echo $text_language; ?&gt;&amp;nbsp;\r\n&lt;?php foreach ($languages as $language) {\r\nif ($language[''code''] != $language_code) {\r\n?&gt;\r\n&lt;a href=&quot;&lt;?php echo $language[''url'']; ?&gt;&quot;&gt;&lt;?php } ?&gt;&lt;img src=&quot;image/flags/&lt;?php echo $language[''image'']; ?&gt;&quot; alt=&quot;&lt;?php echo $language[''name'']; ?&gt;&quot; title=&quot;&lt;?php echo $language[''name'']; ?&gt;&quot; /&gt;&lt;?php if ($language[''code''] != $language_code) { ?&gt;&lt;/a&gt;\r\n&lt;?php } } ?&gt;\r\n&lt;?php } ?&gt;\r\n&lt;script&gt;\r\n$(document).ready(function() {\r\n	var lprefix = ''&lt;?php  echo $language_prefix; ?&gt;'';\r\n\r\n	$(''form'').each(function(index) {\r\n		var laction = $(this).attr(''action'');\r\n		if (typeof laction!=''undefined'') {\r\n		 if (typeof laction.value!=''undefined'') {\r\n			var llast = laction.value.length - 1;\r\n			if (llast != ''/'') {\r\n				laction = laction + ''/'';\r\n			}\r\n			var li = laction.indexOf( lprefix);\r\n			if (li &lt; 0) {\r\n				$(this).attr(''action'', laction + lprefix);\r\n			}\r\n		 }\r\n		}\r\n	});\r\n});\r\n&lt;/script&gt;";}}}', 1),
(26856, 0, 'langmark_schemes', 'langmark_module', 'a:1:{i:0;a:5:{s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:4:"what";s:1:"1";s:10:"sort_order";s:1:"0";s:9:"layout_id";a:14:{i:0;s:1:"6";i:1;s:2:"10";i:2;s:1:"3";i:3;s:1:"7";i:4;s:1:"8";i:5;s:1:"4";i:6;s:1:"1";i:7;s:2:"11";i:8;s:2:"13";i:9;s:1:"5";i:10;s:2:"12";i:11;s:1:"2";i:12;s:2:"14";i:13;s:1:"9";}}}', 1),
(26854, 0, 'langmarkversion', 'langmark_version', '5.8 (Professional)', 0),
(26867, 0, 'langmark_widgets', 'tpath', 'langmark', 0),
(33327, 0, 'config', 'config_weight_class_id', '1', 0),
(33326, 0, 'config', 'config_length_class_id', '1', 0),
(33325, 0, 'config', 'config_currency_auto', '1', 0),
(33324, 0, 'config', 'config_currency', 'UAH', 0),
(33323, 0, 'config', 'config_admin_language', 'ru', 0),
(33322, 0, 'config', 'config_language', 'ua', 0),
(33321, 0, 'config', 'config_zone_id', '', 0),
(33320, 0, 'config', 'config_country_id', '220', 0),
(26873, 0, 'langmark_options', 'general_set', 'a:5:{s:6:"switch";s:1:"1";s:6:"prefix";a:3:{s:2:"ru";s:3:"ru/";s:2:"ua";s:0:"";s:2:"en";s:3:"en/";}s:10:"pagination";s:1:"1";s:17:"pagination_prefix";s:4:"page";s:16:"pagination_title";a:3:{s:2:"ru";s:16:"страница";s:2:"ua";s:16:"сторінка";s:2:"en";s:4:"page";}}', 1),
(33319, 0, 'config', 'config_layout_id', '4', 0),
(33318, 0, 'config', 'config_template', 'shopycart', 0),
(33315, 0, 'config', 'config_fax', '', 0),
(33316, 0, 'config', 'config_title', 'Майстерня Камізелька| KAMIZELьKA| ', 0),
(33428, 0, 'deadcow_seo', 'deadcow_seo_transliteration', '1', 0),
(30756, 0, 'simple', 'simple_customer_view_address_select', '1', 0),
(30742, 0, 'simple', 'simple_payment_view_address_full', 'a:3:{s:13:"bank_transfer";s:1:"0";s:3:"cod";s:1:"0";s:13:"free_checkout";s:1:"0";}', 1),
(30737, 0, 'simple', 'simple_shipping_view_autoselect_first', '1', 0),
(30738, 0, 'simple', 'simple_shipping_view_address_full', 'a:4:{s:7:"courier";s:1:"0";s:10:"courier_ua";s:1:"0";s:6:"pickup";s:1:"0";s:7:"ukrpost";s:1:"0";}', 1),
(30735, 0, 'simple', 'simple_shipping_view_title', '1', 0),
(30736, 0, 'simple', 'simple_shipping_view_address_empty', '1', 0),
(30734, 0, 'simple', 'simple_shipping_methods_hide', '0', 0),
(30733, 0, 'simple', 'simple_common_view_help_text', '0', 0),
(30731, 0, 'simple', 'simple_common_view_agreement_checkbox_init', '0', 0),
(30732, 0, 'simple', 'simple_common_view_help_id', '0', 0),
(30730, 0, 'simple', 'simple_common_view_agreement_checkbox', '1', 0),
(30729, 0, 'simple', 'simple_common_view_agreement_text', '0', 0),
(30728, 0, 'simple', 'simple_common_view_agreement_id', '5', 0),
(30727, 0, 'simple', 'simple_max_weight', '', 0),
(30726, 0, 'simple', 'simple_min_weight', '', 0),
(30725, 0, 'simple', 'simple_max_quantity', '', 0),
(30721, 0, 'simple', 'simple_show_weight', '0', 0),
(30724, 0, 'simple', 'simple_min_quantity', '', 0),
(30723, 0, 'simple', 'simple_max_amount', '', 0),
(30722, 0, 'simple', 'simple_min_amount', '', 0),
(30720, 0, 'simple', 'simple_use_total', '0', 0),
(30718, 0, 'simple', 'simple_minify', '0', 0),
(30719, 0, 'simple', 'simple_childs_payment_first', '0', 0),
(30717, 0, 'simple', 'simple_comment_target', '', 0),
(30715, 0, 'simple', 'simple_type_of_selection_of_group', 'radio', 0),
(30716, 0, 'simple', 'simple_customer_group_id_after_reg', '1', 0),
(27798, 0, 'total_customer_group_discount', 'total_customer_group_discount_status', '1', 0),
(27797, 0, 'total_customer_group_discount', 'total_customer_group_discount_customer_group_id', 'a:2:{i:2;s:2:"10";i:1;s:1:"0";}', 1),
(27799, 0, 'total_customer_group_discount', 'total_customer_group_discount_sort_order', '2', 0),
(30713, 0, 'simple', 'simple_checkout_asap_for_logged', '1', 0),
(30714, 0, 'simple', 'simple_geoip_mode', '1', 0),
(30712, 0, 'simple', 'simple_checkout_asap_for_not_logged', '1', 0),
(30711, 0, 'simple', 'simple_show_back', '0', 0),
(30710, 0, 'simple', 'simple_use_cookies', '0', 0),
(30709, 0, 'simple', 'simple_set_for_reload', 'main_country_id,main_zone_id,main_city,main_address_1', 0),
(30706, 0, 'simple', 'simple_debug', '0', 0),
(30707, 0, 'simple', 'simple_disable_guest_checkout', '0', 0),
(30708, 0, 'simple', 'simple_empty_email', '', 0),
(30705, 0, 'simple', 'simple_steps_summary', '0', 0),
(30704, 0, 'simple', 'simple_steps', '0', 0),
(30703, 0, 'simple', 'simple_common_template', '{help}{cart}{right_column}{customer}{/right_column}{left_column}{shipping}{payment}{/left_column}{agreement}\r\n', 0),
(28768, 0, 'carousel', 'carousel_module', 'a:2:{i:0;a:9:{s:9:"banner_id";s:1:"8";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"0";s:10:"sort_order";s:2:"-1";}i:1;a:9:{s:9:"banner_id";s:2:"11";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(33317, 0, 'config', 'config_meta_description', 'ОДЯГ ФІЛІГРАННОГО ПОШИТТЯ', 0),
(33313, 0, 'config', 'config_telephone1', '+38(063)617-3546', 0),
(33314, 0, 'config', 'config_telephone2', '+38(050)326-0399', 0),
(33311, 0, 'config', 'config_email', 'info@kamizelka.in.ua', 0),
(29581, 0, 'oc_smsc', 'oc_smsc_status_id_7', '', 0),
(29580, 0, 'oc_smsc', 'oc_smsc_textarea_customer_new_status', '', 0),
(29576, 0, 'oc_smsc', 'oc_smsc_textarea_admin_new_order', 'Ура! Прилител заказ №{ORDER_NUM}, сумма :{ORDER_SUM}. За работу!', 0),
(29578, 0, 'oc_smsc', 'oc_smsc_textarea_customer_new_order', 'Дякуємо за Ваше замовлення № {ORDER_NUM}.\r\nГарного дня! Майстерня &quot;Камізелька&quot;.\r\n', 0),
(29579, 0, 'oc_smsc', 'oc_smsc_select_customer_new_status', '7', 0),
(29577, 0, 'oc_smsc', 'oc_smsc_customer_new_order', '1', 0),
(29575, 0, 'oc_smsc', 'oc_smsc_telephone', '+380662634533', 0),
(29574, 0, 'oc_smsc', 'oc_smsc_admin_new_order', '1', 0),
(29573, 0, 'oc_smsc', 'oc_smsc_maxsms', '', 0),
(29572, 0, 'oc_smsc', 'oc_smsc_signature', 'Kamizelka', 0),
(29571, 0, 'oc_smsc', 'oc_smsc_password', 'Mx25L4005', 0),
(29570, 0, 'oc_smsc', 'oc_smsc_login', 'kamizelka.site', 0),
(33149, 0, 'slideshow', 'slideshow_module', 'a:2:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"648";s:6:"height";s:3:"648";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"0";}i:1;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"648";s:6:"height";s:3:"648";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"0";}}', 1),
(33312, 0, 'config', 'config_telephone', '+38(098)678-0712', 0),
(33310, 0, 'config', 'config_address', 'Україна,\r\n м.Вишневе, вулиця Машинобудівників  5', 0),
(33309, 0, 'config', 'config_owner', 'KAMIZELьKA', 0),
(33308, 0, 'config', 'config_name', 'KAMIZELьKA', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Очистить таблицу перед добавлением данных `oc_stock_status`
--

TRUNCATE TABLE `oc_stock_status`;
--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'в наявності'),
(8, 1, 'Pre-Order'),
(5, 2, 'немає у наявності'),
(6, 2, 'під замовлення'),
(8, 2, 'Pre-Order'),
(7, 3, 'в наличии'),
(8, 3, 'Pre-Order'),
(5, 3, 'нет на склада'),
(6, 3, 'под заказ'),
(6, 1, '2 - 3 Days'),
(5, 1, 'Out Of Stock'),
(7, 1, 'In Stock');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_store`
--

TRUNCATE TABLE `oc_store`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Очистить таблицу перед добавлением данных `oc_tax_class`
--

TRUNCATE TABLE `oc_tax_class`;
--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Очистить таблицу перед добавлением данных `oc_tax_rate`
--

TRUNCATE TABLE `oc_tax_rate`;
--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (17.5%)', '17.5000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_tax_rate_to_customer_group`
--

TRUNCATE TABLE `oc_tax_rate_to_customer_group`;
--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Очистить таблицу перед добавлением данных `oc_tax_rule`
--

TRUNCATE TABLE `oc_tax_rule`;
--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `seomanager` int(1) DEFAULT '0',
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `seomanager` (`seomanager`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2858 ;

--
-- Очистить таблицу перед добавлением данных `oc_url_alias`
--

TRUNCATE TABLE `oc_url_alias`;
--
-- Дамп данных таблицы `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`, `seomanager`) VALUES
(2383, 'product_id=41', 'bodi-b-01', 0),
(2183, 'information_id=4', 'about_us', 0),
(2796, 'category_id=57', 'bodi', 0),
(807, 'common/home', '', 0),
(808, 'account/wishlist', 'wishlist', 1),
(809, 'account/account', 'account', 1),
(810, 'checkout/cart', 'cart', 1),
(811, 'checkout/checkout', 'checkout', 1),
(812, 'account/login', 'login', 1),
(813, 'account/logout', 'logout', 1),
(814, 'account/order', 'order-history', 1),
(815, 'account/newsletter', 'newsletter', 1),
(816, 'product/special', 'specials', 1),
(817, 'affiliate/account', 'affiliates', 1),
(818, 'checkout/voucher', 'gift-vouchers', 1),
(819, 'product/manufacturer', 'manufacturer', 1),
(820, 'information/contact', 'contacts', 1),
(821, 'account/return/insert', 'request-return', 1),
(822, 'information/sitemap', 'sitemap', 1),
(823, 'account/forgotten', 'forgot-password', 1),
(824, 'account/download', 'downloads', 1),
(825, 'account/return', 'returns', 1),
(826, 'account/transaction', 'transactions', 1),
(827, 'account/register', 'create-account', 1),
(828, 'product/compare', 'compare-products', 1),
(829, 'product/search', 'search', 1),
(830, 'account/edit', 'edit-account', 1),
(831, 'account/password', 'change-password', 1),
(832, 'account/address', 'address-book', 1),
(833, 'account/reward', 'reward-points', 1),
(834, 'affiliate/edit', 'edit-affiliate-account', 1),
(835, 'affiliate/password', 'change-affiliate-password', 1),
(836, 'affiliate/payment', 'affiliate-payment-options', 1),
(837, 'affiliate/tracking', 'affiliate-tracking-code', 1),
(838, 'affiliate/transaction', 'affiliate-transactions', 1),
(839, 'affiliate/logout', 'affiliate-logout', 1),
(840, 'affiliate/forgotten', 'affiliate-forgot-password', 1),
(841, 'affiliate/register', 'create-affiliate-account', 1),
(842, 'affiliate/login', 'affiliate-login', 1),
(2797, 'category_id=24', 'rubashki-bluzy', 0),
(2794, 'category_id=59', 'yubki', 0),
(2795, 'category_id=60', 'zhiletki', 0),
(2306, 'category_id=62', 'korsety', 0),
(2477, 'category_id=63', 'akssesuary', 0),
(2843, 'category_id=64', 'tovar-so-skidkoy', 0),
(2689, 'product_id=274', 'plate-hlopkovoe-poloska-kupon-p-23', 0),
(2762, 'product_id=238', 'yubka-sinyaya-kruzhevnaya-s-30', 0),
(2541, 'product_id=245', 'yubka-sinyaya-s-volanom-art-s-28-1', 0),
(2799, 'product_id=98', 'galstuk', 0),
(2784, 'product_id=280', 'bluzka-belaya-batist-bl-35', 0),
(2779, 'product_id=278', 'zhiletka-raznocvetnaya-poloska-ka-17', 0),
(2770, 'product_id=259', 'zhiletka-seraya-s-v-obraznym-vyrezom-ka-16', 0),
(2780, 'product_id=260', 'bluza-sirenevo-rozovaya-s-zastyozhkoy-na-spinke-bl-30', 0),
(2783, 'product_id=276', 'bluza-sovushki-bl-34', 0),
(2658, 'product_id=97', 'podtyazhki-zhenskie', 0),
(2777, 'product_id=268', 'sarafan-len-zastezhka-sboku-sn-03', 0),
(2677, 'product_id=264', 'sarafan-letniy-v-cvetnuyu-polosku-sn-03', 0),
(2756, 'product_id=279', 'top-belyy-lyon-s-razrezami-na-rukavah-tp-05', 0),
(2829, 'product_id=275', 'top-mayka-cvetnoy-kant-tp-05', 0),
(2576, 'product_id=75', 'bluza-zhenskaya-bl-01', 0),
(2690, 'product_id=267', 'plate-midi-polevye-cvety-p-24', 0),
(2683, 'product_id=263', 'chernaya-yubka-midi-s-zapahom-i-rubashka-so-spushchenym-rukavom-akciya-1', 0),
(2642, 'product_id=262', 'palto-seroe-trikotazhnoe-na-rozovoy-trikotazhnoy-podkladke-pt-01', 0),
(2828, 'product_id=266', 'rubashka-dvuhcvetnaya-len-r-35', 0),
(2827, 'product_id=272', 'mayka-trikotazh-cvetnaya-poloska-ma-01', 0),
(2711, 'product_id=120', 'bodi-b-11', 0),
(2549, 'information_id=6', 'dostavka_i_oplata', 0),
(2732, 'information_id=8', 'size_grid', 0),
(2384, 'product_id=49', 'bodi-b-02', 0),
(2385, 'product_id=47', 'bodi-b-03', 0),
(2285, 'product_id=51', 'bodi-b-06', 0),
(2748, 'product_id=261', 'bluza-belaya-s-zastyozhkoy-na-spinke-bl-32', 0),
(2685, 'product_id=277', 'bluza-belaya-s-rozovoy-vstavkoy-bl-33', 0),
(2699, 'product_id=239', 'chernoe-plate-s-kruzhevnym-podolom-p-21', 0),
(2768, 'product_id=217', 'plate-trikotazhnoe-midi-klyosh-p-13', 0),
(2775, 'product_id=216', 'sarafan-teplyy-v-polosku-sn-01', 0),
(2705, 'product_id=221', 'plate-midi-trikotazhnoe-vyazanye-kosy-p-15', 0),
(2759, 'product_id=251', 'bodi-top-kruzhevnoy-shampan-b-183', 0),
(2521, 'product_id=250', 'bodi-top-siniy-kruzhevnoy-b-182', 0),
(2522, 'product_id=249', 'bodi-top-chernyy-kruzhevnoy-b-181', 0),
(2789, 'product_id=254', 'zhiletka-seraya-s-nakladnymi-karmanami-ka-14', 0),
(2771, 'product_id=253', 'zhiletka-seraya-s-shalevym-vorotnikom-ka-15', 0),
(2525, 'product_id=255', 'koralovaya-yubka-midi-s-zapahom-s-235', 0),
(2700, 'product_id=236', 'plate-rubashka-koralovoe-p-19', 0),
(2701, 'product_id=235', 'plate-rubashka-shampan-p-18', 0),
(2788, 'product_id=234', 'plate-trikotazhnoe-a-siluet-p-16-1', 0),
(2703, 'product_id=244', 'plate-chernoe-kruzhevnoe-s-asimmetrichnym-nizom-p-171', 0),
(2530, 'product_id=243', 'plate-chernoe-kruzhevnoe-s-asimmetrichnym-nizom-p-172', 0),
(2544, 'product_id=258', 'rubashka-belaya-s-bolshim-karmanom-r-33', 0),
(1591, 'information/contact', 'contact', 1),
(1592, 'account/login', 'login', 1),
(1682, 'checkout/simplecheckout', 'checkout_', 1),
(1683, 'account/simpleregister', 'register', 1),
(1684, 'information_id=5', 'terms', 1),
(1689, 'common/home', 'home', 1),
(2831, 'product_id=273', 'top-s-rukavchikom-polevye-cvetytp-03', 0),
(1731, 'information/news', 'news', 1),
(2830, 'product_id=269', 'top-s-rukavchikom-belyy-tp-04', 0),
(2375, 'product_id=163', 'bluza-zhenskaya-bl-12', 0),
(2366, 'product_id=228', 'podtyazhki-zhenskie-po-01', 0),
(2584, 'product_id=139', 'plate-p-06', 0),
(2304, 'product_id=149', 'plate-p-07', 0),
(2710, 'product_id=152', 'rubashka-zhenskaya-r-17', 0),
(2695, 'product_id=240', 'rubashka-belaya-s-bolshim-karmanom-r-33-1', 0),
(2650, 'product_id=257', 'rubashka-belaya-tkan-i-trikotazh-r-32', 0),
(2648, 'product_id=248', 'rubashka-bodi-belaya-s-repsovoy-lentoy-b-19', 0),
(2581, 'product_id=158', 'tunika-t-01', 0),
(2582, 'product_id=159', 'tunika-t-02', 0),
(2054, 'product_id=165', 'futbolka-f-02', 0),
(2776, 'product_id=247', 'top-s-udlinennoy-spinkoy-i-razrezami-na-rukavah-tp-02', 0),
(2537, 'product_id=241', 'sarafan-chernyy-kruzhevnoy-sn-02', 0),
(2380, 'product_id=150', 'yubka-s-16', 0),
(2569, 'product_id=252', 'rubashka-bodi-sero-belaya-poloska-s-potaynoy-zastezhkoy-art-b-17-1', 0),
(2750, 'product_id=256', 'rubashka-golubaya-s-koketkoy-r-34', 0),
(2386, 'product_id=170', 'zhiletka-ka-08', 0),
(2647, 'category_id=65', 'vesna-lito-2017', 0),
(2491, 'product_id=178', 'bluza-zhenskaya-bl-13', 0),
(2652, 'product_id=183', 'bluza-zhenskaya-bl-14', 0),
(2653, 'product_id=184', 'bluza-zhenskaya-bl-15', 0),
(2580, 'product_id=185', 'bluza-zhenskaya-bl-16', 0),
(2749, 'product_id=246', 'bluza-s-kruzhevnoy-baskoy-shampan-bl-31', 0),
(2654, 'product_id=188', 'bluza-zhenskaya-bl-19', 0),
(2754, 'product_id=189', 'bluza-zhenskaya-bl-20', 0),
(2755, 'product_id=190', 'bluza-zhenskaya-bl-21', 0),
(2709, 'product_id=191', 'bluza-zhenskaya-bl-22', 0),
(2708, 'product_id=192', 'bluza-zhenskaya-bl-23', 0),
(2656, 'product_id=171', 'zhiletka-ka-09', 0),
(2769, 'product_id=233', 'snud-sn-01', 0),
(2785, 'product_id=237', 'bluza-sirenevo-rozovaya-s-mini-vorotnichkom-bl-29', 0),
(2774, 'product_id=182', 'zhiletka-ka-11', 0),
(2644, 'product_id=181', 'plate-p-08', 0),
(2643, 'product_id=193', 'plate-p-10', 0),
(2675, 'product_id=177', 'top-tp-01', 0),
(2839, 'product_id=302', 'golf-s-lyureksom-sv-03', 0),
(2583, 'product_id=179', 'yubka-s-19', 0),
(2379, 'product_id=194', 'yubka-s-20', 0),
(2765, 'product_id=218', 'yubka-trikotazhnaya-klesh-art-s-25-1', 0),
(2466, 'product_id=204', 'belaya-rubashka-s-baskoy-art-r-27', 0),
(2751, 'product_id=205', 'belaya-rubashka-s-potaynoy-zastezhkoy-so-skladkami-art-r-28', 0),
(2579, 'product_id=210', 'belaya-svobodnaya-bluzka-art-bl-25', 0),
(2753, 'product_id=211', 'belaya-ukorochennaya-bluzka-s-nezhnym-kruzhevom-art-bl-26', 0),
(2655, 'product_id=197', 'bluza-zhenskaya-bl-24', 0),
(2782, 'product_id=212', 'golubaya-ukorochennaya-bluzka-s-nezhnym-belym-kruzhevom-art-bl-27', 0),
(2738, 'product_id=201', 'zhenskaya-belaya-rubashka-so-spushchennym-rukavom-art-r-24', 0),
(2707, 'product_id=202', 'zhenskaya-rubashka-v-polosku-art-r-25', 0),
(2469, 'product_id=203', 'zhenskaya-rubashka-v-polosku-art-r-26', 0),
(2498, 'product_id=200', 'zhenskaya-udlinennaya-rubashka-v-kletochku-art-r-23', 0),
(2767, 'product_id=242', 'plate-mini-s-kruzhevnym-podolom-shampan-p-22', 0),
(2744, 'product_id=209', 'rubashka-bodi-belaya-s-potaynoy-zastezhkoy-art-b-16', 0),
(2462, 'product_id=208', 'rubashka-bodi-golubaya-s-potaynoy-zastezhkoy-art-b-15', 0),
(2737, 'product_id=213', 'rubashka-bodi-sero-belaya-poloska-s-potaynoy-zastezhkoy-art-b-17', 0),
(2743, 'product_id=206', 'chernaya-yubka-karandash-s-kruzhevnoy-vstavkoy-art-s-22', 0),
(2459, 'product_id=207', 'chernaya-yubka-midi-s-zapahom-art-s-23', 0),
(2382, 'product_id=199', 'yubka-s-21', 0),
(2763, 'product_id=214', 'chernaya-yubka-s-seroy-vstavkoy-art-s-24', 0),
(2766, 'product_id=215', 'yubka-v-pol-art-s-18', 0),
(2742, 'product_id=220', 'plate-trikotazhnoe-a-siluet-p-14', 0),
(2787, 'product_id=219', 'yubka-polosataya-sherstyanaya-art-s-26', 0),
(2640, 'category_id=66', 'osen-2016-zima-2017', 0),
(2733, 'product_id=224', 'bluza-zhenskaya-kremovaya-s-bantom-bl-28', 0),
(2833, 'product_id=225', 'zhiletka-seraya-trikotazhnaya-teplaya-ka-13', 0),
(2702, 'product_id=222', 'plate-trikotazhnoe-a-siluet-p-16', 0),
(2578, 'product_id=223', 'sviter-vodolazka-s-rukavom-34-sv-01', 0),
(2516, 'product_id=226', 'yubka-sinyaya-s-volanom-art-s-28', 0),
(2624, 'product_id=227', 'yubka-so-skladkoy-zapahom-fuksiya-art-s-27', 0),
(2657, 'product_id=229', 'podtyazhki-kruzhevnye-po-03', 0),
(2801, 'product_id=230', 'shapka-seraya-kosy-sha-01', 0),
(2752, 'product_id=232', 'belaya-rubashka-pod-zaponki-s-kruzhevnym-vorotnikom-i-manzhetami-art-r-30', 0),
(2651, 'product_id=231', 'belaya-rubashka-s-kruzhevnymi-vstavkami-i-potaynoy-zastezhkoy-art-r-29', 0),
(2826, 'product_id=271', 'sharf-len-zheltyy-s-serym', 0),
(2679, 'product_id=270', 'yubka-na-pugovicah-geometriya-s-32', 0),
(2832, 'product_id=265', 'yubka-hlopkovaya-s-rozovym-poyasom-s-31', 0),
(2792, 'category_id=67', 'leto-2017', 0),
(2791, 'category_id=68', 'osen-2017', 0),
(2746, 'product_id=285', 'bluza-legkaya-belaya-bl-36', 0),
(2730, 'product_id=290', 'bluza-hlopkovaya-v-kletku-bl-37', 0),
(2716, 'product_id=283', 'zhiletka-sinyaya-v-polosku-s-zastyozhkoy-na-spine-ka-20', 0),
(2717, 'product_id=281', 'zhiletka-sherstyanaya-pered-kletka-ka-18', 0),
(2718, 'product_id=282', 'zhiletka-sherstyanaya-sinyaya-s-karmanami-v-kletku-ka-19', 0),
(2719, 'product_id=292', 'plate-rozovoe-so-shnurovkoy-p-25', 0),
(2720, 'product_id=293', 'plate-rubashka-sherst-s-shelkom-p-26', 0),
(2739, 'product_id=288', 'rubashka-belaya-s-golubym-karmanom-r-38', 0),
(2741, 'product_id=286', 'rubashka-belaya-s-dvoynoy-plankoy-r-36', 0),
(2823, 'product_id=287', 'rubashka-belaya-s-figurnoy-plankoy-i-okantovannym-karmanom-r-37', 0),
(2814, 'product_id=294', 'seroe-plate-s-poyasom-p-27', 0),
(2725, 'product_id=295', 'sinee-plate-s-poyasom-v-kletochku-p-28', 0),
(2786, 'product_id=291', 'teplaya-yubka-v-kletku-na-bretelyah-s-35', 0),
(2727, 'product_id=289', 'teplaya-seraya-yubka-s-karmanami-s-34', 0),
(2842, 'product_id=284', 'yubka-trikotazhnaya-seraya-s-karmanami-s-33', 0),
(2837, 'product_id=299', 'zhiletka-sherstyanaya-seraya-kletka-ka-21', 0),
(2838, 'product_id=298', 'zhiletka-sherstyanaya-chernaya-ka-22', 0),
(2841, 'product_id=296', 'sarafan-teplyy-s-krasnoy-kletkoy-sn-06', 0),
(2815, 'product_id=297', 'sarafan-teplyy-seraya-kletka-sn-05', 0),
(2818, 'product_id=300', 'sviter-s-gorlom-yagodnyy-sv-02', 0),
(2821, 'product_id=301', 'sviter-spinka-kletka-sv-04', 0),
(2819, 'product_id=303', 'teplaya-yubka-kletka-krasnaya-s-36', 0),
(2820, 'product_id=304', 'shapka-grenadin-i-seryy-sha-02', 0),
(2824, 'category_id=69', 'zima-2018', 0),
(2844, 'category_id=70', 'vesna-2018-napolnyaetsya', 0),
(2845, 'product_id=312', 'zhilet-chernyy-krasnaya-kletka-ka-24', 0),
(2846, 'product_id=307', 'zhiletka-trehcvetaya-ka-23', 0),
(2847, 'product_id=305', 'plate-iz-tonkoy-shersti-na-zapah-seroe-p-29', 0),
(2848, 'product_id=311', 'plate-s-kruzhevnymi-krylyshkami-koral-p-31', 0),
(2856, 'product_id=310', 'plate-sinee-dlinnyy-rukav-s-kruzhevnymi-krylyshkami-p-32', 0),
(2850, 'product_id=313', 'plate-chernoe-dlinnyy-rukav-s-kruzhevnymi-krylyshkami-p-33', 0),
(2857, 'product_id=306', 'plate-rubashka-chernoe-kruzhevnoe-p-29', 0),
(2852, 'product_id=308', 'pulover-yagodnyy-sv-05', 0),
(2853, 'product_id=314', 'yubka-svetlaya-na-pugovicah-s-39', 0),
(2854, 'product_id=315', 'yubka-seraya-s-zapahom-s-38', 0),
(2855, 'product_id=309', 'yubka-chernaya-cherno-belaya-kletka-s-37', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Очистить таблицу перед добавлением данных `oc_user`
--

TRUNCATE TABLE `oc_user`;
--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '48b2812138dfeedf96e99d5b5c6bf9c388e60151', '195093397', '', '', '3759326@gmail.com', '', '91.123.156.202', 1, '2014-05-06 01:47:45'),
(2, 1, 'ira', '9db70bc9fb09de7ff397448e80c826b05ee0f945', '56f41936c', 'Irina', 'Gvarilenko', '', '', '176.37.98.6', 1, '2014-05-06 09:42:09');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Очистить таблицу перед добавлением данных `oc_user_group`
--

TRUNCATE TABLE `oc_user_group`;
--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:166:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/codemanager";i:46;s:18:"module/deadcow_seo";i:47;s:18:"module/ebaydisplay";i:48;s:15:"module/featured";i:49;s:13:"module/filter";i:50;s:18:"module/google_maps";i:51;s:18:"module/google_talk";i:52;s:18:"module/information";i:53;s:15:"module/langmark";i:54;s:13:"module/latest";i:55;s:11:"module/news";i:56;s:14:"module/oc_smsc";i:57;s:17:"module/openbaypro";i:58;s:16:"module/popupcart";i:59;s:16:"module/pp_layout";i:60;s:30:"module/reward_points_generator";i:61;s:13:"module/simple";i:62;s:16:"module/slideshow";i:63;s:14:"module/special";i:64;s:12:"module/store";i:65;s:20:"module/vqmod_manager";i:66;s:14:"module/welcome";i:67;s:14:"openbay/amazon";i:68;s:22:"openbay/amazon_listing";i:69;s:22:"openbay/amazon_product";i:70;s:16:"openbay/amazonus";i:71;s:24:"openbay/amazonus_listing";i:72;s:24:"openbay/amazonus_product";i:73;s:20:"openbay/ebay_profile";i:74;s:21:"openbay/ebay_template";i:75;s:15:"openbay/openbay";i:76;s:23:"payment/amazon_checkout";i:77;s:24:"payment/authorizenet_aim";i:78;s:21:"payment/bank_transfer";i:79;s:14:"payment/cheque";i:80;s:11:"payment/cod";i:81;s:21:"payment/free_checkout";i:82;s:22:"payment/klarna_account";i:83;s:22:"payment/klarna_invoice";i:84;s:14:"payment/liqpay";i:85;s:20:"payment/moneybookers";i:86;s:14:"payment/nochex";i:87;s:15:"payment/paymate";i:88;s:16:"payment/paypoint";i:89;s:13:"payment/payza";i:90;s:26:"payment/perpetual_payments";i:91;s:18:"payment/pp_express";i:92;s:25:"payment/pp_payflow_iframe";i:93;s:14:"payment/pp_pro";i:94;s:21:"payment/pp_pro_iframe";i:95;s:17:"payment/pp_pro_pf";i:96;s:17:"payment/pp_pro_uk";i:97;s:19:"payment/pp_standard";i:98;s:15:"payment/sagepay";i:99;s:22:"payment/sagepay_direct";i:100;s:18:"payment/sagepay_us";i:101;s:19:"payment/twocheckout";i:102;s:28:"payment/web_payment_software";i:103;s:16:"payment/worldpay";i:104;s:27:"report/affiliate_commission";i:105;s:22:"report/customer_credit";i:106;s:22:"report/customer_online";i:107;s:21:"report/customer_order";i:108;s:22:"report/customer_reward";i:109;s:24:"report/product_purchased";i:110;s:21:"report/product_viewed";i:111;s:18:"report/sale_coupon";i:112;s:17:"report/sale_order";i:113;s:18:"report/sale_return";i:114;s:20:"report/sale_shipping";i:115;s:15:"report/sale_tax";i:116;s:14:"sale/affiliate";i:117;s:12:"sale/contact";i:118;s:11:"sale/coupon";i:119;s:13:"sale/customer";i:120;s:20:"sale/customer_ban_ip";i:121;s:19:"sale/customer_group";i:122;s:10:"sale/order";i:123;s:14:"sale/recurring";i:124;s:11:"sale/return";i:125;s:12:"sale/voucher";i:126;s:18:"sale/voucher_theme";i:127;s:16:"setting/ezconfig";i:128;s:15:"setting/setting";i:129;s:13:"setting/store";i:130;s:16:"shipping/auspost";i:131;s:17:"shipping/citylink";i:132;s:16:"shipping/courier";i:133;s:19:"shipping/courier_ua";i:134;s:14:"shipping/fedex";i:135;s:13:"shipping/flat";i:136;s:13:"shipping/free";i:137;s:13:"shipping/item";i:138;s:19:"shipping/novaposhta";i:139;s:23:"shipping/parcelforce_48";i:140;s:15:"shipping/pickup";i:141;s:19:"shipping/royal_mail";i:142;s:16:"shipping/ukrpost";i:143;s:12:"shipping/ups";i:144;s:13:"shipping/usps";i:145;s:15:"shipping/weight";i:146;s:11:"tool/backup";i:147;s:14:"tool/error_log";i:148;s:11:"tool/export";i:149;s:18:"tool/export_import";i:150;s:15:"tool/seomanager";i:151;s:12:"total/coupon";i:152;s:12:"total/credit";i:153;s:14:"total/handling";i:154;s:16:"total/klarna_fee";i:155;s:19:"total/low_order_fee";i:156;s:12:"total/reward";i:157;s:14:"total/shipping";i:158;s:15:"total/sub_total";i:159;s:9:"total/tax";i:160;s:11:"total/total";i:161;s:35:"total/total_customer_group_discount";i:162;s:13:"total/voucher";i:163;s:9:"user/user";i:164;s:20:"user/user_permission";i:165;s:15:"module/discount";}s:6:"modify";a:166:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/codemanager";i:46;s:18:"module/deadcow_seo";i:47;s:18:"module/ebaydisplay";i:48;s:15:"module/featured";i:49;s:13:"module/filter";i:50;s:18:"module/google_maps";i:51;s:18:"module/google_talk";i:52;s:18:"module/information";i:53;s:15:"module/langmark";i:54;s:13:"module/latest";i:55;s:11:"module/news";i:56;s:14:"module/oc_smsc";i:57;s:17:"module/openbaypro";i:58;s:16:"module/popupcart";i:59;s:16:"module/pp_layout";i:60;s:30:"module/reward_points_generator";i:61;s:13:"module/simple";i:62;s:16:"module/slideshow";i:63;s:14:"module/special";i:64;s:12:"module/store";i:65;s:20:"module/vqmod_manager";i:66;s:14:"module/welcome";i:67;s:14:"openbay/amazon";i:68;s:22:"openbay/amazon_listing";i:69;s:22:"openbay/amazon_product";i:70;s:16:"openbay/amazonus";i:71;s:24:"openbay/amazonus_listing";i:72;s:24:"openbay/amazonus_product";i:73;s:20:"openbay/ebay_profile";i:74;s:21:"openbay/ebay_template";i:75;s:15:"openbay/openbay";i:76;s:23:"payment/amazon_checkout";i:77;s:24:"payment/authorizenet_aim";i:78;s:21:"payment/bank_transfer";i:79;s:14:"payment/cheque";i:80;s:11:"payment/cod";i:81;s:21:"payment/free_checkout";i:82;s:22:"payment/klarna_account";i:83;s:22:"payment/klarna_invoice";i:84;s:14:"payment/liqpay";i:85;s:20:"payment/moneybookers";i:86;s:14:"payment/nochex";i:87;s:15:"payment/paymate";i:88;s:16:"payment/paypoint";i:89;s:13:"payment/payza";i:90;s:26:"payment/perpetual_payments";i:91;s:18:"payment/pp_express";i:92;s:25:"payment/pp_payflow_iframe";i:93;s:14:"payment/pp_pro";i:94;s:21:"payment/pp_pro_iframe";i:95;s:17:"payment/pp_pro_pf";i:96;s:17:"payment/pp_pro_uk";i:97;s:19:"payment/pp_standard";i:98;s:15:"payment/sagepay";i:99;s:22:"payment/sagepay_direct";i:100;s:18:"payment/sagepay_us";i:101;s:19:"payment/twocheckout";i:102;s:28:"payment/web_payment_software";i:103;s:16:"payment/worldpay";i:104;s:27:"report/affiliate_commission";i:105;s:22:"report/customer_credit";i:106;s:22:"report/customer_online";i:107;s:21:"report/customer_order";i:108;s:22:"report/customer_reward";i:109;s:24:"report/product_purchased";i:110;s:21:"report/product_viewed";i:111;s:18:"report/sale_coupon";i:112;s:17:"report/sale_order";i:113;s:18:"report/sale_return";i:114;s:20:"report/sale_shipping";i:115;s:15:"report/sale_tax";i:116;s:14:"sale/affiliate";i:117;s:12:"sale/contact";i:118;s:11:"sale/coupon";i:119;s:13:"sale/customer";i:120;s:20:"sale/customer_ban_ip";i:121;s:19:"sale/customer_group";i:122;s:10:"sale/order";i:123;s:14:"sale/recurring";i:124;s:11:"sale/return";i:125;s:12:"sale/voucher";i:126;s:18:"sale/voucher_theme";i:127;s:16:"setting/ezconfig";i:128;s:15:"setting/setting";i:129;s:13:"setting/store";i:130;s:16:"shipping/auspost";i:131;s:17:"shipping/citylink";i:132;s:16:"shipping/courier";i:133;s:19:"shipping/courier_ua";i:134;s:14:"shipping/fedex";i:135;s:13:"shipping/flat";i:136;s:13:"shipping/free";i:137;s:13:"shipping/item";i:138;s:19:"shipping/novaposhta";i:139;s:23:"shipping/parcelforce_48";i:140;s:15:"shipping/pickup";i:141;s:19:"shipping/royal_mail";i:142;s:16:"shipping/ukrpost";i:143;s:12:"shipping/ups";i:144;s:13:"shipping/usps";i:145;s:15:"shipping/weight";i:146;s:11:"tool/backup";i:147;s:14:"tool/error_log";i:148;s:11:"tool/export";i:149;s:18:"tool/export_import";i:150;s:15:"tool/seomanager";i:151;s:12:"total/coupon";i:152;s:12:"total/credit";i:153;s:14:"total/handling";i:154;s:16:"total/klarna_fee";i:155;s:19:"total/low_order_fee";i:156;s:12:"total/reward";i:157;s:14:"total/shipping";i:158;s:15:"total/sub_total";i:159;s:9:"total/tax";i:160;s:11:"total/total";i:161;s:35:"total/total_customer_group_discount";i:162;s:13:"total/voucher";i:163;s:9:"user/user";i:164;s:20:"user/user_permission";i:165;s:15:"module/discount";}}'),
(11, 'codemanager', 'a:1:{s:6:"access";a:2:{i:0;s:16:"extension/module";i:1;s:18:"module/codemanager";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Очистить таблицу перед добавлением данных `oc_voucher`
--

TRUNCATE TABLE `oc_voucher`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Очистить таблицу перед добавлением данных `oc_voucher_history`
--

TRUNCATE TABLE `oc_voucher_history`;
-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Очистить таблицу перед добавлением данных `oc_voucher_theme`
--

TRUNCATE TABLE `oc_voucher_theme`;
--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `oc_voucher_theme_description`
--

TRUNCATE TABLE `oc_voucher_theme_description`;
--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General'),
(6, 3, 'Christmas'),
(7, 3, 'Birthday'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Очистить таблицу перед добавлением данных `oc_weight_class`
--

TRUNCATE TABLE `oc_weight_class`;
--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Очистить таблицу перед добавлением данных `oc_weight_class_description`
--

TRUNCATE TABLE `oc_weight_class_description`;
--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz'),
(1, 3, 'Kilogram', 'kg'),
(2, 3, 'Gram', 'g'),
(5, 3, 'Pound ', 'lb'),
(6, 3, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3971 ;

--
-- Очистить таблицу перед добавлением данных `oc_zone`
--

TRUNCATE TABLE `oc_zone`;
--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3480, 220, 'Черкассы', 'CK', 1),
(3481, 220, 'Чернигов', 'CH', 1),
(3482, 220, 'Черновцы', 'CV', 1),
(3483, 220, 'Крым', 'CR', 1),
(3484, 220, 'Днепропетровск', 'DN', 1),
(3485, 220, 'Донецк', 'DO', 1),
(3486, 220, 'Ивано-Франковск', 'IV', 1),
(3487, 220, 'Харьков', 'KH', 1),
(3488, 220, 'Хмельницкий', 'KM', 1),
(3489, 220, 'Кировоград', 'KR', 1),
(3490, 220, 'Киевская область', 'KV', 1),
(3491, 220, 'Киев', 'KY', 1),
(3492, 220, 'Луганск', 'LU', 1),
(3493, 220, 'Львов', 'LV', 1),
(3494, 220, 'Николаев', 'MY', 1),
(3495, 220, 'Одесса', 'OD', 1),
(3496, 220, 'Полтава', 'PO', 1),
(3497, 220, 'Ровно', 'RI', 1),
(3498, 220, 'Севастополь', 'SE', 1),
(3499, 220, 'Сумы', 'SU', 1),
(3500, 220, 'Тернополь', 'TE', 1),
(3501, 220, 'Винница', 'VI', 1),
(3502, 220, 'Луцк', 'VO', 1),
(3503, 220, 'Ужгород', 'ZK', 1),
(3504, 220, 'Запорожье', 'ZA', 1),
(3505, 220, 'Житомир', 'ZH', 1),
(3970, 220, 'Херсон', 'KE', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Очистить таблицу перед добавлением данных `oc_zone_to_geo_zone`
--

TRUNCATE TABLE `oc_zone_to_geo_zone`;
--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `simple_custom_data`
--

DROP TABLE IF EXISTS `simple_custom_data`;
CREATE TABLE IF NOT EXISTS `simple_custom_data` (
  `object_type` tinyint(4) NOT NULL,
  `object_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`object_type`,`object_id`,`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Очистить таблицу перед добавлением данных `simple_custom_data`
--

TRUNCATE TABLE `simple_custom_data`;
--
-- Дамп данных таблицы `simple_custom_data`
--

INSERT INTO `simple_custom_data` (`object_type`, `object_id`, `customer_id`, `data`) VALUES
(2, 3, 3, 'a:0:{}'),
(3, 3, 3, 'a:0:{}'),
(1, 7, 3, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:23:"Отделение НП";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 8, 3, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:23:"Отделение НП";s:5:"value";s:2:"33";s:6:"values";a:0:{}s:4:"text";s:2:"33";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 9, 3, 'a:0:{}'),
(1, 10, 0, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:23:"Отделение НП";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(2, 1, 1, 'a:0:{}'),
(3, 1, 1, 'a:0:{}'),
(1, 11, 1, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:23:"Отделение НП";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 12, 1, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:23:"Отделение НП";s:5:"value";s:2:"38";s:6:"values";a:0:{}s:4:"text";s:2:"38";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 13, 1, 'a:0:{}'),
(1, 14, 1, 'a:0:{}'),
(1, 15, 1, 'a:0:{}'),
(1, 16, 1, 'a:0:{}'),
(2, 4, 4, 'a:0:{}'),
(3, 4, 4, 'a:0:{}'),
(1, 17, 4, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:39:"Відділення НоваПошта";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 18, 4, 'a:0:{}'),
(1, 19, 1, 'a:0:{}'),
(1, 20, 1, 'a:0:{}'),
(1, 21, 4, 'a:0:{}'),
(1, 22, 4, 'a:0:{}'),
(1, 23, 4, 'a:0:{}'),
(1, 24, 4, 'a:0:{}'),
(1, 25, 4, 'a:0:{}'),
(1, 26, 4, 'a:0:{}'),
(1, 27, 4, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:39:"Отделение НоваяПочта";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 28, 4, 'a:0:{}'),
(1, 29, 4, 'a:0:{}'),
(1, 30, 4, 'a:0:{}'),
(1, 31, 1, 'a:0:{}'),
(1, 32, 3, 'a:0:{}'),
(1, 33, 3, 'a:0:{}'),
(1, 34, 1, 'a:0:{}'),
(1, 35, 1, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:39:"Відділення НоваПошта";s:5:"value";s:2:"38";s:6:"values";a:0:{}s:4:"text";s:2:"38";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 36, 4, 'a:1:{s:20:"payment_custom_point";a:9:{s:2:"id";s:20:"payment_custom_point";s:5:"label";s:39:"Відділення НоваПошта";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:12:"custom_point";}}'),
(1, 37, 0, 'a:0:{}'),
(1, 38, 1, 'a:0:{}'),
(1, 39, 4, 'a:0:{}'),
(1, 40, 4, 'a:0:{}'),
(1, 41, 1, 'a:0:{}'),
(1, 42, 4, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:21:"Новая Почта";s:6:"value2";s:12:"ИнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:21:"Новая Почта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:59:"Номер отделения службы доставки";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 43, 1, 'a:0:{}'),
(1, 44, 1, 'a:0:{}'),
(1, 45, 4, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:21:"Новая Почта";s:6:"value2";s:12:"ИнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:21:"Новая Почта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:59:"Номер отделения службы доставки";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 46, 0, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:19:"Нова Пошта";s:6:"value2";s:12:"ІнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:19:"Нова Пошта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:62:"Номер відділення служби доставки ";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 47, 0, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:19:"Нова Пошта";s:6:"value2";s:12:"ІнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:19:"Нова Пошта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:62:"Номер відділення служби доставки ";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 48, 4, 'a:0:{}'),
(1, 49, 4, 'a:0:{}'),
(1, 50, 4, 'a:0:{}'),
(1, 51, 4, 'a:0:{}'),
(1, 52, 0, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:21:"Новая Почта";s:6:"value2";s:12:"ИнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:21:"Новая Почта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:59:"Номер отделения службы доставки";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 53, 0, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:21:"Новая Почта";s:6:"value2";s:12:"ИнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:21:"Новая Почта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:59:"Номер отделения службы доставки";s:5:"value";s:48:"отделение №16(шестнадцать)";s:6:"values";a:0:{}s:4:"text";s:48:"отделение №16(шестнадцать)";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 54, 0, 'a:0:{}'),
(1, 55, 0, 'a:2:{s:23:"payment_custom_delivery";a:9:{s:2:"id";s:23:"payment_custom_delivery";s:5:"label";s:29:"Служба доставки";s:5:"value";s:6:"value1";s:6:"values";a:3:{s:6:"value1";s:21:"Новая Почта";s:6:"value2";s:12:"ИнТайм";s:6:"value3";s:16:"Автолюкс";}s:4:"text";s:21:"Новая Почта";s:4:"type";s:6:"select";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:15:"custom_delivery";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:59:"Номер отделения службы доставки";s:5:"value";s:2:"16";s:6:"values";a:0:{}s:4:"text";s:2:"16";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 56, 0, 'a:0:{}'),
(2, 5, 5, 'a:0:{}'),
(3, 5, 5, 'a:0:{}'),
(2, 6, 6, 'a:0:{}'),
(3, 6, 6, 'a:0:{}'),
(1, 57, 0, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:2:"28";s:6:"values";a:0:{}s:4:"text";s:2:"28";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 7, 7, 'a:0:{}'),
(3, 7, 7, 'a:0:{}'),
(2, 8, 8, 'a:0:{}'),
(3, 8, 8, 'a:0:{}'),
(1, 58, 8, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:64:"Відділення №16: пл. Героїв Майдану, 1";s:6:"values";a:0:{}s:4:"text";s:64:"Відділення №16: пл. Героїв Майдану, 1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 59, 0, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:5:"№ 1";s:6:"values";a:0:{}s:4:"text";s:5:"№ 1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 11, 11, 'a:0:{}'),
(3, 9, 11, 'a:0:{}'),
(2, 12, 12, 'a:0:{}'),
(3, 10, 12, 'a:0:{}'),
(1, 60, 12, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:4:"№1";s:6:"values";a:0:{}s:4:"text";s:4:"№1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 61, 0, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"17";s:6:"values";a:0:{}s:4:"text";s:2:"17";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 13, 13, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:20:"Викторовна";s:6:"values";a:0:{}s:4:"text";s:20:"Викторовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 11, 13, 'a:0:{}'),
(1, 62, 13, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:20:"Викторовна";s:6:"values";a:0:{}s:4:"text";s:20:"Викторовна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:1:"1";s:6:"values";a:0:{}s:4:"text";s:1:"1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 14, 14, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:15:"Олегiвна";s:6:"values";a:0:{}s:4:"text";s:15:"Олегiвна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 12, 14, 'a:0:{}'),
(1, 63, 14, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:15:"Олегiвна";s:6:"values";a:0:{}s:4:"text";s:15:"Олегiвна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"24";s:6:"values";a:0:{}s:4:"text";s:2:"24";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 64, 8, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:38:"16 (пл. героев Майдана)";s:6:"values";a:0:{}s:4:"text";s:38:"16 (пл. героев Майдана)";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 65, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатольевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 15, 15, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Станіславівна";s:6:"values";a:0:{}s:4:"text";s:26:"Станіславівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 13, 15, 'a:0:{}'),
(2, 16, 16, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатольевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 14, 16, 'a:0:{}'),
(1, 66, 16, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатольевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 17, 17, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 15, 17, 'a:0:{}'),
(1, 67, 17, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 68, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Володимирівна";s:6:"values";a:0:{}s:4:"text";s:26:"Володимирівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"31";s:6:"values";a:0:{}s:4:"text";s:2:"31";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 18, 18, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Жалатдинівна";s:6:"values";a:0:{}s:4:"text";s:24:"Жалатдинівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 16, 18, 'a:0:{}'),
(1, 69, 18, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Жалатдинівна";s:6:"values";a:0:{}s:4:"text";s:24:"Жалатдинівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"16";s:6:"values";a:0:{}s:4:"text";s:2:"16";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 19, 19, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юрьевна";s:6:"values";a:0:{}s:4:"text";s:14:"Юрьевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 17, 19, 'a:0:{}'),
(1, 70, 19, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юрьевна";s:6:"values";a:0:{}s:4:"text";s:14:"Юрьевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"59";s:6:"values";a:0:{}s:4:"text";s:2:"59";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 71, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"25";s:6:"values";a:0:{}s:4:"text";s:2:"25";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 20, 20, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Владимировна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимировна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 18, 20, 'a:0:{}'),
(1, 72, 20, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Владимировна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимировна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:96:"отделение №15, Дорофеева, 30 ( маг.&quot;Велика Кишеня&quot;)";s:6:"values";a:0:{}s:4:"text";s:96:"отделение №15, Дорофеева, 30 ( маг.&quot;Велика Кишеня&quot;)";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 73, 6, 'a:0:{}'),
(2, 21, 21, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:2:"ff";s:6:"values";a:0:{}s:4:"text";s:2:"ff";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 19, 21, 'a:0:{}'),
(2, 22, 22, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:3:"qqq";s:6:"values";a:0:{}s:4:"text";s:3:"qqq";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 20, 22, 'a:0:{}'),
(2, 23, 23, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:6:"tttttt";s:6:"values";a:0:{}s:4:"text";s:6:"tttttt";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 21, 23, 'a:0:{}'),
(2, 24, 24, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:5:"wewfe";s:6:"values";a:0:{}s:4:"text";s:5:"wewfe";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 22, 24, 'a:0:{}'),
(1, 74, 24, 'a:0:{}'),
(1, 75, 24, 'a:0:{}'),
(2, 25, 25, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:2:"sf";s:6:"values";a:0:{}s:4:"text";s:2:"sf";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 23, 25, 'a:0:{}'),
(2, 26, 26, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:4:"werg";s:6:"values";a:0:{}s:4:"text";s:4:"werg";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 24, 26, 'a:0:{}'),
(2, 27, 27, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:7:"wergqeg";s:6:"values";a:0:{}s:4:"text";s:7:"wergqeg";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 25, 27, 'a:0:{}'),
(1, 76, 6, 'a:0:{}'),
(1, 77, 6, 'a:0:{}'),
(1, 78, 6, 'a:0:{}'),
(2, 28, 28, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Вадимовна";s:6:"values";a:0:{}s:4:"text";s:18:"Вадимовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 26, 28, 'a:0:{}'),
(1, 79, 28, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Вадимовна";s:6:"values";a:0:{}s:4:"text";s:18:"Вадимовна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 29, 29, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:1:"z";s:6:"values";a:0:{}s:4:"text";s:1:"z";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 27, 29, 'a:0:{}'),
(1, 80, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергеевна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергеевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"19";s:6:"values";a:0:{}s:4:"text";s:2:"19";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 30, 30, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергеевна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергеевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 28, 30, 'a:0:{}'),
(1, 81, 30, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергеевна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергеевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"19";s:6:"values";a:0:{}s:4:"text";s:2:"19";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 31, 31, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Ігорівна";s:6:"values";a:0:{}s:4:"text";s:16:"Ігорівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 29, 31, 'a:0:{}'),
(1, 82, 31, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Ігорівна";s:6:"values";a:0:{}s:4:"text";s:16:"Ігорівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 83, 6, 'a:0:{}'),
(2, 32, 32, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Александровна";s:6:"values";a:0:{}s:4:"text";s:26:"Александровна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 30, 32, 'a:0:{}'),
(1, 84, 32, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Александровна";s:6:"values";a:0:{}s:4:"text";s:26:"Александровна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"10";s:6:"values";a:0:{}s:4:"text";s:2:"10";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 33, 33, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Богданівна";s:6:"values";a:0:{}s:4:"text";s:20:"Богданівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 31, 33, 'a:0:{}'),
(1, 85, 33, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Богданівна";s:6:"values";a:0:{}s:4:"text";s:20:"Богданівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"10";s:6:"values";a:0:{}s:4:"text";s:2:"10";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 86, 33, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Богданівна";s:6:"values";a:0:{}s:4:"text";s:20:"Богданівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"10";s:6:"values";a:0:{}s:4:"text";s:2:"10";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(3, 32, 8, 'a:0:{}'),
(1, 87, 8, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"16";s:6:"values";a:0:{}s:4:"text";s:2:"16";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 88, 4, 'a:0:{}'),
(1, 89, 8, 'a:1:{s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"16";s:6:"values";a:0:{}s:4:"text";s:2:"16";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 90, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Валентиновна";s:6:"values";a:0:{}s:4:"text";s:24:"Валентиновна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"2";s:6:"values";a:0:{}s:4:"text";s:1:"2";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 91, 4, 'a:0:{}'),
(1, 92, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 34, 34, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Викторовна";s:6:"values";a:0:{}s:4:"text";s:20:"Викторовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 33, 34, 'a:0:{}'),
(2, 35, 35, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Владимировна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимировна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 34, 35, 'a:0:{}'),
(2, 36, 36, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Володимирівна";s:6:"values";a:0:{}s:4:"text";s:26:"Володимирівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 35, 36, 'a:0:{}'),
(2, 37, 37, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 36, 37, 'a:0:{}'),
(1, 93, 37, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"42";s:6:"values";a:0:{}s:4:"text";s:2:"42";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 38, 38, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"АНДРІЇВНА";s:6:"values";a:0:{}s:4:"text";s:18:"АНДРІЇВНА";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 37, 38, 'a:0:{}'),
(1, 94, 38, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"АНДРІЇВНА";s:6:"values";a:0:{}s:4:"text";s:18:"АНДРІЇВНА";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:29:"вул. Мічуріна,№1";s:6:"values";a:0:{}s:4:"text";s:29:"вул. Мічуріна,№1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 39, 39, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:14:"Юрьевна";s:6:"values";a:0:{}s:4:"text";s:14:"Юрьевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 38, 39, 'a:0:{}'),
(1, 95, 39, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:14:"Юрьевна";s:6:"values";a:0:{}s:4:"text";s:14:"Юрьевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:1:"1";s:6:"values";a:0:{}s:4:"text";s:1:"1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 40, 40, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Василівна";s:6:"values";a:0:{}s:4:"text";s:18:"Василівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 39, 40, 'a:0:{}'),
(1, 96, 40, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Василівна";s:6:"values";a:0:{}s:4:"text";s:18:"Василівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:4:"№3";s:6:"values";a:0:{}s:4:"text";s:4:"№3";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 97, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:40:"№31, вул Московська 5/2а";s:6:"values";a:0:{}s:4:"text";s:40:"№31, вул Московська 5/2а";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 41, 41, 'a:0:{}'),
(3, 40, 41, 'a:0:{}'),
(1, 98, 41, 'a:0:{}'),
(2, 42, 42, 'a:0:{}'),
(3, 41, 42, 'a:0:{}'),
(1, 99, 42, 'a:0:{}'),
(1, 100, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"анатольевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 43, 43, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:2:"В";s:6:"values";a:0:{}s:4:"text";s:2:"В";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 42, 43, 'a:0:{}'),
(1, 101, 43, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:2:"В";s:6:"values";a:0:{}s:4:"text";s:2:"В";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 44, 44, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Володимирівна";s:6:"values";a:0:{}s:4:"text";s:26:"Володимирівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 43, 44, 'a:0:{}'),
(2, 45, 45, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:24:"Вячеславовна";s:6:"values";a:0:{}s:4:"text";s:24:"Вячеславовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 44, 45, 'a:0:{}'),
(1, 102, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергеевна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергеевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"11";s:6:"values";a:0:{}s:4:"text";s:2:"11";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 103, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Михайлівна";s:6:"values";a:0:{}s:4:"text";s:20:"Михайлівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 104, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:24:"Владимыровна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимыровна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:1:"8";s:6:"values";a:0:{}s:4:"text";s:1:"8";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 105, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Валериевна";s:6:"values";a:0:{}s:4:"text";s:20:"Валериевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"62";s:6:"values";a:0:{}s:4:"text";s:2:"62";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 46, 46, 'a:0:{}'),
(3, 45, 46, 'a:0:{}'),
(1, 106, 46, 'a:0:{}'),
(2, 47, 47, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:14:"Майевна";s:6:"values";a:0:{}s:4:"text";s:14:"Майевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 46, 47, 'a:0:{}'),
(1, 107, 47, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:14:"Майевна";s:6:"values";a:0:{}s:4:"text";s:14:"Майевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:24:"262 Метрополис";s:6:"values";a:0:{}s:4:"text";s:24:"262 Метрополис";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 108, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Татьяна";s:6:"values";a:0:{}s:4:"text";s:14:"Татьяна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"11";s:6:"values";a:0:{}s:4:"text";s:2:"11";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 48, 48, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Александровна";s:6:"values";a:0:{}s:4:"text";s:26:"Александровна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 47, 48, 'a:0:{}'),
(1, 109, 48, 'a:0:{}'),
(2, 49, 49, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Євгенівна";s:6:"values";a:0:{}s:4:"text";s:18:"Євгенівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 48, 49, 'a:0:{}'),
(1, 110, 49, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Євгенівна";s:6:"values";a:0:{}s:4:"text";s:18:"Євгенівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 111, 48, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Александровна";s:6:"values";a:0:{}s:4:"text";s:26:"Александровна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"60";s:6:"values";a:0:{}s:4:"text";s:2:"60";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 50, 50, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 49, 50, 'a:0:{}'),
(1, 112, 50, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:122:"Отделение № 46  Адрес: ул. Слинько (нов. название бульв. Жасминовый), 9";s:6:"values";a:0:{}s:4:"text";s:122:"Отделение № 46  Адрес: ул. Слинько (нов. название бульв. Жасминовый), 9";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 113, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Борисовна";s:6:"values";a:0:{}s:4:"text";s:18:"Борисовна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"3";s:6:"values";a:0:{}s:4:"text";s:1:"3";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 51, 51, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:16:"Ивановна";s:6:"values";a:0:{}s:4:"text";s:16:"Ивановна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 50, 51, 'a:0:{}'),
(1, 114, 51, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:16:"Ивановна";s:6:"values";a:0:{}s:4:"text";s:16:"Ивановна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 115, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Александровна";s:6:"values";a:0:{}s:4:"text";s:26:"Александровна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"2";s:6:"values";a:0:{}s:4:"text";s:1:"2";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 52, 52, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:19:"Миколаiвна";s:6:"values";a:0:{}s:4:"text";s:19:"Миколаiвна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 51, 52, 'a:0:{}'),
(2, 53, 53, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 52, 53, 'a:0:{}'),
(1, 116, 53, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}');
INSERT INTO `simple_custom_data` (`object_type`, `object_id`, `customer_id`, `data`) VALUES
(1, 117, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Алексеевна";s:6:"values";a:0:{}s:4:"text";s:20:"Алексеевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"41";s:6:"values";a:0:{}s:4:"text";s:2:"41";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 118, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:2:"М";s:6:"values";a:0:{}s:4:"text";s:2:"М";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 119, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"20";s:6:"values";a:0:{}s:4:"text";s:2:"20";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 54, 54, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Вікторівна";s:6:"values";a:0:{}s:4:"text";s:20:"Вікторівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 53, 54, 'a:0:{}'),
(2, 55, 55, 'a:0:{}'),
(3, 54, 55, 'a:0:{}'),
(1, 120, 55, 'a:0:{}'),
(1, 121, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:16:"ивановна";s:6:"values";a:0:{}s:4:"text";s:16:"ивановна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:20:"отделение 1";s:6:"values";a:0:{}s:4:"text";s:20:"отделение 1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 56, 56, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Андріївна";s:6:"values";a:0:{}s:4:"text";s:18:"Андріївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 55, 56, 'a:0:{}'),
(1, 122, 56, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Андріївна";s:6:"values";a:0:{}s:4:"text";s:18:"Андріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"292";s:6:"values";a:0:{}s:4:"text";s:3:"292";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 123, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Ивановна";s:6:"values";a:0:{}s:4:"text";s:16:"Ивановна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:20:"отделение 1";s:6:"values";a:0:{}s:4:"text";s:20:"отделение 1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 124, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:8:"Віта";s:6:"values";a:0:{}s:4:"text";s:8:"Віта";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:24:"Нова Пошта №1";s:6:"values";a:0:{}s:4:"text";s:24:"Нова Пошта №1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 57, 57, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 56, 57, 'a:0:{}'),
(1, 125, 57, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"3";s:6:"values";a:0:{}s:4:"text";s:1:"3";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 58, 58, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 57, 58, 'a:0:{}'),
(1, 126, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:3:"Ю.";s:6:"values";a:0:{}s:4:"text";s:3:"Ю.";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"#6";s:6:"values";a:0:{}s:4:"text";s:2:"#6";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 127, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Николаевна";s:6:"values";a:0:{}s:4:"text";s:20:"Николаевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"42";s:6:"values";a:0:{}s:4:"text";s:2:"42";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 128, 56, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Андріївна";s:6:"values";a:0:{}s:4:"text";s:18:"Андріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"292";s:6:"values";a:0:{}s:4:"text";s:3:"292";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 59, 59, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Леонидовна";s:6:"values";a:0:{}s:4:"text";s:20:"Леонидовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 58, 59, 'a:0:{}'),
(3, 59, 59, 'a:0:{}'),
(1, 129, 59, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Леонидовна";s:6:"values";a:0:{}s:4:"text";s:20:"Леонидовна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 60, 60, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатоліївна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатоліївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 60, 60, 'a:0:{}'),
(1, 130, 60, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатоліївна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатоліївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"41";s:6:"values";a:0:{}s:4:"text";s:2:"41";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 131, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Владимировна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимировна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 61, 61, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 61, 61, 'a:0:{}'),
(1, 132, 61, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 133, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:9:"Andriivna";s:6:"values";a:0:{}s:4:"text";s:9:"Andriivna";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 62, 62, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:1:"V";s:6:"values";a:0:{}s:4:"text";s:1:"V";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 62, 62, 'a:0:{}'),
(1, 134, 62, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:1:"V";s:6:"values";a:0:{}s:4:"text";s:1:"V";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 63, 63, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:22:"Анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатольевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 63, 63, 'a:0:{}'),
(2, 64, 64, 'a:0:{}'),
(3, 64, 64, 'a:0:{}'),
(1, 135, 64, 'a:0:{}'),
(2, 65, 65, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Андріївна";s:6:"values";a:0:{}s:4:"text";s:18:"Андріївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 65, 65, 'a:0:{}'),
(1, 136, 65, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Андріївна";s:6:"values";a:0:{}s:4:"text";s:18:"Андріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:34:"Відділення 8,Львів.";s:6:"values";a:0:{}s:4:"text";s:34:"Відділення 8,Львів.";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 137, 61, 'a:0:{}'),
(1, 138, 56, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Андріївна";s:6:"values";a:0:{}s:4:"text";s:18:"Андріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"292";s:6:"values";a:0:{}s:4:"text";s:3:"292";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(3, 66, 52, 'a:0:{}'),
(1, 139, 52, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:19:"Миколаiвна";s:6:"values";a:0:{}s:4:"text";s:19:"Миколаiвна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"193";s:6:"values";a:0:{}s:4:"text";s:3:"193";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 66, 66, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Сашовна";s:6:"values";a:0:{}s:4:"text";s:14:"Сашовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 67, 66, 'a:0:{}'),
(1, 140, 66, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Сашовна";s:6:"values";a:0:{}s:4:"text";s:14:"Сашовна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 67, 67, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Олександрівна";s:6:"values";a:0:{}s:4:"text";s:26:"Олександрівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 68, 67, 'a:0:{}'),
(1, 141, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"167";s:6:"values";a:0:{}s:4:"text";s:3:"167";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 68, 68, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Петровна";s:6:"values";a:0:{}s:4:"text";s:16:"Петровна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 69, 68, 'a:0:{}'),
(1, 142, 68, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Петровна";s:6:"values";a:0:{}s:4:"text";s:16:"Петровна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:12:"номер 1";s:6:"values";a:0:{}s:4:"text";s:12:"номер 1";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 69, 69, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Володимирівна";s:6:"values";a:0:{}s:4:"text";s:26:"Володимирівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 70, 69, 'a:0:{}'),
(1, 143, 61, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(1, 144, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:24:"Олесандрівна";s:6:"values";a:0:{}s:4:"text";s:24:"Олесандрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"329";s:6:"values";a:0:{}s:4:"text";s:3:"329";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 145, 61, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 70, 70, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Петрівна";s:6:"values";a:0:{}s:4:"text";s:16:"Петрівна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 71, 70, 'a:0:{}'),
(1, 146, 70, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Петрівна";s:6:"values";a:0:{}s:4:"text";s:16:"Петрівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"4";s:6:"values";a:0:{}s:4:"text";s:1:"4";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 71, 71, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:22:"Анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатольевна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 72, 71, 'a:0:{}'),
(1, 147, 71, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:22:"Анатольевна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатольевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 72, 72, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:24:"Владимировна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимировна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 73, 72, 'a:0:{}'),
(1, 148, 72, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:16:"Отчество";s:5:"value";s:24:"Владимировна";s:6:"values";a:0:{}s:4:"text";s:24:"Владимировна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:51:"Номер отделения Новой Почты";s:5:"value";s:2:"20";s:6:"values";a:0:{}s:4:"text";s:2:"20";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 149, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Ивановна";s:6:"values";a:0:{}s:4:"text";s:16:"Ивановна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"14";s:6:"values";a:0:{}s:4:"text";s:2:"14";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 150, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Николаевна";s:6:"values";a:0:{}s:4:"text";s:20:"Николаевна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"36";s:6:"values";a:0:{}s:4:"text";s:2:"36";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 151, 0, 'a:0:{}'),
(1, 152, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Валеріївна";s:6:"values";a:0:{}s:4:"text";s:20:"Валеріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"75";s:6:"values";a:0:{}s:4:"text";s:2:"75";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 153, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"76";s:6:"values";a:0:{}s:4:"text";s:2:"76";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 73, 73, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Викторовна";s:6:"values";a:0:{}s:4:"text";s:20:"Викторовна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 74, 73, 'a:0:{}'),
(1, 154, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Василівна";s:6:"values";a:0:{}s:4:"text";s:18:"Василівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"204";s:6:"values";a:0:{}s:4:"text";s:3:"204";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 155, 0, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:14:"Юріївна";s:6:"values";a:0:{}s:4:"text";s:14:"Юріївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(2, 74, 74, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 75, 74, 'a:0:{}'),
(1, 156, 74, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:18:"Сергіївна";s:6:"values";a:0:{}s:4:"text";s:18:"Сергіївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:3:"167";s:6:"values";a:0:{}s:4:"text";s:3:"167";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 75, 75, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:10:"oleksander";s:6:"values";a:0:{}s:4:"text";s:10:"oleksander";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 76, 75, 'a:0:{}'),
(1, 157, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:20:"Михайлівна";s:6:"values";a:0:{}s:4:"text";s:20:"Михайлівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"2";s:6:"values";a:0:{}s:4:"text";s:1:"2";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(1, 158, 0, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:16:"Ігорівна";s:6:"values";a:0:{}s:4:"text";s:16:"Ігорівна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:2:"58";s:6:"values";a:0:{}s:4:"text";s:2:"58";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 76, 76, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Владисдавлвна";s:6:"values";a:0:{}s:4:"text";s:26:"Владисдавлвна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 77, 76, 'a:0:{}'),
(3, 78, 76, 'a:0:{}'),
(1, 159, 76, 'a:2:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:26:"Владисдавлвна";s:6:"values";a:0:{}s:4:"text";s:26:"Владисдавлвна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}s:21:"payment_custom_number";a:9:{s:2:"id";s:21:"payment_custom_number";s:5:"label";s:53:"Номер відділення Нової Пошти";s:5:"value";s:1:"4";s:6:"values";a:0:{}s:4:"text";s:1:"4";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:13:"custom_number";}}'),
(2, 77, 77, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатоліївна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатоліївна";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}'),
(3, 79, 77, 'a:0:{}'),
(1, 160, 77, 'a:1:{s:17:"custom_middlename";a:9:{s:2:"id";s:17:"custom_middlename";s:5:"label";s:21:"По батькові";s:5:"value";s:22:"Анатоліївна";s:6:"values";a:0:{}s:4:"text";s:22:"Анатоліївна";s:4:"type";s:4:"text";s:3:"set";s:5:"order";s:4:"from";s:17:"checkout_customer";s:8:"field_id";s:17:"custom_middlename";}}');
