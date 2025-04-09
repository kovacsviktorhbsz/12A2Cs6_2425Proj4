-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 08. 09:50
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gitar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcsolo`
--

CREATE TABLE `kapcsolo` (
  `muveszID` int(11) NOT NULL,
  `zenekarID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kapcsolo`
--

INSERT INTO `kapcsolo` (`muveszID`, `zenekarID`) VALUES
(2, 35),
(4, 28),
(12, 11),
(18, 1),
(20, 32),
(25, 47),
(25, 48),
(26, 22),
(29, 72),
(30, 52),
(31, 19),
(31, 27),
(37, 20),
(42, 66),
(43, 20),
(44, 51),
(46, 49),
(49, 3),
(50, 81),
(55, 9),
(55, 12),
(55, 14),
(55, 75),
(57, 4),
(58, 24),
(60, 41),
(64, 67),
(64, 78),
(65, 73),
(67, 39),
(68, 63),
(68, 65),
(69, 70),
(69, 75),
(70, 62),
(71, 42),
(74, 36),
(74, 75),
(77, 2),
(79, 68),
(80, 37),
(80, 57),
(81, 56),
(83, 67),
(86, 16),
(91, 25),
(91, 29),
(95, 72),
(98, 62),
(99, 39),
(100, 34),
(103, 44),
(109, 1),
(112, 15),
(113, 30),
(114, 79),
(115, 40),
(117, 80),
(118, 68),
(119, 72),
(120, 63),
(122, 50),
(125, 19),
(125, 45),
(125, 58),
(125, 76),
(129, 31),
(129, 59),
(130, 21),
(137, 74),
(138, 26),
(138, 69),
(139, 18),
(140, 83),
(144, 54),
(145, 10),
(147, 8),
(147, 13),
(147, 53),
(148, 33),
(150, 23),
(150, 43),
(151, 17),
(151, 70),
(151, 72),
(153, 60),
(156, 71),
(157, 23),
(157, 82),
(160, 84),
(161, 61),
(162, 26),
(162, 64),
(163, 13),
(166, 51),
(171, 5),
(171, 19),
(171, 27),
(171, 38),
(175, 19),
(175, 76),
(175, 77),
(178, 7),
(179, 55),
(185, 6),
(185, 46),
(187, 85),
(190, 86);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `muvesz`
--

CREATE TABLE `muvesz` (
  `id` int(11) NOT NULL,
  `muveszNev` varchar(24) NOT NULL,
  `stilusID` int(11) NOT NULL,
  `nemzetiseg` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `muvesz`
--

INSERT INTO `muvesz` (`id`, `muveszNev`, `stilusID`, `nemzetiseg`) VALUES
(1, 'Abel Carlevaro', 5, NULL),
(2, 'Ace Frehley', 8, 'amerikai'),
(3, 'Adamo Kocana', 4, NULL),
(4, 'Adrian Smith', 6, 'angol'),
(5, 'AG Weinberger', 1, NULL),
(6, 'Agustín Barrios', 5, 'paraguayi'),
(7, 'Al Di Meola', 3, 'amerikai'),
(8, 'Alapi István', 8, 'magyar'),
(9, 'Albert King', 1, 'amerikai'),
(10, 'Albert Lee', 2, 'angol'),
(11, 'Alberto Ponce', 5, NULL),
(12, 'Alexi Laiho', 6, 'finn'),
(13, 'Alexis Korner', 1, 'brit'),
(14, 'Alirio Diaz', 5, NULL),
(15, 'Allan Holdsworth', 3, 'brit'),
(16, 'Alvaro Pieri', 5, NULL),
(17, 'Andrés Segovia', 5, 'spanyol'),
(18, 'Angus Young', 8, 'skót-ausztrál'),
(19, 'Antonio Lauro', 5, NULL),
(20, 'Antti Kokko', 6, NULL),
(21, 'B. B. King', 1, 'amerikai'),
(22, 'Babos Gyula', 3, 'magyar'),
(23, 'Bacsik Elek', 3, 'magyar'),
(24, 'Barney Kessel', 3, 'amerikai'),
(25, 'Bencsik Sándor', 8, 'magyar'),
(26, 'Benji Madden', 8, 'amerikai'),
(27, 'Bernáth Ferenc', 5, 'magyar'),
(28, 'Brad Paisley', 2, 'amerikai'),
(29, 'Brian Jones', 8, 'angol'),
(30, 'Brian May', 8, 'angol'),
(31, 'Bródy János', 8, 'magyar'),
(32, 'Buddy Guy', 1, 'amerikai'),
(33, 'Buddy Holly', 8, 'amerikai'),
(34, 'Carlo Marchione', 5, NULL),
(35, 'Carlos Montoya', 4, NULL),
(36, 'Carlos Santana', 8, 'mexikói'),
(37, 'Chris Shiflett', 8, 'amerikai'),
(38, 'Chuck Berry', 8, 'amerikai'),
(39, 'Costas Cotsiolis', 5, NULL),
(40, 'Csáki András', 5, 'magyar'),
(41, 'Csík Adolf', 5, NULL),
(42, 'Daron Malakian', 6, 'örmény-amerikai'),
(43, 'Dave Grohl', 8, 'amerikai'),
(44, 'David Gilmour', 8, 'brit'),
(45, 'David Russell', 5, NULL),
(46, 'Dimebag Darrell', 6, 'amerikai'),
(47, 'Dimitris Fampas', 5, NULL),
(48, 'Django Reinhardt', 3, 'roma'),
(49, 'Doyle Bramhall II', 1, 'amerikai'),
(50, 'Eddie Van Halen', 8, 'holland-amerikai'),
(51, 'Eichinger Tibor', 3, 'magyar'),
(52, 'Elvis Presley', 8, 'amerikai'),
(53, 'Emilio Pujol', 5, NULL),
(54, 'Eötvös József', 5, 'magyar'),
(55, 'Eric Clapton', 1, 'brit'),
(56, 'Eric Johnson', 8, 'amerikai'),
(57, 'Fazekas Ákos', 8, 'magyar'),
(58, 'Fehér Géza', 1, 'magyar'),
(59, 'Francisco Tárrega', 5, 'spanyol'),
(60, 'Frank Iero', 8, 'amerikai'),
(61, 'Frank Zappa', 8, 'amerikai'),
(62, 'Gary Moore', 1, 'észak-ír'),
(63, 'George Benson', 3, 'amerikai'),
(64, 'George Harrison', 8, 'brit'),
(65, 'Hank Marvin', 8, 'angol'),
(66, 'James Burton', 2, 'amerikai'),
(67, 'James Hetfield', 6, 'amerikai'),
(68, 'James Root', 6, 'amerikai'),
(69, 'Jeff Beck', 8, 'angol'),
(70, 'Jeff Hanneman', 6, 'amerikai'),
(71, 'Jeff Loomis', 6, 'amerikai'),
(72, 'Jimi Hendrix', 8, 'amerikai'),
(73, 'Jimmie Vaughan', 1, 'amerikai'),
(74, 'Jimmy Page', 8, 'angol'),
(75, 'Joe Diorio', 3, NULL),
(76, 'Joe Pass', 3, 'amerikai'),
(77, 'Joe Perry', 8, 'amerikai'),
(78, 'Joe Satriani', 8, 'amerikai'),
(79, 'Joe Strummer', 7, 'brit'),
(80, 'John 5', 6, 'amerikai'),
(81, 'John Frusciante', 8, 'amerikai'),
(82, 'John Lee Hooker', 1, 'amerikai'),
(83, 'John Lennon', 8, 'angol'),
(84, 'John Mayall', 1, 'angol'),
(85, 'John McLaughlin', 3, 'angol'),
(86, 'John Petrucci', 8, 'amerikai'),
(87, 'John Scofield', 3, 'amerikai'),
(88, 'John Williams', 5, NULL),
(89, 'Johnny Cash', 2, 'amerikai'),
(90, 'Johnny Winter', 1, 'amerikai'),
(91, 'Jorma Kaukonen', 8, NULL),
(92, 'Juan Carmona', 4, NULL),
(93, 'Julian Bream', 5, NULL),
(94, 'Katona Twins', 5, NULL),
(95, 'Keith Richards', 8, 'angol'),
(96, 'Keith Urban', 2, 'ausztrál'),
(97, 'Kenny Burell', 3, NULL),
(98, 'Kerry King', 6, 'amerikai'),
(99, 'Kirk Hammett', 6, 'amerikai'),
(100, 'Kispál András', 8, 'magyar'),
(101, 'Kováts Barna', 5, 'magyar'),
(102, 'Kris Kristofferson', 2, 'amerikai'),
(103, 'Kurt Cobain', 8, 'amerikai'),
(104, 'László Attila', 3, 'magyar'),
(105, 'Lazlo Baliko', 1, NULL),
(106, 'Légrády Péter', 2, 'magyar'),
(107, 'Leo Brouwer', 5, NULL),
(108, 'Les Paul', 3, 'amerikai'),
(109, 'Malcolm Young', 8, 'skót-ausztrál'),
(110, 'Manitas de Plata', 4, NULL),
(111, 'Marco Comandè', 3, NULL),
(112, 'Mark Knopfler', 8, 'brit'),
(113, 'Martin Barre', 8, 'brit'),
(114, 'Matt Heafy', 6, 'amerikai'),
(115, 'Matthew Bellamy', 8, 'angol'),
(116, 'Michael Angelo Batio', 8, 'amerikai'),
(117, 'Mick Box', 8, 'brit'),
(118, 'Mick Jones', 7, NULL),
(119, 'Mick Taylor', 8, 'angol'),
(120, 'Mick Thomson', 6, 'amerikai'),
(121, 'Miguel Llobet', 5, NULL),
(122, 'Mike McCready', 8, 'amerikai'),
(123, 'Mike Oldfield', 8, 'angol'),
(124, 'Mike Stern', 3, 'amerikai'),
(125, 'Móricz Mihály', 8, 'magyar'),
(126, 'Muddy Waters', 1, 'amerikai'),
(127, 'Müller Márió', 5, NULL),
(128, 'Narciso Yepes', 5, 'spanyol'),
(129, 'Neal Schon', 8, NULL),
(130, 'Nick McCarthy', 8, NULL),
(131, 'Pablo Marquez', 5, NULL),
(132, 'Paco de Lucía', 4, 'spanyol'),
(133, 'Paco Peña', 4, NULL),
(134, 'Pat Metheny', 3, 'amerikai'),
(135, 'Pavel Steidl', 5, NULL),
(136, 'Pepé Romero', 4, NULL),
(137, 'Pete Townsend', 8, NULL),
(138, 'Peter Frampton', 8, 'angol-amerikai'),
(139, 'Peter Green', 8, 'angol'),
(140, 'Peter Windtorn Molnar', 6, 'magyar'),
(141, 'Radics Béla', 8, 'magyar'),
(142, 'Ramón Montoya', 4, NULL),
(143, 'Remi Boucher', 5, NULL),
(144, 'Richard Z. Kruspe', 8, 'német'),
(145, 'Richie Sambora', 8, 'amerikai'),
(146, 'Ripoff Raskolnikov', 1, 'osztrák'),
(147, 'Ritchie Blackmore', 8, 'angol'),
(148, 'Robert Fripp', 8, 'brit'),
(149, 'Robert Johnson', 1, 'amerikai'),
(150, 'Robin Finck', 8, 'amerikai'),
(151, 'Ronnie Wood', 8, 'angol'),
(152, 'Rory Gallagher', 8, 'ír'),
(153, 'Rudolf Schenker', 8, 'német'),
(154, 'Sabícas', 4, NULL),
(155, 'Scott Henderson', 3, 'amerikai'),
(156, 'Shane MacGowan', 7, 'ír'),
(157, 'Slash', 8, 'brit-amerikai'),
(158, 'Snétberger Ferenc', 3, 'magyar'),
(159, 'Sonny Terry', 1, NULL),
(160, 'Steve Howe', 8, 'angol'),
(161, 'Steve Jones', 7, 'angol'),
(162, 'Steve Marriott', 8, 'angol'),
(163, 'Steve Morse', 8, 'amerikai'),
(164, 'Steve Vai', 8, 'amerikai-olasz'),
(165, 'Stevie Ray Vaughan', 1, 'amerikai'),
(166, 'Syd Barrett', 8, 'angol'),
(167, 'Szabó Gábor', 3, 'magyar'),
(168, 'Szekeres Tamás', 6, 'magyar'),
(169, 'Szendrey-Karper László', 5, 'magyar'),
(170, 'Szilvágyi Sándor', 5, 'magyar'),
(171, 'Szörényi Levente', 8, 'magyar'),
(172, 'Tátrai Tibor', 8, 'magyar'),
(173, 'Ted Nugent', 8, 'amerikai'),
(174, 'Tilmann Hoppstock', 5, NULL),
(175, 'Tolcsvay László', 8, 'magyar'),
(176, 'Tomatito', 4, NULL),
(177, 'Tommy K. Jr.', 1, NULL),
(178, 'Tony Iommi', 8, 'olasz-angol'),
(179, 'Uwe Lulis', 6, 'német'),
(180, 'Waylon Jennings', 2, 'amerikai'),
(181, 'Wes Montgomery', 3, 'amerikai'),
(182, 'Willie Nelson', 2, 'amerikai'),
(183, 'Yağmur Sarıgül', 8, NULL),
(184, 'Yngwie J. Malmsteen', 8, 'svéd'),
(185, 'Zakk Wylde', 6, 'amerikai'),
(186, 'Zoran Dukic', 5, NULL),
(187, 'Beyoncé', 11, 'amerikai'),
(189, 'Travis Scott', 12, 'amerikai'),
(190, 'Mike Shinoda', 10, 'amerikai'),
(191, '2Pac', 10, 'amerikai');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `stilus`
--

CREATE TABLE `stilus` (
  `id` int(11) NOT NULL,
  `stilusNev` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `stilus`
--

INSERT INTO `stilus` (`id`, `stilusNev`) VALUES
(1, 'blues'),
(2, 'country'),
(3, 'dzsessz'),
(4, 'flamenco'),
(5, 'klasszikus'),
(6, 'metál'),
(7, 'punk'),
(10, 'rap'),
(8, 'rock'),
(11, 'soul'),
(9, 'swing'),
(12, 'trap');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `zenekar`
--

CREATE TABLE `zenekar` (
  `id` int(11) NOT NULL,
  `zenekarNev` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `zenekar`
--

INSERT INTO `zenekar` (`id`, `zenekarNev`) VALUES
(1, 'AC/DC'),
(2, 'Aerosmith'),
(3, 'Arc Angels'),
(4, 'Art of Haven'),
(5, 'Balassa'),
(6, 'Black Label Society'),
(7, 'Black Sabbath'),
(8, 'Blackmore’s Night'),
(9, 'Blind Faith'),
(10, 'Bon Jovi'),
(11, 'Children of Bodom'),
(12, 'Cream'),
(13, 'Deep Purple'),
(14, 'Derek and the Dominos'),
(85, 'Destiny\'s Child'),
(15, 'Dire Straits'),
(16, 'Dream Theater'),
(17, 'Faces'),
(18, 'Fleetwood Mac'),
(19, 'Fonográf'),
(20, 'Foo Fighters'),
(21, 'Franz Ferdinand'),
(22, 'Good Charlotte'),
(23, 'Guns N’ Roses'),
(24, 'Hobo Blues Band'),
(25, 'Hot Tuna'),
(26, 'Humble Pie'),
(27, 'Illés'),
(28, 'Iron Maiden'),
(29, 'Jefferson Airplane'),
(30, 'Jethro Tull'),
(31, 'Journey'),
(32, 'Kalmah'),
(33, 'King Crimson'),
(34, 'Kispál és a Borz'),
(35, 'Kiss'),
(36, 'Led Zeppelin'),
(86, 'Linking Park'),
(37, 'Marilyn Manson'),
(38, 'Mediterrán'),
(39, 'Metallica'),
(40, 'Muse'),
(41, 'My Chemical Romance'),
(42, 'Nevermore'),
(43, 'Nine Inch Nails'),
(44, 'Nirvana'),
(45, 'NO coMMent'),
(46, 'Ozzy Osbourne'),
(47, 'P. Box'),
(48, 'P. Mobil'),
(49, 'Pantera'),
(50, 'Pearl Jam'),
(51, 'Pink Floyd'),
(52, 'Queen'),
(53, 'Rainbow'),
(54, 'Rammstein'),
(55, 'Rebellion'),
(56, 'Red Hot Chili Peppers'),
(57, 'Rob Zombie'),
(58, 'Sakál-Vokál'),
(59, 'Santana'),
(60, 'Scorpions'),
(61, 'Sex Pistols'),
(62, 'Slayer'),
(63, 'Slipknot'),
(64, 'Small Faces'),
(65, 'Stone Sour'),
(66, 'System of a Down'),
(67, 'The Beatles'),
(68, 'The Clash'),
(69, 'The Herd'),
(70, 'The Jeff Beck Group'),
(71, 'The Pogues'),
(72, 'The Rolling Stones'),
(73, 'The Shadows'),
(74, 'The Who'),
(75, 'The Yardbirds'),
(77, 'Tolcsvay-trió'),
(76, 'Tolcsvayék és a Trió'),
(78, 'Traveling Wilburys'),
(79, 'Trivium'),
(80, 'Uriah Heep'),
(81, 'Van Halen'),
(82, 'Velvet Revolver'),
(83, 'Windtorn'),
(84, 'Yes');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kapcsolo`
--
ALTER TABLE `kapcsolo`
  ADD PRIMARY KEY (`muveszID`,`zenekarID`),
  ADD KEY `zenekarID` (`zenekarID`);

--
-- A tábla indexei `muvesz`
--
ALTER TABLE `muvesz`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `muveszNev` (`muveszNev`),
  ADD KEY `stilusID` (`stilusID`);

--
-- A tábla indexei `stilus`
--
ALTER TABLE `stilus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stilusNev` (`stilusNev`);

--
-- A tábla indexei `zenekar`
--
ALTER TABLE `zenekar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zenekarNev` (`zenekarNev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `muvesz`
--
ALTER TABLE `muvesz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT a táblához `stilus`
--
ALTER TABLE `stilus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `zenekar`
--
ALTER TABLE `zenekar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kapcsolo`
--
ALTER TABLE `kapcsolo`
  ADD CONSTRAINT `kapcsolo_ibfk_1` FOREIGN KEY (`muveszID`) REFERENCES `muvesz` (`id`),
  ADD CONSTRAINT `kapcsolo_ibfk_2` FOREIGN KEY (`zenekarID`) REFERENCES `zenekar` (`id`);

--
-- Megkötések a táblához `muvesz`
--
ALTER TABLE `muvesz`
  ADD CONSTRAINT `muvesz_ibfk_1` FOREIGN KEY (`stilusID`) REFERENCES `stilus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
