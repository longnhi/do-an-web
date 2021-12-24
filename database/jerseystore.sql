-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2021 lúc 07:27 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jerseystore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`, `hoten`) VALUES
('admin', '5650e632d6d6a877efc4375ecd39d3ee', 'Nguyễn Nhị Long');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `mahd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sdt` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydat` date NOT NULL,
  `tennguoinhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachinguoinhan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `mahd` varchar(50) CHARACTER SET latin1 NOT NULL,
  `maaodau` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `club`
--

CREATE TABLE `club` (
  `maclub` varchar(3) CHARACTER SET latin1 NOT NULL,
  `tenclub` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `club`
--

INSERT INTO `club` (`maclub`, `tenclub`) VALUES
('aja', 'Ajax Amsterdam'),
('ars', 'Arsenal'),
('atm', 'Atlético de Madrid'),
('bar', 'Barcelona'),
('bay', 'FC Bayern Munchen'),
('bvb', 'Borussia Dortmund'),
('che', 'Chelsea'),
('int', 'Inter Milan'),
('juv', 'Juventus'),
('liv', 'Liverpool'),
('mci', 'Manchester City'),
('mil', 'AC Milan'),
('mun', 'Manchester United'),
('psg', 'Paris Saint-Germain'),
('rma', 'Real Madrid');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`email`, `password`, `hoten`) VALUES
('long@gmail.com', 'b13fe7b6c0e2305e7bbc8a971de6e04d', 'nhi long');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jersey`
--

