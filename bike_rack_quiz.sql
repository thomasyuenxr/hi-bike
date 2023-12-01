-- phpMyAdmin SQL Dump
-- version 5.1.1deb3+bionic1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-11-02 09:30:46
-- 服务器版本： 8.0.29
-- PHP 版本： 7.2.24-0ubuntu0.18.04.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `bike_rack_quiz`
--

-- --------------------------------------------------------

--
-- 表的结构 `quiz`
--

CREATE TABLE `quiz` (
  `quizid` int NOT NULL,
  `question` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `correct_ans` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `wrong_ans1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `wrong_ans2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `wrong_ans3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `quiz`
--

INSERT INTO `quiz` (`quizid`, `question`, `correct_ans`, `wrong_ans1`, `wrong_ans2`, `wrong_ans3`) VALUES
(1, 'how to brake on a bike the right way', 'Push Your Weight Back & Get Low—and Stay Off the Brakes—in Turns', 'Push Your Weight Back', 'Get Low—and Stay Off the Brakes—in Turns', 'none'),
(2, 'Ride harder for longer', 'heart rate Zones 2(between 60-70% of Max heart rate)', 'heart rate Zones 1 (between 50-60% of Max heart rate)', 'heart rate Zones 4(between 80-90% of Max heart rate)', 'heart rate Zones 5(between 90-100% of Max heart rate)'),
(3, 'For a long road race, which preparation is necessary\r\n', 'salt tablets & banana', 'salt tablets \r\n', 'banana', 'none'),
(4, 'When you are in group riding\r\n', 'No grabbing handfuls of brake or fast accelerating, mainly out of corners & Always have your hands covering the brakes on the hoods or drops.', 'No grabbing handfuls of brake or fast accelerating, mainly out of corners. \r\n', 'Always have your hands covering the brakes on the hoods or drops.\r\n', 'none'),
(5, 'When approaching hills, \r\n', 'widen the gap between cyclists to allow for slowing down. \r\n', 'narrow the gap between cyclists allows for slowing down. \r\n', 'widen the gap between cyclists to allow for accelerating.\r\n', 'narrows the gap between cyclists allowing for accelerating. \r\n'),
(6, 'For an ideal technique, a single pace line could be used for how many riders\r\n', 'groups with six riders or fewer\r\n', 'groups with eight riders or fewer\r\n', 'groups with ten riders or fewer\r\n', 'groups with twelve riders or fewer\r\n'),
(7, 'As a good cadence in cycling, which would be better \r\n', '90±5', '70±5', '100±5', '80±5'),
(8, 'which description is correct？', '75 percent of your cycle training should be done above 75 percent of your maximum heart rate (MHR) & Riding further and joining faster cyclists on their rides will help to improve your fitness and cycling wattage.', '75 percent of your cycle training should be done above 75 percent of your maximum heart rate (MHR)\r\n', 'Riding further and joining faster cyclists on their rides will help to improve your fitness and cycling wattage.\r\n', 'none'),
(9, 'Which way is better to get stronger\r\n', 'Climb training\r\n', 'Road race\r\n', 'Flat road training\r\n', 'All of them\r\n'),
(10, 'which is better to measure your ability to cycling\r\n', 'Power to weight ratio\r\n', 'watts\r\n', 'none\r\n', 'both\r\n'),
(11, 'Which of the following options is true', 'While riding, you must keep at least one hand on the handle bars at all times.\r\n', 'While riding, you must hold the handlebars with both hands at all times.', 'While riding, You can spread your hands.', 'In the case of safety around, you can ride with your hands off the bike handlebars.'),
(12, 'Which of the following options is False？', 'You can ride without a helmet.', 'You can ride without a Cycling clothes.', 'You can ride without knee pads.', 'You can ride without a Sunglasses.'),
(13, 'When you carrying people on a bicycle, which of the following options is true?', 'Both persons must wear helmets', 'You must fit a secure seat to your bike', 'You could not carry any people when you ride a bike', 'Both persons must wear knee pads'),
(14, 'Which of the following options is False？', 'You can ride without a helmet.', 'You must give way to any vehicle that is crossing your path to leave the roundabout.', 'You must give way to any pedestrians.', 'You can ride without a Sunglasses.'),
(15, 'If two bikes are running parallel, you should ride within how much distance of each other?', '1.5m', '1.0m', '2.0m', '0.5m'),
(16, 'Which of the following options is true?', 'Not overtake another vehicle on the left if that vehicle is turning left and giving a left change of direction signal', 'Not overtake another vehicle on the left if that vehicle is turning right and giving a left change of direction signal', 'Not overtake another vehicle on the left if that vehicle is turning left and giving a right change of direction signal', 'not overtake another vehicle on the left if that vehicle is turning right and giving a right change of direction signal'),
(17, 'Which of the following options is False？', 'You can ride a bicycle, across a pedestrian crossing', 'You can ride a bicycle, on footpaths', 'You can ride in bicycle, bus and transit lanes', 'You can ride your bike on unmarked roads'),
(18, 'What distance must you keep between you and the rear of a motor vehicle when following a motor vehicle for more than 200 meters', '2.0m', '1.0m', '10.0m', '5.0m');

-- --------------------------------------------------------

--
-- 表的结构 `quizlog`
--

CREATE TABLE `quizlog` (
  `logid` int NOT NULL,
  `uid` int NOT NULL,
  `quizid` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `quizlog`
--

INSERT INTO `quizlog` (`logid`, `uid`, `quizid`) VALUES
(180, 12, 12),
(181, 12, 8),
(182, 12, 7),
(183, 1, 13),
(184, 1, 16),
(185, 1, 1),
(186, 12, 2),
(187, 12, 3),
(188, 12, 13),
(189, 12, 16),
(190, 12, 5),
(191, 12, 16),
(192, 12, 5),
(193, 17, 8),
(194, 17, 6),
(195, 17, 2),
(196, 7, 6),
(197, 7, 16),
(198, 7, 14),
(199, 7, 1),
(200, 7, 1),
(201, 7, 2),
(202, 7, 15),
(203, 7, 13),
(204, 7, 17),
(205, 7, 7),
(206, 7, 12),
(207, 7, 14),
(208, 7, 10),
(209, 7, 12),
(210, 7, 10),
(211, 7, 18),
(212, 7, 14),
(213, 7, 7),
(214, 7, 13),
(215, 7, 6),
(216, 7, 7),
(217, 7, 7),
(218, 7, 13),
(219, 1, 11),
(220, 1, 11),
(221, 1, 3),
(222, 1, 3),
(223, 6, 14),
(224, 6, 13),
(225, 6, 3),
(226, 6, 12),
(227, 6, 1),
(228, 6, 7),
(229, 6, 14),
(230, 6, 6),
(231, 6, 2),
(232, 22, 18),
(233, 22, 6),
(234, 13, 10),
(235, 22, 15),
(236, 6, 2),
(237, 13, 17),
(238, 13, 13),
(239, 6, 15),
(240, 13, 12),
(241, 24, 13),
(242, 24, 7),
(243, 24, 18),
(244, 24, 5),
(245, 24, 9),
(246, 24, 13),
(247, 13, 1),
(248, 13, 8),
(249, 13, 9),
(250, 5, 5),
(251, 5, 9),
(252, 5, 7),
(253, 27, 14),
(254, 24, 3),
(255, 24, 5),
(256, 27, 9),
(257, 24, 6),
(258, 27, 12),
(259, 29, 18),
(260, 29, 18),
(261, 6, 2),
(262, 29, 7),
(263, 6, 16),
(264, 6, 4),
(265, 6, 9),
(266, 6, 3),
(267, 6, 15),
(268, 33, 2),
(269, 33, 17),
(270, 34, 1),
(271, 34, 17),
(272, 34, 1),
(273, 34, 3),
(274, 34, 6),
(275, 34, 14),
(276, 35, 4),
(277, 35, 4),
(278, 35, 2),
(279, 37, 18),
(280, 36, 10),
(281, 36, 5),
(282, 37, 6),
(283, 37, 18),
(284, 36, 16),
(285, 38, 13),
(286, 38, 3),
(287, 38, 10),
(288, 38, 12),
(289, 38, 14),
(290, 38, 14),
(291, 38, 5),
(292, 39, 9),
(293, 39, 7),
(294, 39, 15),
(295, 39, 6),
(296, 39, 18),
(297, 39, 2),
(298, 39, 5),
(299, 1, 3),
(300, 1, 7),
(301, 1, 5),
(302, 1, 13),
(303, 1, 10),
(304, 1, 4),
(305, 1, 5),
(306, 6, 2),
(307, 6, 11),
(308, 6, 12),
(309, 1, 13),
(310, 1, 10),
(311, 1, 14),
(312, 1, 7),
(313, 1, 17),
(314, 31, 2),
(315, 1, 16),
(316, 1, 8),
(317, 1, 16),
(318, 1, 16),
(319, 1, 15),
(320, 1, 13),
(321, 1, 3),
(322, 1, 15),
(323, 1, 14),
(324, 1, 9),
(325, 1, 3),
(326, 1, 6),
(327, 1, 4),
(328, 1, 4),
(329, 1, 18),
(330, 1, 13),
(331, 1, 10),
(332, 1, 15);

-- --------------------------------------------------------

--
-- 表的结构 `rack`
--

CREATE TABLE `rack` (
  `rackid` int NOT NULL,
  `suburb` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `capacity` varchar(10) NOT NULL,
  `racktype` varchar(50) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `rack`
--

INSERT INTO `rack` (`rackid`, `suburb`, `address`, `location`, `capacity`, `racktype`, `lat`, `lon`) VALUES
(1, 'Brisbane City', '100 Adelaide Street', 'King George Square - above King George Square Car Park on Adelaide Street side (near CityCycle stati', '24', '3 x 8 Bay Racks ', '-27.46815', '153.024'),
(2, 'Brisbane City', '100 Edward Street', 'Footpath on the corner of Edward Street and Mary Street', '4', '2 x Single Bike Rail', '-27.47052', '153.029'),
(3, 'Brisbane City', '101 Albert Street', 'Footpath near 7-Eleven', '7', '5 bay rack', '-27.47152', '153.0272'),
(4, 'Brisbane City', '102 Adelaide Street', 'Footpath outside Officeworks', '4', '2 x Single Bike Rail', '-27.46849', '153.0249'),
(5, 'Brisbane City', '103 Edward Street', 'Footpath', '2', 'Single Bike Rail', '-27.4704', '153.029'),
(6, 'Brisbane City', '108 Albert Street', 'Footpath', '7', '5 bay rack', '-27.47146', '153.0269'),
(7, 'Brisbane City', '108 Albert Street', 'Footpath', '7', '5 bay rack', '-27.47154', '153.027'),
(8, 'Brisbane City', '109 Elizabeth Street', 'Corner Elizabeth Street and Albert Street', '4', '2 x Single Bike Rail', '-27.47062', '153.026'),
(9, 'Brisbane City', '116 Adelaide Street', 'Footpath outside Fitness First', '2', 'Single Bike Rail', '-27.46831', '153.0251'),
(10, 'Brisbane City', '119 Charlotte Street', 'Footpath near food court and The Sebel driveway', '6', '2 x 3 Bay Racks', '-27.47082', '153.0273'),
(11, 'Spring Hill', '121 Wickham Terrace', 'Footpath near Ballow Chambers building', '2', 'Single Bike Rail', '-27.46465', '153.0258'),
(12, 'Brisbane City', '122 Roma Street (George Street frontage of Supreme Court) ', 'Footpath at George Street frontage of Queensland Supreme Court near CityCycle Station 22.', '14', '7 x Single Rail  ', '-27.46735', '153.0211'),
(13, 'Brisbane City', '123 Albert Street (Rio Tinto Building)', 'Footpath near Coffee Club outside Rio Tinto Building', '3', '3 Bay Rack', '-27.47077', '153.0264'),
(14, 'Brisbane City', '123 Albert Street', 'Outside Coffee Club', '4', '3 bay rack', '-27.47084', '153.0265'),
(15, 'Brisbane City', '125 Margaret Street', 'Footpath', '2', 'Single Bike Rail', '-27.47322', '153.0277'),
(16, 'Brisbane City', '127 George Street (Charlotte Street frontage)', 'Footpath on Charlotte Street', '2', 'Single Bike Rail', '-27.47234', '153.025'),
(17, 'Spring Hill', '136 Wickham Terrace', 'Footpath on the corner of Wickham Terrace and Edward Street outside carpark', '2', 'Single Bike Rail', '-27.46489', '153.0252'),
(18, 'Spring Hill', '149 Wickham Terrace', 'Footpath at the front of taxi rank ', '2', 'Single Bike Rail', '-27.46469', '153.0253'),
(19, 'Brisbane City', '15 Adelaide Street', 'Footpath next to phone booth', '2', 'Single Bike Rail', '-27.46995', '153.0232'),
(20, 'Brisbane City', '160 Ann Street', 'Footpath (outside CQ Uni Building)', '2', 'Single Bike Rail', '-27.46765', '153.0243'),
(21, 'Brisbane City', '2 Edward Street', 'Corner Edward Street and Alice Street', '3', '3 Bay Rack', '-27.47197', '153.0304'),
(22, 'Brisbane City', '20 Market Street', 'In small park area on footpath near Wenley House ', '6', '3 x Single Bike ', '-27.46946', '153.0296'),
(23, 'Brisbane City', '225 Edward Street', 'Footpath outside Commonwealth Bank', '4', '2 x Single Bike Rail', '-27.46812', '153.0269'),
(24, 'Brisbane City', '239 George Street', 'Footpath (outside Hitachi Building)', '2', '2 x Single Bike Rail', '-27.47033', '153.023'),
(25, 'Brisbane City', '240 Queen Street', 'Footpath outside Commonwealth Bank', '4', '4 bay rack', '-27.46799', '153.0273'),
(26, 'Brisbane City', '260 Queen Street', 'Footpath outside Westpac Bank ', '2', 'Single Bike Rail', '-27.46814', '153.027'),
(27, 'Brisbane City', '25 Adelaide Street', 'Footpath outside Bupa Dental', '3', '3 Bay Rack ', '-27.46966', '153.0236'),
(28, 'Brisbane City', '266 George Street (Adelaide Street frontage)', 'Corner of George Street and Adelaide Street near seated area (outside Brisbane Square)', '8', '4 x Single Rail ', '-27.47038', '153.0228'),
(29, 'Brisbane City', '266 George Street (North Quay frontage)', 'Corner North Quay and Adelaide Street (outside Brisbane Square)', '14', '7 x Single Rail  ', '-27.47094', '153.0221'),
(30, 'Brisbane City', '270 Ann Street', 'Corner of Edward Street and Ann Street and at Central Station entrance near phone booths ', '12', '2 x 6 bay racks', '-27.46662', '153.0256'),
(31, 'Brisbane City', '270 Queen Street', 'Post Office Square, east of walkway near HSBC Building', '9', 'Wheel racks', '-27.46744', '153.0278'),
(32, 'Brisbane City', '308 Queen Street', 'Footpath outside NAB Building', '2', 'Single Bike Rail', '-27.4672', '153.0283'),
(33, 'Brisbane City', '31 Tank Street (Santos Place)', 'On Turbot St pathway outside Santos Building', '8', '4 x Single Rail ', '-27.46866', '153.0201'),
(34, 'Brisbane City', '320 Adelaide Street', 'Near the corner of Adelaide and Wharf Street in front of the Christie Centre entrance', '2', 'Single Bike Rail', '-27.46511', '153.0296'),
(35, 'Brisbane City', '32 Edward Street', 'Footpath outside Smellie & Co. Building', '4', '2 x Single Bike Rail', '-27.4718', '153.0302'),
(36, 'Brisbane City', '2 Edward Street', 'Footpath on Edward Street near Alice Street', '3', '1 x 3 Bay Bike rack', '-27.4721', '153.0304'),
(37, 'Brisbane City', '340 George Street', 'Footpath (outside Java Cafe)', '2', 'Single Bike Rail', '-27.46922', '153.0217'),
(38, 'Brisbane City', '363 George Street ', 'Magistrates Court  western side next to the city cycle station  on George Street.', '8', '4 x Single Bike Rail ', '-27.4679', '153.0215'),
(39, 'Brisbane City', '400 George Street', 'Footpath outside Santos Building, next to Commonwealth Bank', '4', '2 x Single Bike Rail', '-27.4686', '153.0207'),
(40, 'Brisbane City', '419 George Street', 'Footpath, outside District and Supreme Court', '8', '4 x Single Bike Rail ', '-27.46773', '153.0205'),
(41, 'Brisbane City', '48 Turbot Street ', 'Footpath on Turbot Street near the escalators of 400 George Street', '8', '4 x Single Bike Rail ', '-27.46879', '153.021'),
(42, 'Brisbane City', '488 Queen Street', 'Near the entrance stairs of 488 Queen Street along property boundary', '6', '3 x Single Bike Rail', '-27.46436', '153.0312'),
(43, 'Brisbane City', '53 Albert Street', 'Footpath outside Capri Building', '5', '3 Bay Rack', '-27.47252', '153.0281'),
(44, 'Brisbane City', '62 Ann Street', 'Footpath outside the former Department of Agriculture and Fisheries Building currently under constru', '4', '2 x Single Bike Rail', '-27.4691', '153.0227'),
(45, 'Brisbane City', '69 Ann Street', 'Footpath (outside Telstra Building)', '4', '2 x Single Bike Rail', '-27.46924', '153.0225'),
(46, 'Brisbane City', '80 Albert Street', 'Footpath', '5', '3 bay rack', '-27.47228', '153.0277'),
(47, 'Brisbane City', '80 Albert Street', 'Footpath ', '2', 'Single Bike Rail', '-27.47223', '153.0276'),
(48, 'Brisbane City', '82 Ann Street', 'Footpath (outside Sarina Russo Building)', '8', '4 x Single Bike Rail', '-27.46868', '153.0229'),
(49, 'Brisbane City', '87 Albert Street', 'Footpath', '6', '3 x Single Bike Rail', '-27.47173', '153.0274'),
(50, 'Brisbane City', '97 Albert Street', 'Footpath to the front of 7/11', '5', '3 Bay Bike Rack', '-27.4715', '153.0273'),
(51, 'Brisbane City', '88 Mary Street', 'Corner Mary Street and Albert Streets next to City Cycle Station', '3', '3 bay rack', '-27.47198', '153.0271'),
(52, 'Brisbane City', '97 Creek Street', 'Footpath outside Solace Financial House', '2', 'Single Bike Rail', '-27.4663', '153.0284'),
(53, 'Fortitude Valley', 'Boundary Street near Ivory Street intersection ', 'Southern Boundary St footpath, near traffic lights', '2', 'Single Bike Rail', '-27.46232', '153.0331'),
(54, 'Fortitude Valley', 'Boundary Street under trees near riverside boardwalk', 'On southern footpath of Boundary St, below Story Bridge', '2', 'Single Bike Rail', '-27.46237', '153.0343'),
(55, 'Brisbane City', 'City Botanic Gardens', 'Near rotunda', '5', 'Wheel racks', '-27.47432', '153.03'),
(56, 'Brisbane City', 'City Botanic Gardens', 'Near all abilities playground', '8', '4 x Single Bike Rail', '-27.47374', '153.0309'),
(57, 'Brisbane City', 'Corner Adelaide Street and Creek Street', 'Footpath', '2', 'Single Bike Rail', '-27.46642', '153.0278'),
(58, 'Brisbane City', 'Corner Ann Street and North Quay', 'Beneath overpass next to W Hotel', '7', '5 bay rack ', '-27.47014', '153.0214'),
(59, 'Brisbane City', '111 Eagle Street', 'Footpath, near traffic lights', '10', '2 x 3 bay rack ', '-27.46875', '153.03'),
(60, 'Brisbane City', '163 Charlotte Street', 'Footpath on northern verge ', '2', 'Single Bike Rail', '-27.46997', '153.0284'),
(61, 'Brisbane City', 'Corner George Street and Queen Street', 'Reddacliff Place near the Treasury Casino behind advertising panel', '10', '7 bay rack', '-27.47114', '153.0235'),
(62, 'Brisbane City', '266 George Street', 'Reddacliff Place (North Quay side) near caf?\'s', '47', '3 x 10 bay racks, 1 x 5 Bay racks, 6 x Single Bike', '-27.47135', '153.0227'),
(63, 'Brisbane City', 'Corner Queen Street and Creek Street', 'Footpath', '2', 'Single Bike Rail', '-27.46695', '153.0289'),
(64, 'Brisbane City', 'Corner Queen Street and Eagle Street', 'Footpath', '5', '3 bay rack', '-27.46605', '153.03'),
(65, 'Brisbane City', 'Corner Queen Street and Eagle Street', 'Near Emirates building entrance', '5', '3 bay rack', '-27.46559', '153.0307'),
(66, 'Brisbane City', '224 Turbot Street', ' Jacobs Ladder Park near art sculptures and advertising panel', '5', '3 bay rack', '-27.46522', '153.0258'),
(67, 'Brisbane City', '65 Gardens Point Road', 'Near Goodwill Bridge ', '7', '5 bay rack', '-27.47753', '153.0305'),
(68, 'Brisbane City', 'QUT Gardens Point Road ', 'Behind Building \'Y\' Near Main Drive ', '20', '10 x Single Rail Rack', '-27.47897', '153.0283'),
(69, 'Brisbane City', 'QUT Gardens Point Road ', 'Near the Gardens Club at the end of the cul-de-sac', '7', '5 bay rack', '-27.47899', '153.0283'),
(70, 'Brisbane City', 'King George Square', 'King George Square (Speakers Corner), above Adelaide Street', '20', '2 x 7 bay rack', '-27.46856', '153.0246'),
(71, 'Brisbane City', 'King George Square', 'King George Square (behind busway entrance on Adelaide Street)', '20', '2 x 10 bay racks', '-27.46883', '153.0241'),
(72, 'Brisbane City', 'Parkland Boulevard', 'Roma Street Parklands, near main entry off Parkland Boulevard', '8', '4 x Single Bike Rail', '-27.46346', '153.0174'),
(73, 'Brisbane City', 'Roma Street - King George Square Busway Station ', 'Roma Street entrance to King George Square Busway Station', '7', '5 bay rack', '-27.46794', '153.0234'),
(74, 'Brisbane City', 'Wickham Terrace, near Upper Edward Street', 'Wickham Terrace Car Park, level 4a', '10', '8 bay rack', '-27.4649', '153.0253'),
(75, 'Brisbane City', '258 Roma Street', 'Police Watch house near City Cycle facility and pedestrian crossing ', '5', '3 bay rack', '-27.4663', '153.0172'),
(76, 'Brisbane City', '76 Edward Street', 'Footpath near RACQ House ', '2', 'Single Bike Rail', '-27.470876', '153.029319'),
(77, 'Brisbane City', '300 Elizabeth Street', 'Footpath in front of Westpac and Fitness First near Creek Road intersection', '6', '2 x 3 bay rack', '-27.4677', '153.0289'),
(78, 'Brisbane City', '163 Elizabeth Street', 'Footpath near pedestrian crossing ', '5', '3 bay rack', '-27.469934', '153.02673'),
(79, 'Brisbane City', '344 Queen Street', 'Footpath', '4', '2 x Single Bike Rail', '-27.466548', '153.029099'),
(80, 'Brisbane City', '355 Queen Street', 'Footpath outside JCU', '5', '3 bay rack', '-27.466457', '153.029465'),
(81, 'Brisbane City', '410 Ann Street', 'Footpath ', '10', '2 x 3 bay rack ', '-27.463192', '153.030005'),
(82, 'Fortitude Valley', '432 Wickham Street', 'Footpath outside Valley Pool', '5', '3 bay rack', '-27.4542', '153.0367'),
(83, 'Brisbane City', '120 Wickham Street Fortitude Valley', 'Footpath near street tree', '5', '3 bay rack', '-27.45949', '153.03169'),
(84, 'Brisbane City', '25 Mary Street Brisbane City ', 'Footpath near Mary Street Dental ', '2', 'Single Bike Rail', '-27.4729', '153.0265'),
(85, 'Brisbane City', '70 Mary Street Brisbane City ', 'Footpath near restaurant ', '2', 'Single Bike Rail', '-27.4723', '153.0268'),
(86, 'Brisbane City', '371 Queen Street', 'Footpath near Domino\'s', '3', '3 bay rack', '-27.4662', '153.0297'),
(87, 'Brisbane City', '111 George Street', 'Footpath near entrance', '3', '3 bay rack', '-27.4725', '153.0252'),
(88, 'Brisbane City', '84 Charlotte Street', 'Footpath (next to street tree in front of Gilhooley\'s Pub entrance)', '4', '4 bay rack', '-27.471231', '153.026518'),
(89, 'Brisbane City', '199 Adelaide Street', 'Starbucks Queens Plaza Cnr Adelaide Street and Edward Street', '4', '2x single bike rails', '-27.467792', '153.026008'),
(90, 'Fortitude Valley', '228 Brunswick Street', 'Footpath (outside Valley Metro entrace)', '2', 'Single Bike Rail', '-27.456834', '153.033019'),
(91, 'Brisbane City', '22 Elizabeth St Brisbane', 'Footpath (in front north-western corner of Queens Gardens)', '2', '1 x \'Love Hoop\' Rail', '-27.4719', '153.024196'),
(92, 'Brisbane City', '111 Elizabeth St Brisbane', 'Footpath (in front of JD Sports)', '2', '1 x \'Love Hoop\' Rail', '-27.470577', '153.025925'),
(93, 'Brisbane City', '166 Mary St Brisbane', 'Footpath (outside Raw Energy Caf?)', '2', '1 x \'Love Hoop\' Rail', '-27.4700661', '153.028984'),
(94, 'Brisbane City', '2 Roma Street', 'Footpath near entrance to Anytime Fitness - Ann St frontage', '2', 'Single Bike Rail', '-27.468383', '153.023325'),
(95, 'Brisbane City', '47 Tank Street', 'Footpath near entrace to Woolworths Metro ', '2', 'Single Bike Rail', '-27.468084', '153.020505'),
(96, 'Brisbane City', '310 George Street, Brisbane City', 'Footpath outside the W Hotel entrance', '2', '1 x \'Love Hoop\' Rail', '-27.46997', '153.022499'),
(97, 'Brisbane City', '231 Queen Street, Brisbane City', 'Footpath outside Apple Store', '2', '1 x \'Love Hoop\' Rail', '-27.468242', '153.027163'),
(98, 'Brisbane City', '160 Elizabeth St Brisbane', 'Footpath outside JD Sports, Elizabeth Street frontage', '2', '1 x \'Love Hoop\' Rail', '-27.470556', '153.025934'),
(99, 'Brisbane City', '350 Queen St Brisbane', 'Footpath in front of James Cook University', '2', '1 x \'Love Hoop\' Rail', '-27.466543', '153.029364'),
(100, 'Brisbane City', '7 Boundary St Brisbane', 'Adjacent to existing bike rack, north verge of cul de sac', '2', '1 x \'Love Hoop\' Rail', '-27.462154', '153.034594'),
(101, 'Brisbane City', '95 Adelaide Street', 'Footpath outside Bupa - just north of Albert St entrance to Queen St Mall', '2', '1 x \'Love Hoop\' Rail', '-27.468836', '153.024632'),
(102, 'Brisbane City', '100 Creek St Brisbane', 'Southern corner of intersection adjacent to fence', '2', '1 x \'Love Hoop\' Rail', '-27.466389', '153.027829'),
(103, 'Brisbane City', '266 George St Brisbane', 'Footpath outside Brisbane Square / Caf? Brisbane entrance', '2', '1 x \'Love Hoop\' Rail', '-27.470786', '153.023275'),
(104, 'Brisbane City', 'Emma Miller Place 240 Albert St Brisbane', 'Parallel with wall from top of stairs to Albert St', '2', '1 x \'Love Hoop\' Rail', '-27.468061', '153.023616'),
(105, 'Brisbane City', '144 Adelaide Street Brisbane', 'Footpath outside TAB', '2', 'Single Bike Rail', '-27.467986', '153.025489'),
(106, 'Brisbane City', '103 Edward Street Brisbane', 'Footpath outside Doo-Bop bar', '2', 'Single Bike Rail', '-27.470287', '153.028941'),
(107, 'Fortitude Valley', '356 St Pauls Terrace, Fortitude Valley', 'Footpath - Jetts Gym Amelia Street frontage', '5', '5 bay rack', '-27.455316', '153.032055'),
(108, 'Brisbane City', '162 Edward Street, Brisbane City', 'Footpath - Near Mitchell Ogilvie store frontage', '3', '3 bay rack', '-27.469348', '153.027886'),
(109, 'Brisbane City', '184 Edward Street, Brisbane City', 'Footpath - near Omega and Hardy Brothers store frontages', '4', '2x bike rails', '-27.468994', '153.027542'),
(110, 'Brisbane City', '114 Edward Street (Urbanna frontage)', 'Footpath - near Urbanna store frontage', '3', '3 bay rack', '-27.470285', '153.028753'),
(111, 'Brisbane City', '217 George Street', 'St George Bank, George Street frontage', '4', '2x bike rails', '-27.470797', '153.023494'),
(112, 'Brisbane City', '234 Queen Street', 'Commonwealth Bank, Edward Street frontage', '4', '1x 4 bay rack', '-27.46813', '153.026854'),
(113, 'Brisbane City', '255 Queen Street', 'Apple Store, Queen Street frontage', '5', '1x 5 bay rack', '-27.468246', '153.027135');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `email`, `password`) VALUES
(1, 'abc', '123'),
(2, 'zzz', '1'),
(5, 'aaa', 'aaa'),
(6, '123', '123'),
(7, '757476518@qq.com', 'Pby13522724310'),
(9, 'abc', '123'),
(10, 'luxundi666@gmail.com', '123'),
(12, 'aaaa', 'aaaa'),
(13, 'qqq', '123'),
(14, 'xundi.lu@uqconnect.edu.au', '123'),
(15, 'www', '321'),
(16, 'qq', 'qq'),
(17, 'poi', 'poi'),
(21, 'eee', '123'),
(22, 'bbb', 'bbb'),
(23, 'qqq', '123'),
(24, '111', '111'),
(25, 'aaa', 'aaa'),
(26, 'Hei@hello.no', 'hdjdjf'),
(27, 'Ju', 'ju'),
(29, 'Uqidrugo', 'test'),
(30, '123', '456'),
(31, '', ''),
(32, '123', '123'),
(33, '123456', '12345'),
(34, '1234@bb.com', '12345a'),
(35, 'hungrodney0@gmail.com', 'Hlhr0214'),
(36, 'eric82682@gmail.com', '123'),
(37, 'Aaa@hah', 'qwer'),
(38, 'awsz', 'awsz'),
(39, 'Jj', 'jj'),
(40, 'jj', 'jj'),
(41, 'abc', '123'),
(42, 'abc', '123');

--
-- 转储表的索引
--

--
-- 表的索引 `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quizid`);

--
-- 表的索引 `quizlog`
--
ALTER TABLE `quizlog`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `FK_uid_id` (`uid`),
  ADD KEY `FK_quizid` (`quizid`);

--
-- 表的索引 `rack`
--
ALTER TABLE `rack`
  ADD PRIMARY KEY (`rackid`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quizid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `quizlog`
--
ALTER TABLE `quizlog`
  MODIFY `logid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- 限制导出的表
--

--
-- 限制表 `quizlog`
--
ALTER TABLE `quizlog`
  ADD CONSTRAINT `FK_quizid` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`quizid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_uid_id` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
