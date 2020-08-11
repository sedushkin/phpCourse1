-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 11 2020 г., 16:00
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phpcourse1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `id_employees` int(11) NOT NULL COMMENT 'id сотрудника',
  `name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'имя сотрудника',
  `surname` tinytext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'фамилия сотрудника'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сотрудники';

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`id_employees`, `name`, `surname`) VALUES
(1, 'Владимир', 'Седушкин');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `feedback_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feedback_user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='таблица отзывов';

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `feedback_body`, `feedback_user`) VALUES
(1, 'test feedback', 'test user'),
(2, '321', '123');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id_image` int(11) NOT NULL COMMENT 'Id фотографии, ключевой, автоинкремент',
  `image_title` text COLLATE utf8mb4_unicode_ci DEFAULT 'Фотография' COMMENT 'Название фтогорафии',
  `views` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Количество просмотров',
  `resourse` tinytext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'расположение фотографии галлереи'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Галерея';

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id_image`, `image_title`, `views`, `resourse`) VALUES
(1, 'Фотография', '20', '../public/img/9UdCkO.jpg'),
(2, 'Фотография', '0', '../public/img/1169469-ubuntu.jpg'),
(3, 'Фотография', '0', '../public/img/1434005-ubuntu.png'),
(4, 'Фотография', '10', '../public/img/ubuntu_livewire_by_powerofpi-d34g5el.png');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'название товара',
  `description` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'описание товара',
  `price` float NOT NULL DEFAULT 0 COMMENT 'цена товара',
  `src` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'путь к картинке',
  `src_small` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'путь к уменьшенной картинке'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица товаров';

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `price`, `src`, `src_small`) VALUES
(1, 'First goods', 'This is the best goods of the ever', 5, '../public/img/9UdCkO.jpg', '../public/img/9UdCkO.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL COMMENT 'id новости',
  `news_title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Название статьи' COMMENT 'заголовок статьи',
  `news_content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текст статьи',
  `views` int(11) NOT NULL DEFAULT 0 COMMENT 'Количество просмотров',
  `news_preview` tinytext COLLATE utf8mb4_unicode_ci DEFAULT 'Текст предварительного просмотра'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Новости';

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id_news`, `news_title`, `news_content`, `views`, `news_preview`) VALUES
(1, 'Первая статья', '11Выполняем домашнее задание номер 5', 1, 'Текст предварительного просмотра'),
(2, 'Вторая статья', '22Выполняем домашнее задание номер 5', 0, 'Текст предварительного просмотра'),
(3, 'Третья новость', '111Опять интересная статья', 0, 'Текст предварительного просмотра'),
(4, 'четвертая стать', 'текст 4 статьи', 0, 'Текст предварительного просмотра'),
(5, '5 статья', 'текст 5 статьи', 0, 'Текст предварительного просмотра');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id_employees`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_image`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id_employees` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id сотрудника', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id фотографии, ключевой, автоинкремент', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id новости', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
