-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 25 2024 г., 18:04
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `falaleev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `FullName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `FullName`, `number`, `email`, `login`, `password`) VALUES
(9, 'Гуляев Михаил Станиславович', '89634671595', 'migulyaev.809@gmail.com', 'misxikal', '123'),
(10, 'Гуляев Михаил Станиславович', '89634671595', 'migulyaev.809@gmail.com', 'misxika', '123'),
(11, 'Гуляев Михаил Станиславович', '89634671595', 'migulyaev.809@gmail.com', 'misxikall', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `zayavka`
--

CREATE TABLE `zayavka` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `numCar` varchar(255) NOT NULL,
  `zayavlenie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_user` int NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `zayavka`
--

INSERT INTO `zayavka` (`id`, `title`, `numCar`, `zayavlenie`, `id_user`, `status`) VALUES
(4, 'sdfsd', 'sdfsd', 'sdfsdfsfsd', 9, 'Одобрено'),
(5, 'ss', 'ss', 'qq', 9, 'Рассматривается'),
(6, 'ss', '11', '22', 10, 'Рассматривается'),
(7, 'Пересдача ГАИ', 'уа533р', ' цзщауцрпшцупруцхпгоуцъпгуцщпуц ущпауцщпгуц уцпщш гуцшпгу пшуцг п9уцп 90ц п9угц 9уцгп 00цупг90уцгп9уц  9пгуц90пг90уц  ц0г9п0цгуп цзпу -цкпг -0цушгп-а еуцц-у шп-0уцш уц-0 аш -0уц п цзщауцрпшцупруцхпгоуцъпгуцщпуц ущпауцщпгуц уцпщш гуцшпгу пшуцг п9уцп 90ц п9угц 9уцгп 00цупг90уцгп9уц  9пгуц90пг90уц  ц0г9п0цгуп цзпу -цкпг -0цушгп-а еуцц-у шп-0уцш уц-0 аш -0уц п цзщауцрпшцупруцхпгоуцъпгуцщпуц ущпауцщпгуц уцпщш гуцшпгу пшуцг п9уцп 90ц п9угц 9уцгп 00цупг90уцгп9уц  9пгуц90пг90уц  ц0г9п0цгуп цзпу -цкпг -0цушгп-а еуцц-у шп-0уцш уц-0 аш -0уц п цзщауцрпшцупруцхпгоуцъпгуцщпуц ущпауцщпгуц уцпщш гуцшпгу пшуцг п9уцп 90ц п9угц 9уцгп 00цупг90уцгп9уц  9пгуц90пг90уц  ц0г9п0цгуп цзпу -цкпг -0цушгп-а еуцц-у шп-0уцш уц-0 аш -0уц п ', 9, 'Рассматривается');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zayavka`
--
ALTER TABLE `zayavka`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `zayavka`
--
ALTER TABLE `zayavka`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `zayavka`
--
ALTER TABLE `zayavka`
  ADD CONSTRAINT `zayavka_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
