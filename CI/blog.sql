-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 01 2017 г., 20:55
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Структура таблицы `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `data_creates` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `description`, `img`, `author`, `data_creates`) VALUES
(1, 'Blog article', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laboriosam quis sit, commodi reprehenderit sed accusantium, quasi nulla sequi cumque, quas animi porro enim quia! Ex, labore velit harum assumenda.', '1.jpg', 'Lora Smile', '2017-09-01'),
(3, 'Codeigniter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laboriosam quis sit, commodi reprehenderit sed accusantium, quasi nulla sequi cumque, quas animi porro enim quia! Ex, labore velit harum assumenda.', '2.jpg', 'John Doe', '2017-09-01'),
(4, 'Angular', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus laboriosam quis sit, commodi reprehenderit sed accusantium, quasi nulla sequi cumque, quas animi porro enim quia! Ex, labore velit harum assumenda.', '3.jpg', 'Hue Jackman', '2017-09-01'),
(12, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '5.jpg', 'Alice Klark', '0000-00-00'),
(13, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '5.jpg', 'Alice Klark', '0000-00-00'),
(14, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '5.jpg', 'Alice Klark', '0000-00-00'),
(15, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '5.jpg', 'Alice Klark', '0000-00-00'),
(16, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '5.jpg', 'Alice Klark', '0000-00-00'),
(17, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '6.jpg', 'Alice Klark', '0000-00-00'),
(18, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '5.jpg', 'Alice Klark', '0000-00-00'),
(19, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '4.jpg', 'Alice Klark', '0000-00-00'),
(20, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '3.jpg', 'Alice Klark', '0000-00-00'),
(21, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '2.jpg', 'Alice Klark', '0000-00-00'),
(22, 'Title', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione delectus quasi reiciendis at libero, architecto tempora, minus illo. Culpa explicabo, voluptatem, cumque porro nobis distinctio nam error temporibus consequatur cupiditate?', '1.jpg', 'Alice Klark', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
