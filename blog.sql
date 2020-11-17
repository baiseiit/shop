-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 17 2020 г., 15:48
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Аксессуары'),
(2, 'Обуви');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `phone_number`, `product_id`, `count`, `created_at`) VALUES
(1, '87475231458', 2, 2, '2020-11-11 14:48:46'),
(2, '87475231458', 8, 1, '2020-11-11 14:49:47'),
(3, '87475231458', 8, 1, '2020-11-11 14:51:48'),
(4, '87475231458', 8, 1, '2020-11-11 14:53:23'),
(5, '87475231458', 8, 1, '2020-11-11 14:58:23'),
(6, '87475231458', 8, 1, '2020-11-11 15:00:00'),
(7, '87475231458', 8, 1, '2020-11-11 15:00:30'),
(8, '87475231458', 8, 1, '2020-11-11 15:02:28'),
(9, '87475231458', 8, 1, '2020-11-11 15:02:48'),
(10, '', 6, 0, '2020-11-11 15:03:16'),
(11, '87475231458', 6, 2, '2020-11-11 15:04:00');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `cupon` int(11) DEFAULT NULL,
  `image` varchar(16000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `category_id`, `price`, `cupon`, `image`) VALUES
(1, 'Чёрный Man Shoes', 'Konforlu kulanım sağlayan taban. Kaliteli plastikten üretilmiş alt taban. Bağcıklı. Şık ve rahat tasarımı ile sıcak yaz günlerinde gün boyu konforlu bir şekilde kullanabileceğiniz DeFacto Bağcıklı Sneaker Ayakkabı \'i hemen sipariş verin, ürününüzü kapınızdan teslim almanın ayrıcalığını yaşayın.\r\nПримерьте товар дома, если вам не подойдет размер, мы бесплатно обменяем на нужный вам в ближайшем магазине', 2, 7990, NULL, 'https://dfcdn.defacto.com.tr/320/S1201AZ_20AU_BK23_01_01.jpg'),
(2, 'Белый Girl Shoes', 'Bağcıklı. Konforlu ve rahat iç taban. Desenli alt taban. Şık ve konforlu tasarımı ile çocuklarınızın gün boyu severek giyeceği DeFacto Kız Çocuk Sneaker Ayakkabı\'yı hemen sipariş verin, ürününüzü evinizden teslim almanın keyfini yaşayın.', 2, 2990, 10, 'https://dfcdn.defacto.com.tr/320/N7405A6_20AU_WT41_01_01.jpg'),
(6, 'Перчатки', 'Акрил 97%, Эластан 3% МУЖСКАЯ ПЕРЧАТКИ', 1, 2990, NULL, 'https://dfcdn.defacto.com.tr/320/J4940AZ_18WN_BK23_01_01.jpg'),
(7, 'бежевый Woman Scarf2', 'Desenli modeli ve şık tarzı ile kıyafetlerinizle kombinleyerek trend bir görünüm elde edeceğiniz DeFacto kadın Atkı. ', 2, 34900, 27, 'https://dfcdn.defacto.com.tr/320/R6902AZ_20WN_ER2_01_01.jpg'),
(8, 'Man Hat', 'Мерки модели : Высота: 1,89 Обхват груди: 99 Обхват талии: 75 Обхват бёдер : 99', 1, 1990, 10, 'https://dfcdn.defacto.com.tr/6/J9313AZ_18AU_NV2_02_02.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `role`) VALUES
(5, 'Alibek', 'alibek@bk.ru', '00000000', '2020-11-13 06:31:46', 2),
(6, 'sdfks', 'test@bk.ru', '00000000', '2020-11-13 08:01:09', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
