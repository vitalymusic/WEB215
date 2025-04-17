-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 17, 2025 at 03:40 PM
-- Server version: 5.7.39
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web315_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `content` text NOT NULL,
  `userId` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `menu_name`, `lang`, `content`, `userId`, `time`) VALUES
(1, 'Main', 'en', '<main>\r\n        <h1>Main</h1>\r\n<p>PHP is a general-purpose scripting language geared towards web development.[8] It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1993 and released in 1995.[9][10] The PHP reference implementation is now produced by the PHP Group.[11] PHP was originally an abbreviation of Personal Home Page,[12][13] but it now stands for the recursive acronym PHP: Hypertext Preprocessor.[14] Below is a \"Hello World!\" program in PHP.</p><img src=\"https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&amp;w=0&amp;k=20&amp;c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=\" alt=\"image1\" width=\"500\">     </main>', 1, '2025-04-15 16:11:02'),
(2, 'About Us', 'en', '<main>\r\n<h1>About</h1>\r\n<p>This is about page</p>\r\n<img src=\"https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&amp;w=0&amp;k=20&amp;c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=\" alt=\"image1\" width=\"500\">     </main>', 2, '2025-04-15 16:11:02'),
(3, 'Contacts', 'en', '<main>\r\n        <h1>Contacts</h1><p>This is contacts page</p><img src=\"https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&amp;w=0&amp;k=20&amp;c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=\" alt=\"image1\" width=\"500\">     </main>', 1, '2025-04-15 16:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `sample_users`
--

CREATE TABLE `sample_users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `createdDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sample_users`
--

INSERT INTO `sample_users` (`id`, `firstName`, `lastName`, `gender`, `address`, `city`, `phone`, `email`, `status`, `createdDate`) VALUES
(1, 'Самуил', 'Bayer', 'female', 'наб. Промышленная, 334', 'Внуково (м', '501-359-218', 'Samuil.Romaguera@yah', NULL, '2020-01-01 09:09:00'),
(2, 'Василиса', 'Goldner', 'female', 'улица Ростовская, 741', 'Абинск', '501-019-527', 'Lyubomir.Ebert@mail.', NULL, '2020-01-01 09:10:00'),
(3, 'Агап', 'Schinner', 'female', 'Ягодная аллея, 727', 'Щелково', '501-204-169', 'Bazhen.Metz63@hotmai', NULL, '2020-01-01 09:11:00'),
(4, 'Кондрат', 'Jerde', 'male', 'Красная улица, 151', 'Любань', '501-804-384', 'Evlampii.Watsica24@y', NULL, '2020-01-01 09:12:00'),
(5, 'Кондратий', 'Mitchell', 'female', 'улица Виноградная, 459', 'Октябрьско', '501-844-696', 'Ostromir88@mail.ru', NULL, '2020-01-01 09:13:00'),
(6, 'Радован', 'Spencer', 'male', 'ал. Красноармейская, 404', 'Курильск', '501-709-336', 'Vadim.Barton@hotmail', NULL, '2020-01-01 09:14:00'),
(7, 'Ия', 'Nader', 'male', 'Черемуховая аллея, 594', 'Нижнеудинс', '501-789-170', 'Narkis99@ya.ru', NULL, '2020-01-01 09:15:00'),
(66, 'Ирина', 'Huel', 'male', 'Производственная набережная, 247', 'Набережные', '501-749-586', 'Evgenii77@ya.ru', NULL, '2020-01-01 10:14:00'),
(67, 'Демид', 'Douglas', 'male', 'аллея Строительная, 618', 'Кимры', '501-222-788', 'Klavdiya_Dicki@ya.ru', NULL, '2020-01-01 10:15:00'),
(68, 'Каллистрат', 'Daniel', 'female', 'Парковая аллея, 855', 'Чермоз', '501-931-982', 'Averkii74@mail.ru', NULL, '2020-01-01 10:16:00'),
(69, 'Кирилл', 'Daugherty', 'female', 'Лесхозная набережная, 833', 'Сочи', '501-215-309', 'Miroslav_Welch49@yah', NULL, '2020-01-01 10:17:00'),
(70, 'Кир', 'Corwin', 'female', 'пл. Прудная, 301', 'Корсаков', '501-894-624', 'Lev.Langworth@yahoo.', NULL, '2020-01-01 10:18:00'),
(71, 'Артем', 'Bergstrom-Ullrich', 'male', 'улица Крайняя, 691', 'Челябинск', '501-494-597', 'Erofei82@yahoo.com', NULL, '2020-01-01 10:19:00'),
(72, 'Измаил', 'Reichel', 'female', 'Мельничная пл., 481', 'Коломна', '501-251-590', 'Mina78@ya.ru', NULL, '2020-01-01 10:20:00'),
(73, 'Никифор', 'Mayer', 'male', 'Кленовая улица, 923', 'Россошь', '501-659-768', 'Darukya.Nader@mail.r', NULL, '2020-01-01 10:21:00'),
(74, 'Лев', 'Vandervort', 'male', 'площадь Зеленая, 475', 'Сальск', '501-900-209', 'Lyubim17@ya.ru', NULL, '2020-01-01 10:22:00'),
(75, 'Евлампий', 'Strosin', 'male', 'Ивановская наб., 279', 'Оленек', '501-299-870', 'Tikhon43@yandex.ru', NULL, '2020-01-01 10:23:00'),
(76, 'Терентий', 'Lehner', 'female', 'ал. Ставропольская, 860', 'Домодедово', '501-786-999', 'Lukiya_Cummings68@ya', NULL, '2020-01-01 10:24:00'),
(77, 'Софон', 'Purdy', 'female', 'Ставропольская площадь, 628', 'Магас', '501-675-490', 'Sergei.Schuppe-Gutko', NULL, '2020-01-01 10:25:00'),
(78, 'Митофан', 'Bednar', 'male', 'Луговая площадь, 407', 'Тольятти', '501-438-264', 'Maiya.Friesen80@mail', NULL, '2020-01-01 10:26:00'),
(79, 'Панфил', 'Hayes', 'male', 'Владимирская площадь, 165', 'Шуя', '501-769-876', 'Prokofii_Howe@yahoo.', NULL, '2020-01-01 10:27:00'),
(80, 'Лукьян', 'McGlynn', 'female', 'набережная Фабричная, 617', 'Видное', '501-655-700', 'Irina_Schmeler57@yan', NULL, '2020-01-01 10:28:00'),
(81, 'Чеслав', 'Bauch', 'male', 'аллея Дальняя, 281', 'Луга', '501-658-748', 'Agap.Reynolds@mail.r', NULL, '2020-01-01 10:29:00'),
(82, 'Родион', 'Graham', 'male', 'Овражная ул., 335', 'Смирных', '501-868-375', 'Luka.Jenkins@yandex.', NULL, '2020-01-01 10:30:00'),
(83, 'Кира', 'Hammes', 'male', 'пл. Кузнецкая, 626', 'Завьялиха', '501-384-041', 'Antonina_Pollich5@ma', NULL, '2020-01-01 10:31:00'),
(84, 'Вышеслав', 'Robel', 'female', 'Социалистическая пл., 822', 'Соликамск', '501-118-699', 'Svetozar59@gmail.com', NULL, '2020-01-01 10:32:00'),
(89, 'Яков', 'Shields', 'female', 'Казачья набережная, 778', 'Ямбург', '501-437-912', 'Avksentii_Cummerata5', NULL, '2020-01-01 10:37:00'),
(90, 'Эрнст', 'Ryan-Powlowski', 'male', 'набережная Геологическая, 734', 'Беслан', '501-563-026', 'Arsenii_Kshlerin@gma', NULL, '2020-01-01 10:38:00'),
(91, 'Владислав', 'Berge', 'female', 'аллея Комсомольская, 315', 'Нефедова', '501-622-803', 'Aggei59@ya.ru', NULL, '2020-01-01 10:39:00'),
(92, 'Капитон', 'Konopelski', 'male', 'набережная Харьковская, 575', 'Оймякон', '501-372-897', 'Lazaruk42@yandex.ru', NULL, '2020-01-01 10:40:00'),
(93, 'Лев', 'Becker', 'male', 'Озерная пл., 477', 'Псков', '501-072-147', 'Klavdiya56@yahoo.com', NULL, '2020-01-01 10:41:00'),
(94, 'Никанор', 'Maggio', 'male', 'Байкальская наб., 213', 'Белорецк', '501-074-243', 'Nonna.Larkin@ya.ru', NULL, '2020-01-01 10:42:00'),
(95, 'Вячеслав', 'Schneider', 'male', 'Покровская улица, 517', 'Камышлов', '501-991-008', 'Aleksandra.Hermann@h', NULL, '2020-01-01 10:43:00'),
(96, 'Филарет', 'Prohaska', 'male', 'площадь Моховая, 632', 'Киренск', '501-640-317', 'Avgust45@yahoo.com', NULL, '2020-01-01 10:44:00'),
(97, 'Аникей', 'Will', 'female', 'Коллективная наб., 146', 'Петухово', '501-071-424', 'Svyatoslav28@ya.ru', NULL, '2020-01-01 10:45:00'),
(98, 'Ерофей', 'Abbott', 'male', 'ул. Портовая, 368', 'Кош-Агач', '501-249-348', 'Maiya.Roberts@hotmai', NULL, '2020-01-01 10:46:00'),
(99, 'Галина', 'Torphy-Roberts', 'female', 'Набережная аллея, 597', 'Баксан', '501-025-759', 'Izyaslav_Ondricka@gm', NULL, '2020-01-01 10:47:00'),
(100, 'Лавр', 'Kautzer', 'male', 'набережная Советская, 509', 'Мурманск', '501-903-641', 'Pankrat76@yandex.ru', NULL, '2020-01-01 10:48:00'),
(101, 'Герасим', 'Blanda', 'male', 'Проточная набережная, 278', 'Тольятти', '501-758-418', 'Ruslan.Pollich@yahoo', NULL, '2020-01-01 10:49:00'),
(102, 'Севастьян', 'Rohan', 'male', 'ул. Пионерская, 522', 'Киржач', '501-539-010', 'Ladislav97@ya.ru', NULL, '2020-01-01 10:50:00'),
(103, 'Ладимир', 'White', 'female', 'набережная Малиновая, 810', 'Новый Оско', '501-224-815', 'Bronislav_Sawayn22@y', NULL, '2020-01-01 10:51:00'),
(104, 'Федор', 'McClure', 'female', 'улица Береговая, 656', 'Тура', '501-845-535', 'Yulian.Rutherford@ya', NULL, '2020-01-01 10:52:00'),
(105, 'Герасим', 'Flatley-Crooks', 'male', 'Мелиоративная площадь, 121', 'Приозерск', '501-371-664', 'Sofon50@hotmail.com', NULL, '2020-01-01 10:53:00'),
(106, 'Остромир', 'Runte', 'female', 'улица Орловская, 201', 'Кировск (Л', '501-169-225', 'Yulii_Rowe47@yahoo.c', NULL, '2020-01-01 10:54:00'),
(67, 'Демид', 'Douglas', 'male', 'аллея Строительная, 618', 'Кимры', '501-222-788', 'Klavdiya_Dicki@ya.ru', NULL, '2020-01-01 10:15:00'),
(68, 'Каллистрат', 'Daniel', 'female', 'Парковая аллея, 855', 'Чермоз', '501-931-982', 'Averkii74@mail.ru', NULL, '2020-01-01 10:16:00'),
(71, 'Артем', 'Bergstrom-Ullrich', 'male', 'улица Крайняя, 691', 'Челябинск', '501-494-597', 'Erofei82@yahoo.com', NULL, '2020-01-01 10:19:00'),
(72, 'Измаил', 'Reichel', 'female', 'Мельничная пл., 481', 'Коломна', '501-251-590', 'Mina78@ya.ru', NULL, '2020-01-01 10:20:00'),
(74, 'Лев', 'Vandervort', 'male', 'площадь Зеленая, 475', 'Сальск', '501-900-209', 'Lyubim17@ya.ru', NULL, '2020-01-01 10:22:00'),
(75, 'Евлампий', 'Strosin', 'male', 'Ивановская наб., 279', 'Оленек', '501-299-870', 'Tikhon43@yandex.ru', NULL, '2020-01-01 10:23:00'),
(84, 'Вышеслав', 'Robel', 'female', 'Социалистическая пл., 822', 'Соликамск', '501-118-699', 'Svetozar59@gmail.com', NULL, '2020-01-01 10:32:00'),
(91, 'Владислав', 'Berge', 'female', 'аллея Комсомольская, 315', 'Нефедова', '501-622-803', 'Aggei59@ya.ru', NULL, '2020-01-01 10:39:00'),
(92, 'Капитон', 'Konopelski', 'male', 'набережная Харьковская, 575', 'Оймякон', '501-372-897', 'Lazaruk42@yandex.ru', NULL, '2020-01-01 10:40:00'),
(93, 'Лев', 'Becker', 'male', 'Озерная пл., 477', 'Псков', '501-072-147', 'Klavdiya56@yahoo.com', NULL, '2020-01-01 10:41:00'),
(94, 'Никанор', 'Maggio', 'male', 'Байкальская наб., 213', 'Белорецк', '501-074-243', 'Nonna.Larkin@ya.ru', NULL, '2020-01-01 10:42:00'),
(96, 'Филарет', 'Prohaska', 'male', 'площадь Моховая, 632', 'Киренск', '501-640-317', 'Avgust45@yahoo.com', NULL, '2020-01-01 10:44:00'),
(97, 'Аникей', 'Will', 'female', 'Коллективная наб., 146', 'Петухово', '501-071-424', 'Svyatoslav28@ya.ru', NULL, '2020-01-01 10:45:00'),
(100, 'Лавр', 'Kautzer', 'male', 'набережная Советская, 509', 'Мурманск', '501-903-641', 'Pankrat76@yandex.ru', NULL, '2020-01-01 10:48:00'),
(102, 'Севастьян', 'Rohan', 'male', 'ул. Пионерская, 522', 'Киржач', '501-539-010', 'Ladislav97@ya.ru', NULL, '2020-01-01 10:50:00'),
(105, 'Герасим', 'Flatley-Crooks', 'male', 'Мелиоративная площадь, 121', 'Приозерск', '501-371-664', 'Sofon50@hotmail.com', NULL, '2020-01-01 10:53:00'),
(5, 'Кондратий', 'Mitchell', 'female', 'улица Виноградная, 459', 'Октябрьское (Челяб.)', '501-844-696', 'Ostromir88@mail.ru', NULL, '2020-01-01 09:13:00'),
(7, 'Ия', 'Nader', 'male', 'Черемуховая аллея, 594', 'Нижнеудинск', '501-789-170', 'Narkis99@ya.ru', NULL, '2020-01-01 09:15:00'),
(66, 'Ирина', 'Huel', 'male', 'Производственная набережная, 247', 'Набережные Челны', '501-749-586', 'Evgenii77@ya.ru', NULL, '2020-01-01 10:14:00'),
(67, 'Демид', 'Douglas', 'male', 'аллея Строительная, 618', 'Кимры', '501-222-788', 'Klavdiya_Dicki@ya.ru', NULL, '2020-01-01 10:15:00'),
(68, 'Каллистрат', 'Daniel', 'female', 'Парковая аллея, 855', 'Чермоз', '501-931-982', 'Averkii74@mail.ru', NULL, '2020-01-01 10:16:00'),
(71, 'Артем', 'Bergstrom-Ullrich', 'male', 'улица Крайняя, 691', 'Челябинск', '501-494-597', 'Erofei82@yahoo.com', NULL, '2020-01-01 10:19:00'),
(72, 'Измаил', 'Reichel', 'female', 'Мельничная пл., 481', 'Коломна', '501-251-590', 'Mina78@ya.ru', NULL, '2020-01-01 10:20:00'),
(74, 'Лев', 'Vandervort', 'male', 'площадь Зеленая, 475', 'Сальск', '501-900-209', 'Lyubim17@ya.ru', NULL, '2020-01-01 10:22:00'),
(75, 'Евлампий', 'Strosin', 'male', 'Ивановская наб., 279', 'Оленек', '501-299-870', 'Tikhon43@yandex.ru', NULL, '2020-01-01 10:23:00'),
(84, 'Вышеслав', 'Robel', 'female', 'Социалистическая пл., 822', 'Соликамск', '501-118-699', 'Svetozar59@gmail.com', NULL, '2020-01-01 10:32:00'),
(91, 'Владислав', 'Berge', 'female', 'аллея Комсомольская, 315', 'Нефедова', '501-622-803', 'Aggei59@ya.ru', NULL, '2020-01-01 10:39:00'),
(92, 'Капитон', 'Konopelski', 'male', 'набережная Харьковская, 575', 'Оймякон', '501-372-897', 'Lazaruk42@yandex.ru', NULL, '2020-01-01 10:40:00'),
(93, 'Лев', 'Becker', 'male', 'Озерная пл., 477', 'Псков', '501-072-147', 'Klavdiya56@yahoo.com', NULL, '2020-01-01 10:41:00'),
(94, 'Никанор', 'Maggio', 'male', 'Байкальская наб., 213', 'Белорецк', '501-074-243', 'Nonna.Larkin@ya.ru', NULL, '2020-01-01 10:42:00'),
(96, 'Филарет', 'Prohaska', 'male', 'площадь Моховая, 632', 'Киренск', '501-640-317', 'Avgust45@yahoo.com', NULL, '2020-01-01 10:44:00'),
(97, 'Аникей', 'Will', 'female', 'Коллективная наб., 146', 'Петухово', '501-071-424', 'Svyatoslav28@ya.ru', NULL, '2020-01-01 10:45:00'),
(100, 'Лавр', 'Kautzer', 'male', 'набережная Советская, 509', 'Мурманск', '501-903-641', 'Pankrat76@yandex.ru', NULL, '2020-01-01 10:48:00'),
(102, 'Севастьян', 'Rohan', 'male', 'ул. Пионерская, 522', 'Киржач', '501-539-010', 'Ladislav97@ya.ru', NULL, '2020-01-01 10:50:00'),
(105, 'Герасим', 'Flatley-Crooks', 'male', 'Мелиоративная площадь, 121', 'Приозерск', '501-371-664', 'Sofon50@hotmail.com', NULL, '2020-01-01 10:53:00'),
(1, 'Самуил', 'Bayer', 'female', 'наб. Промышленная, 334', 'Внуково (метеост.)', '501-359-218', 'Samuil.Romaguera@yahoo.com', NULL, '2020-01-01 09:09:00'),
(2, 'Василиса', 'Goldner', 'female', 'улица Ростовская, 741', 'Абинск', '501-019-527', 'Lyubomir.Ebert@mail.ru', NULL, '2020-01-01 09:10:00'),
(3, 'Агап', 'Schinner', 'female', 'Ягодная аллея, 727', 'Щелково', '501-204-169', 'Bazhen.Metz63@hotmail.com', NULL, '2020-01-01 09:11:00'),
(4, 'Кондрат', 'Jerde', 'male', 'Красная улица, 151', 'Любань', '501-804-384', 'Evlampii.Watsica24@yahoo.com', NULL, '2020-01-01 09:12:00'),
(5, 'Кондратий', 'Mitchell', 'female', 'улица Виноградная, 459', 'Октябрьское (Челяб.)', '501-844-696', 'Ostromir88@mail.ru', NULL, '2020-01-01 09:13:00'),
(6, 'Радован', 'Spencer', 'male', 'ал. Красноармейская, 404', 'Курильск', '501-709-336', 'Vadim.Barton@hotmail.com', NULL, '2020-01-01 09:14:00'),
(7, 'Ия', 'Nader', 'male', 'Черемуховая аллея, 594', 'Нижнеудинск', '501-789-170', 'Narkis99@ya.ru', NULL, '2020-01-01 09:15:00'),
(66, 'Ирина', 'Huel', 'male', 'Производственная набережная, 247', 'Набережные Челны', '501-749-586', 'Evgenii77@ya.ru', NULL, '2020-01-01 10:14:00'),
(67, 'Демид', 'Douglas', 'male', 'аллея Строительная, 618', 'Кимры', '501-222-788', 'Klavdiya_Dicki@ya.ru', NULL, '2020-01-01 10:15:00'),
(68, 'Каллистрат', 'Daniel', 'female', 'Парковая аллея, 855', 'Чермоз', '501-931-982', 'Averkii74@mail.ru', NULL, '2020-01-01 10:16:00'),
(69, 'Кирилл', 'Daugherty', 'female', 'Лесхозная набережная, 833', 'Сочи', '501-215-309', 'Miroslav_Welch49@yahoo.com', NULL, '2020-01-01 10:17:00'),
(70, 'Кир', 'Corwin', 'female', 'пл. Прудная, 301', 'Корсаков', '501-894-624', 'Lev.Langworth@yahoo.com', NULL, '2020-01-01 10:18:00'),
(71, 'Артем', 'Bergstrom-Ullrich', 'male', 'улица Крайняя, 691', 'Челябинск', '501-494-597', 'Erofei82@yahoo.com', NULL, '2020-01-01 10:19:00'),
(72, 'Измаил', 'Reichel', 'female', 'Мельничная пл., 481', 'Коломна', '501-251-590', 'Mina78@ya.ru', NULL, '2020-01-01 10:20:00'),
(73, 'Никифор', 'Mayer', 'male', 'Кленовая улица, 923', 'Россошь', '501-659-768', 'Darukya.Nader@mail.ru', NULL, '2020-01-01 10:21:00'),
(74, 'Лев', 'Vandervort', 'male', 'площадь Зеленая, 475', 'Сальск', '501-900-209', 'Lyubim17@ya.ru', NULL, '2020-01-01 10:22:00'),
(75, 'Евлампий', 'Strosin', 'male', 'Ивановская наб., 279', 'Оленек', '501-299-870', 'Tikhon43@yandex.ru', NULL, '2020-01-01 10:23:00'),
(76, 'Терентий', 'Lehner', 'female', 'ал. Ставропольская, 860', 'Домодедово', '501-786-999', 'Lukiya_Cummings68@yahoo.com', NULL, '2020-01-01 10:24:00'),
(77, 'Софон', 'Purdy', 'female', 'Ставропольская площадь, 628', 'Магас', '501-675-490', 'Sergei.Schuppe-Gutkowski@ya.ru', NULL, '2020-01-01 10:25:00'),
(78, 'Митофан', 'Bednar', 'male', 'Луговая площадь, 407', 'Тольятти', '501-438-264', 'Maiya.Friesen80@mail.ru', NULL, '2020-01-01 10:26:00'),
(79, 'Панфил', 'Hayes', 'male', 'Владимирская площадь, 165', 'Шуя', '501-769-876', 'Prokofii_Howe@yahoo.com', NULL, '2020-01-01 10:27:00'),
(80, 'Лукьян', 'McGlynn', 'female', 'набережная Фабричная, 617', 'Видное', '501-655-700', 'Irina_Schmeler57@yandex.ru', NULL, '2020-01-01 10:28:00'),
(81, 'Чеслав', 'Bauch', 'male', 'аллея Дальняя, 281', 'Луга', '501-658-748', 'Agap.Reynolds@mail.ru', NULL, '2020-01-01 10:29:00'),
(82, 'Родион', 'Graham', 'male', 'Овражная ул., 335', 'Смирных', '501-868-375', 'Luka.Jenkins@yandex.ru', NULL, '2020-01-01 10:30:00'),
(83, 'Кира', 'Hammes', 'male', 'пл. Кузнецкая, 626', 'Завьялиха', '501-384-041', 'Antonina_Pollich5@mail.ru', NULL, '2020-01-01 10:31:00'),
(84, 'Вышеслав', 'Robel', 'female', 'Социалистическая пл., 822', 'Соликамск', '501-118-699', 'Svetozar59@gmail.com', NULL, '2020-01-01 10:32:00'),
(89, 'Яков', 'Shields', 'female', 'Казачья набережная, 778', 'Ямбург', '501-437-912', 'Avksentii_Cummerata54@mail.ru', NULL, '2020-01-01 10:37:00'),
(90, 'Эрнст', 'Ryan-Powlowski', 'male', 'набережная Геологическая, 734', 'Беслан', '501-563-026', 'Arsenii_Kshlerin@gmail.com', NULL, '2020-01-01 10:38:00'),
(91, 'Владислав', 'Berge', 'female', 'аллея Комсомольская, 315', 'Нефедова', '501-622-803', 'Aggei59@ya.ru', NULL, '2020-01-01 10:39:00'),
(92, 'Капитон', 'Konopelski', 'male', 'набережная Харьковская, 575', 'Оймякон', '501-372-897', 'Lazaruk42@yandex.ru', NULL, '2020-01-01 10:40:00'),
(93, 'Лев', 'Becker', 'male', 'Озерная пл., 477', 'Псков', '501-072-147', 'Klavdiya56@yahoo.com', NULL, '2020-01-01 10:41:00'),
(94, 'Никанор', 'Maggio', 'male', 'Байкальская наб., 213', 'Белорецк', '501-074-243', 'Nonna.Larkin@ya.ru', NULL, '2020-01-01 10:42:00'),
(95, 'Вячеслав', 'Schneider', 'male', 'Покровская улица, 517', 'Камышлов', '501-991-008', 'Aleksandra.Hermann@hotmail.com', NULL, '2020-01-01 10:43:00'),
(96, 'Филарет', 'Prohaska', 'male', 'площадь Моховая, 632', 'Киренск', '501-640-317', 'Avgust45@yahoo.com', NULL, '2020-01-01 10:44:00'),
(97, 'Аникей', 'Will', 'female', 'Коллективная наб., 146', 'Петухово', '501-071-424', 'Svyatoslav28@ya.ru', NULL, '2020-01-01 10:45:00'),
(98, 'Ерофей', 'Abbott', 'male', 'ул. Портовая, 368', 'Кош-Агач', '501-249-348', 'Maiya.Roberts@hotmail.com', NULL, '2020-01-01 10:46:00'),
(99, 'Галина', 'Torphy-Roberts', 'female', 'Набережная аллея, 597', 'Баксан', '501-025-759', 'Izyaslav_Ondricka@gmail.com', NULL, '2020-01-01 10:47:00'),
(100, 'Лавр', 'Kautzer', 'male', 'набережная Советская, 509', 'Мурманск', '501-903-641', 'Pankrat76@yandex.ru', NULL, '2020-01-01 10:48:00'),
(101, 'Герасим', 'Blanda', 'male', 'Проточная набережная, 278', 'Тольятти', '501-758-418', 'Ruslan.Pollich@yahoo.com', NULL, '2020-01-01 10:49:00'),
(102, 'Севастьян', 'Rohan', 'male', 'ул. Пионерская, 522', 'Киржач', '501-539-010', 'Ladislav97@ya.ru', NULL, '2020-01-01 10:50:00'),
(103, 'Ладимир', 'White', 'female', 'набережная Малиновая, 810', 'Новый Оскол', '501-224-815', 'Bronislav_Sawayn22@ya.ru', NULL, '2020-01-01 10:51:00'),
(104, 'Федор', 'McClure', 'female', 'улица Береговая, 656', 'Тура', '501-845-535', 'Yulian.Rutherford@yandex.ru', NULL, '2020-01-01 10:52:00'),
(105, 'Герасим', 'Flatley-Crooks', 'male', 'Мелиоративная площадь, 121', 'Приозерск', '501-371-664', 'Sofon50@hotmail.com', NULL, '2020-01-01 10:53:00'),
(106, 'Остромир', 'Runte', 'female', 'улица Орловская, 201', 'Кировск (Ленин.)', '501-169-225', 'Yulii_Rowe47@yahoo.com', NULL, '2020-01-01 10:54:00'),
(1, 'Самуил', 'Bayer', 'female', 'наб. Промышленная, 334', 'Внуково (метеост.)', '501-359-218', 'Samuil.Romaguera@yahoo.com', NULL, '2020-01-01 09:09:00'),
(2, 'Василиса', 'Goldner', 'female', 'улица Ростовская, 741', 'Абинск', '501-019-527', 'Lyubomir.Ebert@mail.ru', NULL, '2020-01-01 09:10:00'),
(3, 'Агап', 'Schinner', 'female', 'Ягодная аллея, 727', 'Щелково', '501-204-169', 'Bazhen.Metz63@hotmail.com', NULL, '2020-01-01 09:11:00'),
(4, 'Кондрат', 'Jerde', 'male', 'Красная улица, 151', 'Любань', '501-804-384', 'Evlampii.Watsica24@yahoo.com', NULL, '2020-01-01 09:12:00'),
(5, 'Кондратий', 'Mitchell', 'female', 'улица Виноградная, 459', 'Октябрьское (Челяб.)', '501-844-696', 'Ostromir88@mail.ru', NULL, '2020-01-01 09:13:00'),
(6, 'Радован', 'Spencer', 'male', 'ал. Красноармейская, 404', 'Курильск', '501-709-336', 'Vadim.Barton@hotmail.com', NULL, '2020-01-01 09:14:00'),
(7, 'Ия', 'Nader', 'male', 'Черемуховая аллея, 594', 'Нижнеудинск', '501-789-170', 'Narkis99@ya.ru', NULL, '2020-01-01 09:15:00'),
(8, 'Венедикт', 'O\'Kon', 'male', 'пл. Дальняя, 691', 'Юрюзань', '501-736-319', 'Ulukyana56@mail.ru', NULL, '2020-01-01 09:16:00'),
(9, 'Олег', 'Mertz', 'male', 'Береговая площадь, 837', 'Тамбов', '501-288-675', 'Nikodim_Jones83@ya.ru', NULL, '2020-01-01 09:17:00'),
(10, 'Updated User', 'Updated User', 'female', 'Космическая наб., 881', 'Владивосток', '501-121-718', 'Florentin26@ya.ru', NULL, '2020-01-01 09:18:00'),
(11, 'Платон', 'Jacobson', 'male', 'ал. Мостовая, 880', 'Октябрьский (Башк.)', '501-691-057', 'Kondrat_Langosh@yandex.ru', NULL, '2020-01-01 09:19:00'),
(12, 'Василиса', 'Yundt', 'female', 'Полярная площадь, 940', 'Снежинск', '501-488-724', 'Pankratii.Feeney95@gmail.com', NULL, '2020-01-01 09:20:00'),
(13, 'Родион', 'McDermott', 'female', 'Крайняя ал., 544', 'Ростов', '501-511-092', 'Dobroslav_Gusikowski@yahoo.com', NULL, '2020-01-01 09:21:00'),
(14, 'Феофан', 'Farrell', 'male', 'Мостовая пл., 712', 'Белый Яр (Томск.)', '501-153-077', 'Taisiya63@gmail.com', NULL, '2020-01-01 09:22:00'),
(15, 'Марк', 'Kemmer', 'female', 'аллея Васильковая, 312', 'Воскресенск', '501-992-764', 'Ladislav35@hotmail.com', NULL, '2020-01-01 09:23:00'),
(16, 'Ростислав', 'Ziemann', 'male', 'аллея Гражданская, 397', 'Малая Вишера', '501-978-847', 'Bronislav17@mail.ru', NULL, '2020-01-01 09:24:00'),
(17, 'Владимир', 'Prosacco', 'female', 'Февральская улица, 743', 'Усть-Джегута', '501-604-194', 'Elena_Hoeger@yandex.ru', NULL, '2020-01-01 09:25:00'),
(18, 'Афанасий', 'Parker', 'female', 'набережная Совхозная, 119', 'Забайкальск', '501-913-100', 'Panfil79@yahoo.com', NULL, '2020-01-01 09:26:00'),
(19, 'Панфил', 'Trantow', 'female', 'аллея Хуторская, 381', 'Валдай', '501-471-420', 'Serafim_Pacocha-Erdman72@yandex.ru', NULL, '2020-01-01 09:27:00'),
(20, 'Модест', 'Torphy', 'male', 'набережная Амурская, 982', 'Тюмень', '501-710-865', 'Sergei1@ya.ru', NULL, '2020-01-01 09:28:00'),
(21, 'Милан', 'Kertzmann', 'female', 'Элеваторная улица, 470', 'Вязьма', '501-432-559', 'Galaktion.Rodriguez57@gmail.com', NULL, '2020-01-01 09:29:00'),
(22, 'Федосий', 'Russel', 'female', 'Ольховая пл., 121', 'Невинномысск', '501-074-159', 'Emmanuil.Huels@yandex.ru', NULL, '2020-01-01 09:30:00'),
(23, 'Валентина', 'Adams-Rosenbaum', 'female', 'ал. Придорожная, 262', 'Дербент', '501-918-735', 'Feoktist_Conroy-Steuber@yahoo.com', NULL, '2020-01-01 09:31:00'),
(24, 'Афанасий', 'Fadel-Dietrich', 'female', 'Сплавная пл., 230', 'Александровск-Сахалинский', '501-291-882', 'Faina62@mail.ru', NULL, '2020-01-01 09:32:00'),
(25, 'Святополк', 'Feest', 'female', 'Высотная аллея, 211', 'Заводоуковск', '501-706-130', 'Nina_Metz@ya.ru', NULL, '2020-01-01 09:33:00'),
(26, 'Ульяна', 'Keebler', 'female', 'ал. Севастопольская, 219', 'Калуга', '501-056-059', 'Zakhar.Sanford89@yahoo.com', NULL, '2020-01-01 09:34:00'),
(27, 'Всемил', 'Roob-Lockman', 'male', 'наб. Олимпийская, 752', 'Далматово', '501-708-069', 'Valerii42@yandex.ru', NULL, '2020-01-01 09:35:00'),
(28, 'Исай', 'Abshire', 'male', 'наб. Байкальская, 529', 'Соль-Илецк', '501-058-933', 'Nina_Wiza@ya.ru', NULL, '2020-01-01 09:36:00'),
(29, 'Ювеналий', 'Beier', 'female', 'улица Иркутская, 284', 'Шуя', '501-802-859', 'Efim60@yahoo.com', NULL, '2020-01-01 09:37:00'),
(30, 'Мина', 'Murray', 'female', 'Казанская ул., 867', 'Красноуральск', '501-544-104', 'Firs_Walsh45@hotmail.com', NULL, '2020-01-01 09:38:00'),
(31, 'Филипп', 'Hahn', 'male', 'аллея Угольная, 680', 'Воскресенск', '501-580-429', 'Naina.Streich21@mail.ru', NULL, '2020-01-01 09:39:00'),
(32, 'Ираклий', 'Maggio', 'female', 'набережная Учительская, 774', 'Новый Оскол', '501-144-810', 'Spiridon_McDermott@ya.ru', NULL, '2020-01-01 09:40:00'),
(33, 'Кузьма', 'Langosh', 'male', 'набережная Интернациональная, 102', 'Курск', '501-704-724', 'Stanislav_Fahey69@mail.ru', NULL, '2020-01-01 09:41:00'),
(34, 'Вацлав', 'Bayer', 'female', 'Красноармейская ул., 353', 'Мураши', '501-609-234', 'Eleonora_Blanda77@ya.ru', NULL, '2020-01-01 09:42:00'),
(35, 'Сергей', 'Crona', 'female', 'улица Болотная, 489', 'Ахтубинск', '501-319-894', 'Afinogen_Hudson85@gmail.com', NULL, '2020-01-01 09:43:00'),
(36, 'Александр', 'Kutch', 'female', 'Северная площадь, 863', 'Тулпан', '501-742-464', 'Galaktion_OKeefe78@ya.ru', NULL, '2020-01-01 09:44:00'),
(37, 'Кузьма', 'Hessel', 'female', 'Моховая набережная, 835', 'Сарапул', '501-875-606', 'Leontii_Vandervort8@yahoo.com', NULL, '2020-01-01 09:45:00'),
(38, 'Соломон', 'Bechtelar', 'female', 'Железнодорожная площадь, 815', 'Торжок', '501-946-441', 'Dementii_Heaney78@gmail.com', NULL, '2020-01-01 09:46:00'),
(39, 'Август', 'Haag', 'male', 'ул. Горная, 135', 'Петушки', '501-513-350', 'Prokhor3@gmail.com', NULL, '2020-01-01 09:47:00'),
(40, 'Владимир', 'Kuvalis', 'female', 'ул. Гвардейская, 538', 'Серебряные Пруды', '501-660-610', 'Sila57@hotmail.com', NULL, '2020-01-01 09:48:00'),
(41, 'Виталий', 'Wilkinson', 'male', 'Подлесная набережная, 360', 'Ногинск (Моск.)', '501-673-077', 'Zakhar.McClure51@ya.ru', NULL, '2020-01-01 09:49:00'),
(42, 'Николай', 'Braun', 'male', 'Славянская набережная, 718', 'Рубцовск', '501-814-844', 'Isai.Hagenes@yahoo.com', NULL, '2020-01-01 09:50:00'),
(43, 'Фадей', 'Doyle', 'female', 'Майская площадь, 418', 'Нефтегорск (Самар.)', '501-068-810', 'Onufrii_Schmidt@hotmail.com', NULL, '2020-01-01 09:51:00'),
(44, 'Евсей', 'Reynolds', 'male', 'набережная Брянская, 741', 'Братск', '501-495-748', 'Mefodii_Kozey@hotmail.com', NULL, '2020-01-01 09:52:00'),
(45, 'Марина', 'Rolfson-Schmeler', 'female', 'Студенческая аллея, 893', 'Сибай', '501-053-421', 'Spiridon_Dicki@yahoo.com', NULL, '2020-01-01 09:53:00'),
(46, 'Борислав', 'Welch', 'male', 'Казачья пл., 949', 'Асино', '501-398-730', 'Afanasii_Yundt@ya.ru', NULL, '2020-01-01 09:54:00'),
(47, 'Измаил', 'Gleichner-Mante', 'female', 'набережная Медицинская, 211', 'Соликамск', '501-196-157', 'Ilarion_Spencer@ya.ru', NULL, '2020-01-01 09:55:00'),
(48, 'Феликс', 'Johns', 'male', 'ал. Троицкая, 639', 'Жигулевск', '501-919-590', 'Bronislav.Fahey@mail.ru', NULL, '2020-01-01 09:56:00'),
(49, 'Любомир', 'Jenkins', 'male', 'ал. Казанская, 693', 'Гаврилов-Ям', '501-356-436', 'Viktorin89@yahoo.com', NULL, '2020-01-01 09:57:00'),
(50, 'Гордей', 'Jakubowski', 'female', 'Литейная наб., 872', 'Новочеркасск', '501-262-713', 'Militsa7@yandex.ru', NULL, '2020-01-01 09:58:00'),
(51, 'Тарас', 'Blick', 'male', 'площадь Таманская, 549', 'Кинешма', '501-459-230', 'Artemii14@gmail.com', NULL, '2020-01-01 09:59:00'),
(52, 'Терентий', 'Swift', 'female', 'Шоссейная ал., 240', 'Озеры', '501-195-444', 'Valerukyan.Hamill@gmail.com', NULL, '2020-01-01 10:00:00'),
(53, 'Антонин', 'Kuphal', 'female', 'пл. Киевская, 586', 'Игарка', '501-681-463', 'Demid23@yandex.ru', NULL, '2020-01-01 10:01:00'),
(54, 'Наркис', 'Baumbach', 'male', 'улица Весенняя, 920', 'Череповец', '501-073-633', 'Emmanuil36@mail.ru', NULL, '2020-01-01 10:02:00'),
(55, 'Сигизмунд', 'Lynch', 'female', 'наб. Флотская, 571', 'Усолье Сибирское', '501-322-121', 'Pimen.Bosco24@hotmail.com', NULL, '2020-01-01 10:03:00'),
(56, 'Изот', 'Klein', 'female', 'площадь Красная, 983', 'Каменск-Шахтинский', '501-955-698', 'Galina.Bosco34@yandex.ru', NULL, '2020-01-01 10:04:00'),
(57, 'Митофан', 'Blanda-Turcotte', 'male', 'Саратовская пл., 207', 'Черкесск', '501-122-682', 'Boyan_Hilpert@yahoo.com', NULL, '2020-01-01 10:05:00'),
(58, 'Исидор', 'Marvin', 'male', 'Абрикосовая наб., 172', 'Стерлитамак', '501-822-307', 'Gordei21@yandex.ru', NULL, '2020-01-01 10:06:00'),
(59, 'Касьян', 'Upton', 'male', 'улица Линейная, 449', 'Звенигород', '501-857-629', 'Larisa8@hotmail.com', NULL, '2020-01-01 10:07:00'),
(86, 'Аггей', 'Dickens', 'male', 'наб. Цветочная, 970', 'Кондопога', '501-503-087', 'Natan.Morissette@gmail.com', NULL, '2020-01-01 10:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `social` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `Name`, `Surname`, `avatar`, `social`) VALUES
(1, 'alex@inbox.lv', 'Qwerty12345', 'Alex', 'Ross', 'https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png', ''),
(2, 'vitaly@inbox.lv', 'Qwerty12345', 'Vitālijs', 'Korabeļņikovs', 'https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
