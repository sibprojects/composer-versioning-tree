-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 28 2021 г., 05:58
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
(1, '2021-01-28 05:57:44', 1),
(2, '2021-01-28 05:57:44', 2);

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
(1, 1, 0, 'laravel/framework', 'v5.4.36', 'Not found!'),
(2, 1, 1, 'doctrine/inflector', 'v1.1.0', 'Not found!'),
(3, 1, 1, 'erusev/parsedown', '1.7.4', 'Not found!'),
(4, 1, 1, 'league/flysystem', '1.0.65', 'Not found!'),
(5, 1, 1, 'monolog/monolog', '1.25.3', 'Not found!'),
(6, 1, 5, 'psr/log', '1.1.2', 'Not found!'),
(7, 1, 5, 'phpunit/phpunit-mock-objects', '3.4.4', 'Not found!'),
(8, 1, 7, 'doctrine/instantiator', '1.0.5', 'Not found!'),
(9, 1, 7, 'phpunit/php-text-template', '1.2.1', 'Not found!'),
(10, 1, 7, 'sebastian/exporter', '2.0.0', 'Not found!'),
(11, 1, 10, 'sebastian/recursion-context', '2.0.0', 'Not found!'),
(12, 1, 5, 'swiftmailer/swiftmailer', 'v5.4.12', 'Not found!'),
(13, 1, 1, 'mtdowling/cron-expression', 'v1.2.3', 'Not found!'),
(14, 1, 1, 'nesbot/carbon', '1.39.1', 'Not found!'),
(15, 1, 14, 'kylekatarnls/update-helper', '1.2.0', 'Not found!'),
(16, 1, 14, 'symfony/translation', 'v3.4.38', 'Not found!'),
(17, 1, 16, 'symfony/polyfill-mbstring', 'v1.14.0', 'Not found!'),
(18, 1, 16, 'symfony/finder', 'v3.4.38', 'Not found!'),
(19, 1, 16, 'symfony/http-kernel', 'v3.4.38', 'Not found!'),
(20, 1, 19, 'symfony/debug', 'v3.4.38', 'Not found!'),
(21, 1, 19, 'symfony/event-dispatcher', 'v3.4.38', 'Not found!'),
(22, 1, 19, 'symfony/http-foundation', 'v3.4.38', 'Not found!'),
(23, 1, 22, 'symfony/polyfill-php70', 'v1.14.0', 'Not found!'),
(24, 1, 23, 'paragonie/random_compat', 'v2.0.18', 'Not found!'),
(25, 1, 19, 'symfony/polyfill-ctype', 'v1.14.0', 'Not found!'),
(26, 1, 19, 'symfony/polyfill-php56', 'v1.14.0', 'Not found!'),
(27, 1, 26, 'symfony/polyfill-util', 'v1.14.0', 'Not found!'),
(28, 1, 19, 'symfony/console', 'v3.4.38', 'Not found!'),
(29, 1, 28, 'symfony/process', 'v3.4.38', 'Not found!'),
(30, 1, 19, 'symfony/css-selector', 'v3.4.38', 'Not found!'),
(31, 1, 19, 'symfony/routing', 'v3.4.38', 'Not found!'),
(32, 1, 31, 'symfony/yaml', 'v3.4.38', 'Not found!'),
(33, 1, 19, 'symfony/var-dumper', 'v3.4.38', 'Not found!'),
(34, 1, 1, 'ramsey/uuid', '3.9.3', 'Not found!'),
(35, 1, 1, 'tijsverkoyen/css-to-inline-styles', '2.2.2', 'Not found!'),
(36, 1, 1, 'vlucas/phpdotenv', 'v2.6.1', 'Not found!'),
(37, 1, 0, 'laravel/tinker', 'v1.0.10', 'Not found!'),
(38, 1, 37, 'psy/psysh', 'v0.9.12', 'Not found!'),
(39, 1, 38, 'dnoegel/php-xdg-base-dir', 'v0.1.1', 'Not found!'),
(40, 1, 38, 'jakub-onderka/php-console-highlighter', 'v0.4', 'Not found!'),
(41, 1, 40, 'jakub-onderka/php-console-color', 'v0.2', 'Not found!'),
(42, 1, 38, 'nikic/php-parser', 'v3.1.5', 'Not found!'),
(43, 1, 0, 'fzaninotto/faker', 'v1.9.1', 'Not found!'),
(44, 1, 0, 'mockery/mockery', '0.9.11', 'Not found!'),
(45, 1, 44, 'hamcrest/hamcrest-php', 'v1.2.2', 'Not found!'),
(46, 1, 45, 'phpunit/php-file-iterator', '1.4.5', 'Not found!'),
(47, 1, 0, 'phpunit/phpunit', '5.7.27', 'Not found!'),
(48, 1, 47, 'myclabs/deep-copy', '1.7.0', 'Not found!'),
(49, 1, 47, 'phpspec/prophecy', 'v1.10.3', 'Not found!'),
(50, 1, 49, 'phpdocumentor/reflection-docblock', '3.3.2', 'Not found!'),
(51, 1, 50, 'phpdocumentor/reflection-common', '1.0.1', 'Not found!'),
(52, 1, 50, 'phpdocumentor/type-resolver', '0.4.0', 'Not found!'),
(53, 1, 50, 'webmozart/assert', '1.7.0', 'Not found!'),
(54, 1, 49, 'sebastian/comparator', '1.2.4', 'Not found!'),
(55, 1, 54, 'sebastian/diff', '1.4.3', 'Not found!'),
(56, 1, 47, 'phpunit/php-code-coverage', '4.0.8', 'Not found!'),
(57, 1, 56, 'phpunit/php-token-stream', '1.4.12', 'Not found!'),
(58, 1, 56, 'sebastian/code-unit-reverse-lookup', '1.0.1', 'Not found!'),
(59, 1, 56, 'sebastian/environment', '2.0.0', 'Not found!'),
(60, 1, 56, 'sebastian/version', '2.0.1', 'Not found!'),
(61, 1, 47, 'phpunit/php-timer', '1.0.9', 'Not found!'),
(62, 1, 47, 'sebastian/global-state', '1.1.1', 'Not found!'),
(63, 1, 47, 'sebastian/object-enumerator', '2.0.1', 'Not found!'),
(64, 1, 47, 'sebastian/resource-operations', '1.0.0', 'Not found!'),
(65, 2, 0, 'phpunit/phpunit', '5.7.27', 'Not found!'),
(66, 2, 65, 'myclabs/deep-copy', '1.7.0', 'Not found!'),
(67, 2, 65, 'phpspec/prophecy', 'v1.10.3', 'Not found!'),
(68, 2, 67, 'doctrine/instantiator', '1.0.5', 'Not found!'),
(69, 2, 67, 'phpdocumentor/reflection-docblock', '3.3.2', 'Not found!'),
(70, 2, 69, 'phpdocumentor/reflection-common', '1.0.1', 'Not found!'),
(71, 2, 69, 'phpdocumentor/type-resolver', '0.4.0', 'Not found!'),
(72, 2, 69, 'webmozart/assert', '1.9.1', 'Not found!'),
(73, 2, 72, 'symfony/polyfill-ctype', 'v1.19.0', 'Not found!'),
(74, 2, 67, 'sebastian/comparator', '1.2.4', 'Not found!'),
(75, 2, 74, 'sebastian/diff', '1.4.3', 'Not found!'),
(76, 2, 74, 'sebastian/exporter', '2.0.0', 'Not found!'),
(77, 2, 76, 'sebastian/recursion-context', '2.0.0', 'Not found!'),
(78, 2, 65, 'phpunit/php-code-coverage', '4.0.8', 'Not found!'),
(79, 2, 78, 'phpunit/php-file-iterator', '1.4.5', 'Not found!'),
(80, 2, 78, 'phpunit/php-text-template', '1.2.1', 'Not found!'),
(81, 2, 78, 'phpunit/php-token-stream', '1.4.12', 'Not found!'),
(82, 2, 78, 'sebastian/code-unit-reverse-lookup', '1.0.2', 'Not found!'),
(83, 2, 78, 'sebastian/environment', '2.0.0', 'Not found!'),
(84, 2, 78, 'sebastian/version', '2.0.1', 'Not found!'),
(85, 2, 65, 'phpunit/php-timer', '1.0.9', 'Not found!'),
(86, 2, 65, 'phpunit/phpunit-mock-objects', '3.4.4', 'Not found!'),
(87, 2, 65, 'sebastian/global-state', '1.1.1', 'Not found!'),
(88, 2, 65, 'sebastian/object-enumerator', '2.0.1', 'Not found!'),
(89, 2, 65, 'sebastian/resource-operations', '1.0.0', 'Not found!'),
(90, 2, 65, 'symfony/yaml', 'v3.4.47', 'Not found!');

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
