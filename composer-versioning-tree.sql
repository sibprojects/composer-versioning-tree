-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 28 2021 г., 06:16
-- Версия сервера: 5.7.15
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `composer-versioning-tree`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cvt_file`
--

CREATE TABLE `cvt_file` (
  `id` int(11) NOT NULL,
  `project` longtext NOT NULL,
  `filename` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cvt_file`
--

INSERT INTO `cvt_file` (`id`, `project`, `filename`) VALUES
(1, 'laravel/laravel', 'Z:\\home\\composer-versioning-tree\\site/examples//laravel/composer.json'),
(2, 'phpunit/phpunit', 'Z:\\home\\composer-versioning-tree\\site/examples//phpunit/composer.json');

-- --------------------------------------------------------

--
-- Структура таблицы `cvt_tree`
--

CREATE TABLE `cvt_tree` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cvt_tree`
--

INSERT INTO `cvt_tree` (`id`, `created_at`, `file_id`) VALUES
(1, '2021-01-28 06:16:25', 1),
(2, '2021-01-28 06:16:25', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `cvt_tree_row`
--

CREATE TABLE `cvt_tree_row` (
  `id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `version` text NOT NULL,
  `latest` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cvt_tree_row`
--

INSERT INTO `cvt_tree_row` (`id`, `tree_id`, `parent_id`, `name`, `version`, `latest`) VALUES
(1, 1, 0, 'laravel/framework', 'v5.4.36', 'v8.25.0'),
(2, 1, 1, 'doctrine/inflector', 'v1.1.0', '2.0.3'),
(3, 1, 1, 'erusev/parsedown', '1.7.4', '1.7.4'),
(4, 1, 1, 'league/flysystem', '1.0.65', '1.0.62'),
(5, 1, 1, 'monolog/monolog', '1.25.3', '2.2.0'),
(6, 1, 5, 'psr/log', '1.1.2', '1.1.3'),
(7, 1, 5, 'phpunit/phpunit-mock-objects', '3.4.4', '1.2.3'),
(8, 1, 7, 'doctrine/instantiator', '1.0.5', '1.4.0'),
(9, 1, 7, 'phpunit/php-text-template', '1.2.1', '2.0.4'),
(10, 1, 7, 'sebastian/exporter', '2.0.0', '3.1.3'),
(11, 1, 10, 'sebastian/recursion-context', '2.0.0', '3.0.1'),
(12, 1, 5, 'swiftmailer/swiftmailer', 'v5.4.12', 'v6.2.5'),
(13, 1, 1, 'mtdowling/cron-expression', 'v1.2.3', 'v1.2.0'),
(14, 1, 1, 'nesbot/carbon', '1.39.1', '2.43.0'),
(15, 1, 14, 'kylekatarnls/update-helper', '1.2.0', '1.2.1'),
(16, 1, 14, 'symfony/translation', 'v3.4.38', 'v5.2.2'),
(17, 1, 16, 'symfony/polyfill-mbstring', 'v1.14.0', 'v1.22.0'),
(18, 1, 16, 'symfony/finder', 'v3.4.38', 'v5.2.2'),
(19, 1, 16, 'symfony/http-kernel', 'v3.4.38', 'v5.2.2'),
(20, 1, 19, 'symfony/debug', 'v3.4.38', 'v4.4.19'),
(21, 1, 19, 'symfony/event-dispatcher', 'v3.4.38', 'v5.2.2'),
(22, 1, 19, 'symfony/http-foundation', 'v3.4.38', 'v5.2.2'),
(23, 1, 22, 'symfony/polyfill-php70', 'v1.14.0', 'v1.20.0'),
(24, 1, 23, 'paragonie/random_compat', 'v2.0.18', 'v2.0.19'),
(25, 1, 19, 'symfony/polyfill-ctype', 'v1.14.0', 'v1.22.0'),
(26, 1, 19, 'symfony/polyfill-php56', 'v1.14.0', 'v1.20.0'),
(27, 1, 26, 'symfony/polyfill-util', 'v1.14.0', 'v1.22.0'),
(28, 1, 19, 'symfony/console', 'v3.4.38', 'v5.2.2'),
(29, 1, 28, 'symfony/process', 'v3.4.38', 'v5.2.2'),
(30, 1, 19, 'symfony/css-selector', 'v3.4.38', 'v5.2.2'),
(31, 1, 19, 'symfony/routing', 'v3.4.38', 'v5.2.2'),
(32, 1, 31, 'symfony/yaml', 'v3.4.38', 'v5.2.2'),
(33, 1, 19, 'symfony/var-dumper', 'v3.4.38', 'v5.2.2'),
(34, 1, 1, 'ramsey/uuid', '3.9.3', '4.1.1'),
(35, 1, 1, 'tijsverkoyen/css-to-inline-styles', '2.2.2', '2.2.3'),
(36, 1, 1, 'vlucas/phpdotenv', 'v2.6.1', 'v5.3.0'),
(37, 1, 0, 'laravel/tinker', 'v1.0.10', 'v2.6.0'),
(38, 1, 37, 'psy/psysh', 'v0.9.12', 'v0.10.6'),
(39, 1, 38, 'dnoegel/php-xdg-base-dir', 'v0.1.1', 'v0.1.1'),
(40, 1, 38, 'jakub-onderka/php-console-highlighter', 'v0.4', 'v0.4'),
(41, 1, 40, 'jakub-onderka/php-console-color', 'v0.2', 'v0.2'),
(42, 1, 38, 'nikic/php-parser', 'v3.1.5', 'v4.10.4'),
(43, 1, 0, 'fzaninotto/faker', 'v1.9.1', 'v1.9.2'),
(44, 1, 0, 'mockery/mockery', '0.9.11', '1.3.3'),
(45, 1, 44, 'hamcrest/hamcrest-php', 'v1.2.2', 'v2.0.1'),
(46, 1, 45, 'phpunit/php-file-iterator', '1.4.5', '2.0.3'),
(47, 1, 0, 'phpunit/phpunit', '5.7.27', '9.5.1'),
(48, 1, 47, 'myclabs/deep-copy', '1.7.0', '1.10.2'),
(49, 1, 47, 'phpspec/prophecy', 'v1.10.3', '1.12.2'),
(50, 1, 49, 'phpdocumentor/reflection-docblock', '3.3.2', '5.2.2'),
(51, 1, 50, 'phpdocumentor/reflection-common', '1.0.1', '2.2.0'),
(52, 1, 50, 'phpdocumentor/type-resolver', '0.4.0', '1.4.0'),
(53, 1, 50, 'webmozart/assert', '1.7.0', 'Not found!'),
(54, 1, 49, 'sebastian/comparator', '1.2.4', '3.0.3'),
(55, 1, 54, 'sebastian/diff', '1.4.3', '3.0.3'),
(56, 1, 47, 'phpunit/php-code-coverage', '4.0.8', '7.0.14'),
(57, 1, 56, 'phpunit/php-token-stream', '1.4.12', '3.1.2'),
(58, 1, 56, 'sebastian/code-unit-reverse-lookup', '1.0.1', '1.0.2'),
(59, 1, 56, 'sebastian/environment', '2.0.0', '4.2.4'),
(60, 1, 56, 'sebastian/version', '2.0.1', '3.0.2'),
(61, 1, 47, 'phpunit/php-timer', '1.0.9', '2.1.3'),
(62, 1, 47, 'sebastian/global-state', '1.1.1', '3.0.1'),
(63, 1, 47, 'sebastian/object-enumerator', '2.0.1', '3.0.4'),
(64, 1, 47, 'sebastian/resource-operations', '1.0.0', '2.0.2'),
(65, 2, 0, 'phpunit/phpunit', '5.7.27', '9.5.1'),
(66, 2, 65, 'myclabs/deep-copy', '1.7.0', '1.10.2'),
(67, 2, 65, 'phpspec/prophecy', 'v1.10.3', '1.12.2'),
(68, 2, 67, 'doctrine/instantiator', '1.0.5', '1.4.0'),
(69, 2, 67, 'phpdocumentor/reflection-docblock', '3.3.2', '5.2.2'),
(70, 2, 69, 'phpdocumentor/reflection-common', '1.0.1', '2.2.0'),
(71, 2, 69, 'phpdocumentor/type-resolver', '0.4.0', '1.4.0'),
(72, 2, 69, 'webmozart/assert', '1.9.1', '1.9.1'),
(73, 2, 72, 'symfony/polyfill-ctype', 'v1.19.0', 'v1.22.0'),
(74, 2, 67, 'sebastian/comparator', '1.2.4', '3.0.3'),
(75, 2, 74, 'sebastian/diff', '1.4.3', '3.0.3'),
(76, 2, 74, 'sebastian/exporter', '2.0.0', '3.1.3'),
(77, 2, 76, 'sebastian/recursion-context', '2.0.0', '3.0.1'),
(78, 2, 65, 'phpunit/php-code-coverage', '4.0.8', '7.0.14'),
(79, 2, 78, 'phpunit/php-file-iterator', '1.4.5', '2.0.3'),
(80, 2, 78, 'phpunit/php-text-template', '1.2.1', '2.0.4'),
(81, 2, 78, 'phpunit/php-token-stream', '1.4.12', '3.1.2'),
(82, 2, 78, 'sebastian/code-unit-reverse-lookup', '1.0.2', '1.0.2'),
(83, 2, 78, 'sebastian/environment', '2.0.0', '4.2.4'),
(84, 2, 78, 'sebastian/version', '2.0.1', '3.0.2'),
(85, 2, 65, 'phpunit/php-timer', '1.0.9', '2.1.3'),
(86, 2, 65, 'phpunit/phpunit-mock-objects', '3.4.4', '1.2.3'),
(87, 2, 65, 'sebastian/global-state', '1.1.1', '3.0.1'),
(88, 2, 65, 'sebastian/object-enumerator', '2.0.1', '3.0.4'),
(89, 2, 65, 'sebastian/resource-operations', '1.0.0', '2.0.2'),
(90, 2, 65, 'symfony/yaml', 'v3.4.47', 'v5.2.2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cvt_file`
--
ALTER TABLE `cvt_file`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cvt_tree`
--
ALTER TABLE `cvt_tree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date` (`created_at`),
  ADD KEY `file_id` (`file_id`);

--
-- Индексы таблицы `cvt_tree_row`
--
ALTER TABLE `cvt_tree_row`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tree_id` (`tree_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cvt_file`
--
ALTER TABLE `cvt_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cvt_tree`
--
ALTER TABLE `cvt_tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `cvt_tree_row`
--
ALTER TABLE `cvt_tree_row`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