CREATE TABLE `jersey` (
  `maaodau` int(11) NOT NULL,
  `tenaodau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(10) NOT NULL,
  `mota` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `maclub` varchar(3) CHARACTER SET latin1 NOT NULL,
  `maloai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jersey`
--

INSERT INTO `jersey` (`maaodau`, `tenaodau`, `hinhanh`, `gia`, `mota`, `maclub`, `maloai`) VALUES
(1, 'Cristano Ronaldo Home Authentic Jersey MUN', '1.jpg', 5000000, 'Cristiano Ronaldo returned to Manchester United in 2021 as one of the greatest footballers of all time, with a trophy-littered career that is almost beyond the realms of belief in its consistency, longevity, and success.', 'mun', 1),
(2, 'Lionel Messi Home Authentic Jersey PSG', '2.jpg', 5000000, 'It’s hard find the words to describe a man that the football world known simply as ‘The GOAT’. Born in Rosario, the Argentine crossed the Atlantic at just 13 years of age to join FC Barcelona. 21 years later, the famous left foot has dribbled its way to Paris Saint-Germain, for the biggest challenge of his career.\n\nIn between, ‘Leo’ has scaled all the heights. Messi has won 4 Champions League, 10 Liga titles, 7 Copa del Rey, 6 European Golden Boots, an Olympic gold medal and lifted the Copa America with Argentina, just before landing in the French capital.\n\nThe all-time leading goal scorer for his country, the top scorer in the history of Spanish football, the top assist provider in the 21st century, Messi has broken all the records, but above all, inspired an entire generation of footballers around the world with his genius.\n\nA living legend, ‘La Pulga’ has won 7 Ballons d’Or, and will now continue his remarkable career in Rouge et Bleu.', 'psg', 1),
(3, 'Sergio Ramos Home Authentic Jersey PSG', '3.jpg', 5000000, 'Born and raised in Seville, it was at Real Madrid, the club for whom he signed at 16 years old, that Sergio Ramos truly earned his status as a footballing legend.\r\n\r\nThe man who is now recognised as one of the best defenders in the history of the game, lifted 22 trophies, including five La Liga and four Champions League titles during his time in the Spanish capital. In total, he played 671 matches and found the back of the net on 101 occasions, an almost unheard of feat for a defender.\r\n\r\nThe same can be said for his record with the Spanish national side, with whom he won Euro 2008, World Cup 2010 and Euro 2012, and scored 23 goals. 15 years after his international debut, he is now the most capped Spanish player in history (180 caps).\r\n\r\nArriving in Paris in the summer of 2021, “SR4” has arrived in the capital to bring his experience, but also his competitive spirit, epitomised by his sense of sacrifice and a hunger to win.', 'psg', 1),
(4, 'Neymar Jr Away Authentic Jersey PSG', '4.jpg', 6000000, 'A genuine footballing superstar, Neymar Jr quickly became a sensation in his home country of Brazil. He played 230 professional games for his first club Santos FC, scoring 138 goals before moving to Barcelona in Europe, where he scored an impressive 105 goals in 186 games. Neymar Jr won the Champions League in 2015 and the Olympic games in Rio in 2016, alongside his current teammates Marquinhos and Rafinha.\r\n\r\nIn 2017, the Brazilian signed for Paris Saint-Germain, determined to write history. A technical leader, a dribbling genius, an unpredictable detonator, the number 10 quickly sparked in the City of Light, helping the capital club to the Champions League final in the summer of 2020.', 'psg', 2),
(5, 'David De Gea Goalkeeper Authentic Jersey MUN', '5.jpg', 9000000, 'David De Gea blossomed into one of the top goalkeepers in the world after joining United in 2011.', 'mun', 4),
(6, 'Zlatan Ibrahimovic Third Authentic Jersey MIL', '6.jpg', 1000000, 'His professional football life began in Malmö, his hometown, where he scored his first goals in the Swedish top flight. In 2001 he moved to Ajax, kicking off an exceptionally successful start to his career. In Holland, he made his European debut and won his first trophies. Then in 2004, he came to Serie A, and from Juventus to Inter, he certainly made a name for himself. In 2009 he moved to Barcelona, which ??probably turned out as the most difficult spell despite still managing to make an impact. So much so that a summer later, a few days after the end of the transfer market, he signed a pact with the devil. \r\n\r\nIn San Siro, as an AC Milan player, he scored 56 goals in 85 total appearances, winning the 2010-11 league title and the Italian Super Cup in Beijing. In 2012, he moved to Paris Saint-Germain, the most lasting and rich spell in terms of goals, games, and triumphs. His \"tour\" in Europe was only missing England, which he later discovered in 2016 thanks to a call from Manchester United. In Spring 2017, a serious injury complicated his plans, keeping him off the pitch for several months. He left Manchester permanently in March 2018, jetting off to Los Angeles Galaxy. During this period in MLS, he scored 53 goals in 58 appearances.\r\n\r\nDuring the 2019 Christmas holidays, he made his return to the Rossoneri, amidst great enthusiasm from the fans. A return that marks, in just 18 months, numerous lifetime records in addition to reaching the prestigious milestone of 500 career goals during a 4-0 win over Crotone on 7 February 2021. At the end of the 2020/21 season, his Rossoneri goal tally amounts to 84 in 132 appearances, a figure only second to his number of goals scored with PSG.', 'mil', 3),
(7, 'Junior Messias Home Authentic Jersey MIL', '7.jpg', 10000, 'From Crotone to AC Milan, and with a story to tell. 30-year-old Junior Messias joined the Rossoneri on the last day of the summer transfer window after a long journey that saw him make his way up from the lower leagues. It all began when, after being discovered by Ezio Rossi, he joined Casale at the fifth level of Italian football. A move to Chieri in Serie D followed, while he also played in the same division and then in Serie C for Gozzano, thus taking his first steps in the professional game. In January 2019, he signed for Crotone. After contributing to the Calabrian side’s promotion from Serie B to Serie A, he also starred during the 2020/21 Serie A campaign, after which AC Milan came calling. Capable of playing as a winger or attacking playmaker, the left-footed Brazilian has excellent dribbling ability and particularly aims to make a creative impact on the ball.', 'mil', 1),
(8, 'Daniel Maldini Home Authentic Jersey MIL', '8.jpg', 10000, 'Daniel Maldini is the fourth member of a dynasty, which has always been and will always be a part of AC Milan. Just like his grandfather Cesare, father Paolo and brother Christian, Daniel also came through the ranks of the Rossoneri’s youth sector. Born in 2001, the attacker rose through the age groups at the Club, winning the Scudetto with the U16s in 2017, before going on to play with the Primavera. Under the tutelage of Rino Gattuso, he trained for the very first time with the first team and then, thanks to coach Pioli, made his Serie A debut - on 2 February 2020 against Hellas Verona at San Siro.\r\n\r\nA right-footed player, Daniel possesses an abundance of quality and speed. He is good on the ball, dribbles well and has a keen eye for goal; his technical skills allow him to score with a certain regularity, making him especially deadly over a dead ball. He’s had a decent career with Italy as well so far; after his first outings and wins with the U18s and U19s, he was called up to the U21 squad at the beginning of 2020. On 6 January 2021, he contributed to a new chapter of the legendary Maldini dynasty: His sixth Rossoneri appearance was number 1,000 for his family, counting the 347 appearances made by his grandfather Cesare and the 647 recorded by his father Paolo.', 'mil', 1),
(9, 'Kylian Mbappe Away Authentic Jersey PSG', '9.jpg', 10000000, 'Born in the capital in 1998 and raised in a sporting family in the Parisian suburb of Bondy, Kylian Mbappé first joined the French National Football Institution at Clairefontaine before moving to Monaco’s academy. At the age of 17, the prodigy exploded onto the European scene and became a Ligue 1 champion in 2017.\r\n\r\nSigned by Paris Saint-Germain just a few weeks after Neymar Jr put pen to paper, the man that led Les Bleus to World Cup glory in 2018 quickly became a key player in Rouge et Bleu.\r\n\r\nThe third-highest goal scorer in club history, the Paris No.7 has developed an unquenchable thirst for records. In the 2020-21 season he netted a personal best 42 goals in all competitions for the side from the French capital.', 'psg', 2),
(10, 'Angel Di Maria Home Authentic Jersey PSG', '10.jpg', 50000, 'It was in the hotbed of Rosario that Angel Di Maria came into the world and it was only logical that it was with Rosario Central that the Argentine had his first touches of the ball.\r\n\r\nQuick, technical and selfless, ‘El Fideo’ was quickly identified as one to watch. At 19 years old, he won the U20 World Cup and crossed the Atlantic to live his European dream at Benfica. After three years confirming the hope placed on his shoulders (and securing a gold medal at the Olympic Games with La Albiceleste), the Portuguese club allowed him to leave for Real Madrid, where his left foot continued to perform miracles.\r\n\r\nAt the very top of his game, the Argentine led Los Merengues towards their Decima. The forward then joined Manchester United, before signing for Paris Saint-Germain one year later. And since 2015, the n°11 is delighting the hearts of everybody in the capital. In 2021, Angel became the club’s all-time leading assists provider.', 'psg', 1),
(11, 'Jesse Lingard Home Authentic Jersey MUN', '11.jpg', 1000000000, 'Jesse Lingard had to wait for his chance to make a first-team impression at the club he’s been at since the age of seven but, boy, has his patience paid off', 'mun', 1),
(12, 'Emile Smith Rowe Home Authentic Jersey ARS', '12.jpg', 10000, 'An immensely gifted, creative midfielder, Emile made massive strides last season and become an increasingly influential part of the team as the campaign wore on.\nA product of the Hale End academy, Emile joined Arsenal when he was 10 and played ahead of his age group as he progressed through the system. He made his first-team debut early in 2018/19, aged 18, and netted his first goal just two weeks later.', 'ars', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jerseytype`
--

CREATE TABLE `jerseytype` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jerseytype`
--

INSERT INTO `jerseytype` (`maloai`, `tenloai`) VALUES
(1, 'Home Kit'),
(2, 'Away Kit'),
(3, 'Third Kit'),
(4, 'Goalkeeper Kit');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`mahd`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`mahd`,`maaodau`),
  ADD KEY `maaodau` (`maaodau`);

--
-- Chỉ mục cho bảng `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`maclub`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`(20));

--
-- Chỉ mục cho bảng `jersey`
--
ALTER TABLE `jersey`
  ADD PRIMARY KEY (`maaodau`),
  ADD KEY `maclub` (`maclub`),
  ADD KEY `maloai` (`maloai`);

--
-- Chỉ mục cho bảng `jerseytype`
--
ALTER TABLE `jerseytype`
  ADD PRIMARY KEY (`maloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `jersey`
--
ALTER TABLE `jersey`
  MODIFY `maaodau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `jerseytype`
--
ALTER TABLE `jerseytype`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `bill` (`mahd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`maaodau`) REFERENCES `jersey` (`maaodau`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `jersey`
--
ALTER TABLE `jersey`
  ADD CONSTRAINT `jersey_ibfk_1` FOREIGN KEY (`maclub`) REFERENCES `club` (`maclub`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jersey_ibfk_2` FOREIGN KEY (`maloai`) REFERENCES `jerseytype` (`maloai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
