-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 11, 2020 at 07:20 PM
-- Server version: 5.7.29-log
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sk_digital_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(107, '2014_10_12_000000_create_users_table', 1),
(108, '2014_10_12_100000_create_password_resets_table', 1),
(109, '2019_08_19_000000_create_failed_jobs_table', 1),
(110, '2020_09_09_100510_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `preview`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laravel 8 führt mit Jetstream ein neues Scaffolding ein', 'Rund sechs Monate nach dem Erscheinen von Laravel 7 ist ein neues Release des zunehmend populäreren PHP-Webframeworks veröffentlicht worden.', 'Das PHP-Webframework Laravel ist in Version 8 erschienen. Das neue Release enthält viele neue Funktionen, darunter das neue Anwendungsgerüst Jetstream, ein Skeleton-Modellverzeichnis, Modell-Factory-… [+2346 chars]', 'https://heise.cloudimg.io/bound/1200x1200/q85.png-lossy-85.webp-lossy-85.foil1/_www-heise-de_/imgs/18/2/9/6/3/9/0/3/shutterstock_1477002812-2bc8e40bde99653d.jpeg', NULL, NULL),
(2, 1, 'Laravel–Дайджест (24 августа – 6 сентября 2020)', 'Что нового в Laravel 8. Руководство по обновлению до новой версии. Laravel Jetstream. Пакетирование задач. Набор компонентов для Blade-шаблонов.  Laravel 8 8 сен...', 'Laravel 8. . Laravel Jetstream. . Blade-.\r\n8 8 . .\r\n- Laravel.', 'https://habrastorage.org/webt/vp/mq/o-/vpmqo-h6dzmqrlrp0qicjhizudc.jpeg?v=1', NULL, NULL),
(3, 1, 'Ask HN: Self-taught webdev with lots of free time. What should I learn?', 'Comments', 'Hey HN,I\'m a self-taught webdev with 10 years xp. I have lots of free time right now with a bit less freelance projects coming in, and I\'m getting a bit bored of building web CRUDs and feel like I\'m … [+578 chars]', NULL, NULL, NULL),
(4, 1, 'Вред хранимых процедур', 'В чат подкаста «Цинковый прод» скинули статью о том, как некие ребята перенесли всю бизнес-логику в хранимые процедуры на языке pl/pgsql. И так как у статьи было много плюсов, то значит, есть люди, а может быть, их даже большинство, которые положительно воспр…', '« » , - pl/pgsql. , , , , , . , .\r\nphp git , , . : CREATE OR REPLACE PROCEDURE, : , . - . pl/pgsql\r\n, . . . , , DECLARE. , Pascal, , 2020.\r\n, php pl/pgsql:\r\nCREATE OR REPLACE FUNCTION sum(x int, y in… [+874 chars]', 'https://habrastorage.org/webt/6x/by/zo/6xbyzoxey4ogutasp-5wekkun5y.jpeg?v=1', NULL, NULL),
(5, 1, 'Ruby Digest 2020·08·2', 'Подборка информации о Ruby с 16 по 31 августа, включая русскоязычные источники:\nновости, конференции, новинки, медиа, статьи.\n\n\n\nНа сколько большие зарплаты у Ruby-разработчиков в России и где растет спрос на рубистов?\n\nЮкихиро Мацумото, создатель Ruby, расск…', 'Ruby 16 31 , :, , , , .\r\nRuby- ?\r\n, Ruby, Ruby 3.\r\nGitHub Ruby 2.7? Ruby 3?\r\nJs- Ruby on Rails? - StimulusJS? rails- ? rails-? ? Ruby on Rails 2020 ? Rails-.\r\n2020 Ruby - , Ruby . Ruby 3.0.\r\n21 NoRuK… [+1361 chars]', 'https://habrastorage.org/webt/c7/sl/6w/c7sl6wvgptchqxszxexzjo82f4c.png?v=1', NULL, NULL),
(6, 1, 'Site News: Blast from the Past - One Year Ago in PHP (09.03.2020)', 'Here\'s what was popular in the PHP community one year ago today:<ul><li>Laravel News: Running make:auth in Laravel 6\r\n\n<li>PHP – Code Wall: How To Log Like A Pro With Laravel & LogViewer\n<li>PHP: Hypertext Preprocessor: PHP 7.4.0RC1 Released!\n<li>Derick Retha…', 'Here\'s what was popular in the PHP community one year ago today:', NULL, NULL, NULL),
(7, 1, 'Benefits of Invoidea Technologies\' Laravel Web Development Services', 'With best Laravel development services from Invoidea Technologies, you get better authentication and authorization, best application security, enhance', '5 Benefits of Invoidea Technologies Laravel Web Development Services Laravel scores the highest in performance and scalability over other PHP frameworks. Thanks to its amazing features - fastness, in… [+1597 chars]', 'https://thumbnails-visually.netdna-ssl.com/benefits-of-invoidea-technologies-laravel-web-development-services_5f4666135f1f3_w250_h250.jpg', NULL, NULL),
(8, 1, 'Как я строил финскую доску объявлений на движке Tamaranga DO', 'Привет, друзья. Я UX-дизайнер в компании Tamaranga, которая создала CMS для досок объявлений и биржи труда. Как-то мы попросили нашего клиента об отзыве о продукте и, к нашему приятному удивлению, мы получили целую историю по выбору ниши и движка среди разных…', ', . UX- Tamaranga, CMS . - , , . , , .\r\n : XYZ Classifieds, LaraClassified, Wordpress, CMS DataLife Engine, Osclass, 1-, Tamaranga DO.\r\n, 50 , 5 . , , « », «», «» « ». 2012 , . , , «», MacBANG!, « »,… [+3211 chars]', 'https://habrastorage.org/webt/_2/1r/bi/_21rbi7hyl3tnxchtljv2xbjlg4.png?v=1', NULL, NULL),
(9, 1, '[recovery mode] Запускаем php 8 с jit через docker за 5 минут', 'Зима близко! А вместе с ней близится и релиз php 8. Если вам не терпится протестировать свой код в beta версии php 8, а заодно пощупать jit, то прошу под кат. \n Читать дальше →', '! php 8. beta php 8, jit, . TL:DR;\r\ngithub : github.com/xtrime-ru/php8-test\r\ndocker docker-compose. opcache.ini , opcache JIT .\r\n; Extended PHP.ini file to enable JIT.\r\n; ============================… [+3142 chars]', 'https://habr.com/share/publication/515216/46c1fd8e0cf743a39480953df390d1a6/?v=1', NULL, NULL),
(10, 1, 'Site News: Blast from the Past - One Year Ago in PHP (09.10.2020)', 'Here\'s what was popular in the PHP community one year ago today:<ul><li>Webslesson: Make Captcha Script in PHP with Ajax\r\n\n<li>murze.be: How to integrate Elasticsearch in your Laravel App\n<li>murze.be: Ã¢Â˜Â… Generating speaker cards using Tailwind and Larave…', 'Here\'s what was popular in the PHP community one year ago today:', NULL, NULL, NULL),
(11, 1, 'Fresh Resources for Web Designers and Developers (September 2020)', 'We\'ve seen a tremendous activity from the PHP as well as the JavaScript community, especially on Twitter. There have been new updates and releases on PHP', 'We’ve seen a tremendous activity from the PHP as well as the JavaScript community, especially on Twitter. There have been new updates and releases on PHP packages, JavaScript libraries, and some prog… [+5130 chars]', 'https://assets.hongkiat.com/uploads/designers-developers-monthly-09-2020/laravel-jetstream.jpg', NULL, NULL),
(12, 1, 'Site News: Blast from the Past - One Year Ago in PHP (08.20.2020)', 'Here\'s what was popular in the PHP community one year ago today:<ul><li>Akra\'s DevNotes: A first look at Slim 4\r\n\n<li>Laravel News: New Email Validation Rule Options in Laravel 5.8.33\n<li>Webslesson: Laravel 5.8 Tutorial - Datatables Individual Column Searchi…', 'Here\'s what was popular in the PHP community one year ago today:', NULL, NULL, NULL),
(13, 1, 'Дайджест свежих материалов из мира фронтенда за последнюю неделю №430 (24 — 30 августа 2020)', 'Предлагаем вашему вниманию подборку с ссылками на новые материалы из области фронтенда и около него.   Медиа    |    Веб-разработка    |    CSS    |    JavaScrip...', '.\r\n    |    -    |    CSS    |    JavaScript    |        |    \r\n«-» 244: , , a11y CSSSR: C Mozilla, TypeScript 4.0, DI TS , JavaScript, Laravel 8 « », 42: Fortnite « (18+)» 152: -\r\n , Google Modern W… [+429 chars]', 'https://habr.com/share/publication/517144/b102cb510a3f8bf5ea94f2c17219ae33/?v=1', NULL, NULL),
(14, 1, 'Weekly News for Designers № 557', 'This week’s Designer News – № 557 – includes Beyond Media Queries: Using Newer HTML & CSS Features for Responsive Designs, Blade UI Kit, Component Driven User Interfaces, The Ancient Art of UX, lookup.design Design Library, What is CC:SS? and much, much more!…', 'Custom CSS Styles for Form Inputs and Textareas Learn the process behind creating custom form inputs that look identical across major browsers.\r\nBeyond Media Queries: Using Newer HTML &amp; CSS Featu… [+1858 chars]', 'https://speckyboy.com/wp-content/uploads/2020/09/weekly-news-for-designers-sep-13-thumb.jpg', NULL, NULL),
(15, 1, 'Pieter Levels Makes $600k a Year from Nomad List and Remote OK', 'Pieter Levels [https://twitter.com/levelsio]makes about $600,000 a year. He\ntaught himself to code and has an unconventional philosophy. This is not an\ninterview but an analysis piece. Pieter defied the critics and built Nomad List\nand Remote OK into successf…', 'Pieter Levels makes about $600,000 a year. He taught himself to code and has an unconventional philosophy. This is not an interview but an analysis piece. Pieter defied the critics and built Nomad Li… [+5984 chars]', 'https://www.nocsdegree.com/content/images/2020/08/iu-45-1.jpeg', NULL, NULL),
(16, 1, 'Laravel Installer now includes support for Jetstream', 'Today the Laravel team released a new major version of “laravel/installer” that includes support for quickly starting Jetstream projects. With this new version when you run “laravel new project-name” you’ll get Jetstream options. \n\n The post Laravel Installer…', 'Today the Laravel team released a new major version of “laravel/installer” that includes support for quickly starting Jetstream projects. With this new version when you run “laravel new project-name”… [+547 chars]', 'https://i0.wp.com/wp.laravel-news.com/wp-content/uploads/2020/09/jetstream.jpg?fit=2200%2C1100&ssl=1?w=600&h=304', NULL, NULL),
(17, 1, 'Early Access to the Laravel 8 Upgrade Guide', 'The Laravel 8 upgrade guide is available early if you want to start planning your upgrades from Laravel 7.\n\n The post Early Access to the Laravel 8 Upgrade Guide appeared first on Laravel News.\n Join the Laravel Newsletter to get Laravel articles like this di…', 'The Laravel 8 upgrade guide is available early if you want to start planning your upgrades from Laravel 7:\r\nLaravel 8.x upgrade guide is up early if you want to take a peek! https://t.co/ZqYGWEXp5S\r\n… [+1018 chars]', 'https://i1.wp.com/wp.laravel-news.com/wp-content/uploads/2020/08/laravel8.jpg?fit=1400%2C708&ssl=1?w=600&h=304', NULL, NULL),
(18, 1, 'Laravel 8 is Now Released!', 'Laravel 8 is now released and includes many new features including Laravel Jetstream, a models directory, model factory classes, migration squashing, rate-limiting improvements, time testing helpers, dynamic blade components, and many more features.\n\n The pos…', 'Laravel 8 is now released and includes many new features including Laravel Jetstream, a models directory, model factory classes, migration squashing, rate-limiting improvements, time testing helpers,… [+4121 chars]', 'https://i1.wp.com/wp.laravel-news.com/wp-content/uploads/2020/08/laravel8.jpg?fit=1400%2C708&ssl=1?w=600&h=304', NULL, NULL),
(19, 1, 'Laravel Debugbar Adds Dark Mode', 'Laravel Debugbar v3.4.0 added a beautiful new dark mode. Check it out!\n\n The post Laravel Debugbar Adds Dark Mode appeared first on Laravel News.\n Join the Laravel Newsletter to get Laravel articles like this directly in your inbox.', 'Laravel Debugbar v3.4.0 added a beautiful new dark mode. Existing users with a system preference for dark mode should automatically start seeing the dark theme after updating to v3.4:\r\nThis feature a… [+691 chars]', 'https://i2.wp.com/wp.laravel-news.com/wp-content/uploads/2020/08/laravel-debugbar-featured.png?fit=2220%2C1125&ssl=1?w=600&h=304', NULL, NULL),
(20, 1, 'Laracon, Laravel 8, and Takeout', 'In this episode of the Laravel News podcast, Jake and Michael discuss Laracon, Laravel 8, and Takeout plus all the latest Laravel releases, tutorials, and happenings in the community.\n\n The post Laracon, Laravel 8, and Takeout appeared first on Laravel News.\n…', 'Join 31,000+ others and never miss out on new tips, tutorials, and more.', 'https://i1.wp.com/wp.laravel-news.com/wp-content/uploads/2017/02/podcast-youtube-mic.png?fit=1280%2C720&ssl=1?w=600&h=304', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meaghan Swaniawski', 'gleichner.mathew@example.com', '2020-09-11 13:18:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eJeWhGFel3', '2020-09-11 13:18:46', '2020-09-11 13:18:46'),
(2, 'Madonna Larson DVM', 'ansley79@example.net', '2020-09-11 13:18:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jmUEItT7sc', '2020-09-11 13:18:46', '2020-09-11 13:18:46'),
(3, 'Marta O\'Conner', 'elyse57@example.net', '2020-09-11 13:18:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7qBbCY6Yuu', '2020-09-11 13:18:46', '2020-09-11 13:18:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
