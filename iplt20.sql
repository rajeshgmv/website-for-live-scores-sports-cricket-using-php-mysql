-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 02:58 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iplt20`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `rupdate`(IN `b1old` INT, IN `b1new` INT, IN `b2old` INT, IN `b2new` INT, IN `batsman1` INT, IN `batsman2` INT)
BEGIN
update batsmen set runs=runs-b1old+b1new where player_id=batsman1;
update batsmen set runs=runs-b2old+b2new where player_id=batsman2;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `batsmen`
--

CREATE TABLE IF NOT EXISTS `batsmen` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `average` float DEFAULT NULL,
  `hundreds` int(11) DEFAULT NULL,
  `fifties` int(11) DEFAULT NULL,
  `highest` int(11) DEFAULT NULL,
  `runs` int(11) DEFAULT NULL,
  `notouts` int(11) DEFAULT NULL,
  `strikerate` float DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_batsmen_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batsmen`
--

INSERT INTO `batsmen` (`player_id`, `average`, `hundreds`, `fifties`, `highest`, `runs`, `notouts`, `strikerate`) VALUES
(3, 30.65, 0, 11, 71, 1441, 20, 118.89),
(7, 24.74, 0, 4, 70, 1163, 23, 126.82),
(8, 39.28, 0, 15, 70, 2986, 40, 139.27),
(9, 30.02, 0, 6, 73, 1081, 3, 128.23),
(14, 36.9, 0, 8, 93, 1107, 2, 137.51),
(17, 38.76, 1, 15, 116, 1977, 7, 122.64),
(18, 23.44, 0, 0, 48, 1383, 25, 123.59),
(35, 34.25, 1, 25, 100, 3699, 20, 139.79),
(38, 26.32, 1, 3, 115, 1053, 17, 132.95),
(47, 25.09, 2, 8, 127, 2058, 4, 123.15),
(49, 32.67, 0, 19, 99, 3141, 19, 124.93),
(53, 46.36, 5, 18, 175, 3199, 12, 153.42),
(58, 36.71, 2, 15, 133, 2570, 23, 144.87),
(59, 23.47, 0, 9, 86, 2207, 12, 123.98),
(70, 27.27, 0, 11, 81, 1991, 17, 127.71),
(72, 32.54, 1, 24, 109, 3385, 20, 131.55),
(76, 29.18, 0, 8, 78, 1751, 25, 148.51),
(79, 21.6, 0, 7, 61, 1750, 10, 113.93),
(93, 42.54, 1, 8, 101, 1319, 16, 147.53),
(94, 41.91, 1, 17, 115, 2054, 6, 133.55),
(95, 27.55, 2, 16, 122, 2728, 5, 155.44),
(111, 28.78, 0, 5, 75, 1324, 22, 113.25),
(113, 28.48, 0, 4, 61, 1054, 19, 119.36),
(117, 25.28, 0, 10, 83, 2099, 12, 129.88),
(132, 33.76, 1, 17, 103, 2195, 10, 119.74),
(139, 36.49, 2, 14, 104, 2372, 11, 141.27),
(146, 29.55, 0, 26, 93, 3133, 10, 124.52),
(147, 29.96, 0, 14, 83, 2996, 15, 127.7),
(152, 28.23, 1, 9, 100, 2400, 24, 146.96),
(165, 40.04, 0, 14, 78, 1802, 20, 125.13),
(166, 31.09, 0, 21, 95, 2581, 12, 121.91),
(172, 25.95, 0, 10, 94, 1687, 3, 121.19),
(186, 25.33, 1, 5, 114, 1571, 10, 116.11),
(191, 25.45, 0, 7, 91, 1349, 3, 106.8),
(199, 34.12, 2, 23, 109, 2525, 9, 139.34),
(207, 22.3, 0, 6, 94, 1338, 15, 120.97),
(214, 27.22, 2, 11, 109, 2069, 4, 138.39),
(215, 34.83, 1, 13, 100, 2334, 11, 119.81),
(216, 28.23, 0, 11, 75, 2174, 5, 115.51);

-- --------------------------------------------------------

--
-- Table structure for table `bowler`
--

CREATE TABLE IF NOT EXISTS `bowler` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `economy` float DEFAULT NULL,
  `maidens` int(11) DEFAULT NULL,
  `overs` float DEFAULT NULL,
  `runs` int(11) DEFAULT NULL,
  `best_bowling` varchar(10) DEFAULT NULL,
  `wickets` float DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_bowler_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bowler`
--

INSERT INTO `bowler` (`player_id`, `economy`, `maidens`, `overs`, `runs`, `best_bowling`, `wickets`) VALUES
(2, 6.45, 4, 337.4, 2180, '3/16', 90),
(5, 8.04, 2, 252.1, 2028, '5/24', 76),
(6, 7.21, 3, 96, 693, '4/13', 37),
(7, 8.07, 1, 280.1, 2261, '4/42', 105),
(13, 8.59, 3, 146, 1255, '3/31', 37),
(18, 7.6, 0, 242.4, 1846, '5/16', 69),
(19, 7.83, 1, 155.5, 1221, '4/22', 45),
(26, 8.12, 3, 282.1, 2293, '4/32', 83),
(29, 6.67, 1, 254, 1696, '3/11', 63),
(40, 7.79, 0, 161.3, 1259, '4/14', 57),
(61, 8.12, 1, 212.1, 1723, '4/18', 57),
(68, 7.16, 1, 96.4, 693, '4/15', 34),
(72, 7.02, 1, 154.4, 1086, '3/13', 40),
(76, 8.64, 0, 192, 1659, '4/1', 56),
(80, 6.87, 5, 396.3, 2727, '5/18', 110),
(83, 8.3, 0, 337.4, 2806, '4/40', 98),
(84, 7.36, 1, 316.3, 2332, '3/11', 89),
(88, 6.67, 8, 381.3, 2546, '5/13', 143),
(106, 8.08, 1, 153.2, 1239, '3/27', 50),
(109, 8.26, 2, 124.3, 1029, '4/34', 39),
(110, 7.75, 7, 106.1, 823, '4/25', 39),
(117, 7.27, 0, 134.4, 980, '4/29', 35),
(123, 7.25, 4, 355, 2574, '5/17', 111),
(128, 7.53, 4, 282.5, 2132, '4/17', 82),
(137, 7.42, 0, 231.4, 1721, '4/15', 63),
(139, 7.49, 3, 226.5, 1701, '3/10', 61),
(152, 7.4, 1, 178.1, 1319, '3/20', 39),
(154, 6.92, 1, 119.3, 827, '3/17', 38),
(157, 8.32, 2, 247.5, 2063, '4/24', 64),
(158, 7.55, 2, 371.5, 2809, '4/17', 109),
(161, 7.59, 3, 236, 1792, '4/20', 67),
(162, 6, 2, 219.1, 1315, '5/19', 74),
(174, 7.96, 3, 238.5, 1902, '5/12', 55),
(176, 6.71, 7, 341, 2289, '3/8', 92),
(181, 7.75, 1, 270.5, 2099, '4/10', 89),
(182, 6.98, 3, 211.5, 1480, '4/14', 62),
(184, 8.39, 4, 161.1, 1353, '5/16', 51),
(212, 7.65, 12, 352.4, 2699, '3/18', 75);

-- --------------------------------------------------------

--
-- Table structure for table `captain`
--

CREATE TABLE IF NOT EXISTS `captain` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `term` varchar(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_captain_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `captain`
--

INSERT INTO `captain` (`player_id`, `term`, `wins`, `losses`) VALUES
(8, '2008-2015', 78, 50),
(33, '2011-2011', 0, 1),
(35, '2010-2010', 1, 1),
(49, '2011-2015', 26, 24),
(55, '2014-2014', 2, 2),
(59, '2010-2014', 2, 4),
(72, '2013-2015', 27, 17),
(80, '2008-2012', 10, 10),
(95, '2008-2015', 28, 25),
(115, '2015-2015', 5, 8),
(117, '2008-2011', 21, 21),
(133, '2012-2015', 9, 3),
(139, '2008-2015', 8, 11),
(146, '2009-2015', 53, 38),
(164, '2011-2013', 7, 5),
(166, '2014-2014', 4, 6),
(172, '2010-2013', 15, 30),
(191, '2008-2012', 17, 25),
(199, '2014-2015', 7, 9),
(200, '2009-2014', 3, 14),
(214, '2008-2013', 35, 39),
(215, '2008-2011', 31, 22),
(216, '2008-2013', 22, 26);

-- --------------------------------------------------------

--
-- Table structure for table `iplmatch`
--

CREATE TABLE IF NOT EXISTS `iplmatch` (
  `match_number` int(11) NOT NULL DEFAULT '0',
  `season` int(11) NOT NULL DEFAULT '0',
  `team1` int(11) DEFAULT NULL,
  `team2` int(11) DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `man_of_match` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`match_number`,`season`),
  KEY `team1` (`team1`),
  KEY `team2` (`team2`),
  KEY `season` (`season`),
  KEY `match_number_ipl_match_index` (`match_number`),
  KEY `season_ipl_matc_index` (`season`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iplmatch`
--

INSERT INTO `iplmatch` (`match_number`, `season`, `team1`, `team2`, `winner`, `man_of_match`) VALUES
(1, 2011, 1, 3, 1, 'Suresh Raina'),
(1, 2012, 1, 4, 1, 'Murali Vijay'),
(1, 2013, 1, 5, 1, 'Suresh Raina'),
(1, 2014, 1, 6, 6, 'James Faulkner'),
(1, 2015, 2, 6, 2, 'AB Devilliers'),
(2, 2011, 2, 4, 2, 'Virat Kohli'),
(2, 2012, 2, 5, 5, 'Gautam Gambhir'),
(2, 2013, 2, 4, 2, 'AB Devilliers'),
(2, 2014, 2, 5, 2, 'Chris Gayle'),
(2, 2015, 1, 3, 3, 'Kieron Pollard'),
(3, 2011, 3, 7, 7, 'Robin Uthappa'),
(3, 2012, 6, 8, 8, 'Adam Gilchrist'),
(3, 2013, 3, 5, 3, 'Sachin Tendulkar'),
(3, 2014, 4, 7, 4, 'Chateswar Pujara'),
(3, 2015, 6, 7, 6, 'Shane Watson'),
(4, 2011, 9, 2, 2, 'AB Devilliers'),
(4, 2012, 7, 4, 7, 'Yusuf Pathan'),
(4, 2013, 9, 6, 6, 'Ajiynkya Rahane'),
(4, 2014, 3, 10, 10, 'Shikar Dhawan'),
(4, 2015, 4, 1, 4, 'Pawan Negi'),
(5, 2011, 4, 8, 4, 'Virendra Sehwag'),
(5, 2012, 5, 1, 1, 'M S Dhoni'),
(5, 2013, 1, 10, 8, 'Kumar Sangakkara'),
(5, 2014, 6, 7, 6, 'Shane Watson'),
(5, 2015, 10, 2, 2, 'Virat Kohli'),
(6, 2011, 5, 9, 5, 'Yuvraj Singh'),
(6, 2012, 3, 10, 8, 'Cameron White'),
(6, 2013, 2, 5, 5, 'Mandeep Singh'),
(6, 2014, 10, 2, 2, 'Virat Kohli'),
(6, 2015, 3, 7, 3, 'Hardik Pandya'),
(7, 2011, 2, 6, 2, 'Chris Gayle'),
(7, 2012, 2, 4, 4, 'Yuvraj Singh'),
(7, 2013, 3, 6, 6, 'Rahul Dravid'),
(7, 2014, 3, 7, 3, 'Hardik Pandya'),
(7, 2015, 5, 1, 5, 'Zaheer Khan'),
(8, 2015, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `livescore`
--

CREATE TABLE IF NOT EXISTS `livescore` (
  `match_number` int(11) NOT NULL DEFAULT '0',
  `season` int(11) NOT NULL DEFAULT '0',
  `batsman1` int(11) DEFAULT NULL,
  `batsman2` int(11) DEFAULT NULL,
  `b1score` int(11) DEFAULT NULL,
  `b2score` int(11) DEFAULT NULL,
  `bowler` int(11) DEFAULT NULL,
  `bowlerstat` varchar(20) DEFAULT NULL,
  `team1` int(11) DEFAULT NULL,
  `team2` int(11) DEFAULT NULL,
  `t1Score` varchar(20) DEFAULT NULL,
  `t2score` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`match_number`,`season`),
  KEY `season` (`season`),
  KEY `batsman1` (`batsman1`),
  KEY `batsman2` (`batsman2`),
  KEY `bowler` (`bowler`),
  KEY `team1` (`team1`),
  KEY `team2` (`team2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livescore`
--

INSERT INTO `livescore` (`match_number`, `season`, `batsman1`, `batsman2`, `b1score`, `b2score`, `bowler`, `bowlerstat`, `team1`, `team2`, `t1Score`, `t2score`) VALUES
(8, 2015, 49, 58, 47, 62, 2, '23/2 overs: 3.3', 2, 1, '132/3 Overs: 14.3', '189/6 Overs: 20');

--
-- Triggers `livescore`
--
DROP TRIGGER IF EXISTS `scoreupdate`;
DELIMITER //
CREATE TRIGGER `scoreupdate` AFTER UPDATE ON `livescore`
 FOR EACH ROW call rupdate(old.b1score,new.b1score,old.b2score,new.b2score,new.batsman1,new.batsman2)
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(30) NOT NULL DEFAULT '',
  `logintime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userid`,`logintime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `logintime`) VALUES
('Anudeesh@gmail.com', '2015-12-16 07:03:03'),
('Anudeesh@gmail.com', '2015-12-16 07:04:30'),
('BharadwajAmirneni@gmail.com', '2015-12-16 05:10:43'),
('deepubolla@gmail.com', '2015-12-08 05:20:46'),
('deepubolla@gmail.com', '2015-12-08 06:03:23'),
('deepubolla@gmail.com', '2015-12-08 09:31:12'),
('deepubolla@gmail.com', '2015-12-08 20:30:35'),
('deepubolla@gmail.com', '2015-12-09 01:44:04'),
('deepubolla@gmail.com', '2015-12-09 02:05:34'),
('deepubolla@gmail.com', '2015-12-09 02:06:54'),
('deepubolla@gmail.com', '2015-12-09 07:24:53'),
('deepubolla@gmail.com', '2015-12-10 04:55:25'),
('deepubolla@gmail.com', '2015-12-10 21:21:55'),
('deepubolla@gmail.com', '2015-12-11 01:13:54'),
('deepubolla@gmail.com', '2015-12-11 02:49:12'),
('deepubolla@gmail.com', '2015-12-11 02:58:31'),
('deepubolla@gmail.com', '2015-12-11 02:58:37'),
('deepubolla@gmail.com', '2015-12-11 03:08:57'),
('deepubolla@gmail.com', '2015-12-11 03:09:06'),
('deepubolla@gmail.com', '2015-12-11 03:58:28'),
('deepubolla@gmail.com', '2015-12-11 04:17:08'),
('deepubolla@gmail.com', '2015-12-11 04:35:35'),
('deepubolla@gmail.com', '2015-12-11 04:55:24'),
('deepubolla@gmail.com', '2015-12-11 05:28:54'),
('deepubolla@gmail.com', '2015-12-11 05:40:14'),
('deepubolla@gmail.com', '2015-12-16 01:15:14'),
('deepubolla@gmail.com', '2015-12-16 01:24:23'),
('deepubolla@gmail.com', '2015-12-16 01:25:59'),
('deepubolla@gmail.com', '2015-12-16 01:26:28'),
('deepubolla@gmail.com', '2015-12-16 01:31:29'),
('deepubolla@gmail.com', '2015-12-16 03:25:01'),
('deepubolla@gmail.com', '2015-12-16 03:34:33'),
('deepubolla@gmail.com', '2015-12-16 04:51:24'),
('deepubolla@gmail.com', '2015-12-16 05:05:13'),
('deepubolla@gmail.com', '2015-12-16 17:19:31'),
('deepubolla@gmail.com', '2015-12-16 17:27:46'),
('deepubolla@gmail.com', '2015-12-16 17:36:09'),
('deepubolla@gmail.com', '2015-12-16 17:49:50'),
('deepubolla@gmail.com', '2015-12-16 19:32:23'),
('deepubolla@gmail.com', '2015-12-16 19:52:58'),
('deepubolla@gmail.com', '2015-12-16 19:57:06'),
('deepubolla@gmail.com', '2015-12-16 20:59:11'),
('deepubolla@gmail.com', '2015-12-16 21:07:27'),
('deepubolla@gmail.com', '2015-12-16 21:08:27'),
('deepubolla@gmail.com', '2016-01-20 04:40:22'),
('deepubolla@gmail.com', '2016-02-18 05:49:33'),
('deepubolla@gmail.com', '2016-02-18 05:51:10'),
('himajafeb8@gmail.com', '2015-12-08 05:19:04'),
('himajafeb8@gmail.com', '2015-12-16 04:33:02'),
('himajafeb8@gmail.com', '2015-12-16 04:39:49'),
('himajafeb8@gmail.com', '2015-12-16 19:06:43'),
('krih.vakkalagadda@gmail.com', '2015-12-08 05:21:23'),
('mguttiko@uncc.edu', '2016-05-12 00:54:28'),
('raj.gmvr@gmail.com', '2015-12-08 05:04:16'),
('raj.gmvr@gmail.com', '2015-12-08 05:05:49'),
('raj.gmvr@gmail.com', '2015-12-08 05:07:10'),
('raj.gmvr@gmail.com', '2015-12-08 05:07:21'),
('raj.gmvr@gmail.com', '2015-12-08 05:21:42'),
('raj.gmvr@gmail.com', '2015-12-08 05:21:58'),
('raj.gmvr@gmail.com', '2015-12-09 02:05:18'),
('raj.gmvr@gmail.com', '2015-12-16 04:32:23'),
('raj.gmvr@gmail.com', '2015-12-16 06:57:24'),
('raj.gmvr@gmail.com', '2015-12-16 17:27:35'),
('raj.gmvr@gmail.com', '2015-12-16 19:45:24'),
('raj.gmvr@gmail.com', '2015-12-16 21:03:31'),
('raj.gmvr@gmail.com', '2015-12-16 21:06:36'),
('raj.gmvr@gmail.com', '2015-12-16 21:07:46'),
('raj.gmvr@gmail.com', '2016-01-20 04:42:07'),
('raj.gmvr@gmail.com', '2016-02-18 05:49:11'),
('s.vakkalagadda@gmail.com', '2015-12-16 19:45:47'),
('s.vakkalagadda@gmail.com', '2015-12-16 21:04:14'),
('saahithisurapaneni@gmail.com', '2015-12-16 06:52:30'),
('saahithisurapaneni@gmail.com', '2015-12-16 06:58:34'),
('saahithisurapaneni@gmail.com', '2015-12-16 07:03:23'),
('saahithisurapaneni@gmail.com', '2015-12-16 07:03:42'),
('saahithisurapaneni@gmail.com', '2015-12-16 07:03:54'),
('vidya.sagar@gmail.com', '2015-12-08 05:18:49');

-- --------------------------------------------------------

--
-- Stand-in structure for view `numberofrunnerss`
--
CREATE TABLE IF NOT EXISTS `numberofrunnerss` (
`nrunners` bigint(21)
,`team_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `numberofwins`
--
CREATE TABLE IF NOT EXISTS `numberofwins` (
`nwins` bigint(21)
,`team_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `player_name` varchar(20) DEFAULT NULL,
  `Matches_played` int(11) DEFAULT NULL,
  `Innings_played` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_index` (`player_id`),
  KEY `team_id` (`team_id`),
  KEY `team_id_player_index` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `player_name`, `Matches_played`, `Innings_played`, `team_id`) VALUES
(1, 'Palani Amarnath', 6, 0, 1),
(2, 'Ravichandran Ashwin', 86, 26, 1),
(3, 'Subramaniam Badrinat', 114, 82, 1),
(4, 'George Bailey', 34, 31, 1),
(5, 'Lakshmipathy Balaji', 34, 8, 1),
(6, 'Doug Bollinger', 41, 5, 1),
(7, 'Dwayne Bravo', 52, 37, 1),
(8, 'MS Dhoni', 115, 102, 1),
(9, 'Francois du Plessis', 17, 16, 1),
(10, 'Stephen Fleming', 10, 10, 1),
(11, 'Andrew Flintoff', 3, 3, 1),
(12, 'C Ganapathy', 1, 1, 1),
(13, 'Manpreet Gony', 26, 9, 1),
(14, 'Matthew Hayden', 34, 34, 1),
(15, 'Ben Hilfenhaus', 13, 2, 1),
(16, 'Jason Holder', 6, 0, 1),
(17, 'Michael Hussey', 60, 59, 1),
(18, 'Ravindra Jadeja', 46, 35, 1),
(19, 'Shadab Jakati', 55, 8, 1),
(20, 'Chamara Kapugedera', 5, 3, 1),
(21, 'Arun Karthik', 1, 1, 1),
(22, 'Justin Kemp', 7, 4, 1),
(23, 'Nuwan Kulasekara', 7, 2, 1),
(24, 'Ben Laughlin', 2, 2, 1),
(25, 'Yo Mahesh', 6, 1, 1),
(26, 'Albie Morkel', 92, 70, 1),
(27, 'Chris Morris', 17, 7, 1),
(28, 'Abhinav Mukund', 2, 1, 1),
(29, 'Muttiah Muralitharan', 46, 6, 1),
(30, 'Dirk Nannes', 5, 1, 1),
(31, 'Makhaya Ntini', 9, 2, 1),
(32, 'Jacob Oram', 15, 11, 1),
(33, 'Parthiv Patel', 26, 26, 1),
(34, 'Thisara Perera', 1, 0, 1),
(35, 'Suresh Raina', 118, 114, 1),
(36, 'Ankit Rajpoot', 2, 1, 1),
(37, 'Suraj Randiv', 8, 1, 1),
(38, 'Wriddhiman Saha', 21, 13, 1),
(39, 'Joginder Sharma', 16, 6, 1),
(40, 'Mohit Sharma', 20, 3, 1),
(41, 'Vidyut Sivaramakrish', 9, 8, 1),
(42, 'Tim Southee', 5, 0, 1),
(43, 'Anirudha Srikkanth', 25, 16, 1),
(44, 'Scott Styris', 2, 1, 1),
(45, 'Thilan Thushara', 6, 4, 1),
(46, 'Sudeep Tyagi', 14, 3, 1),
(47, 'Murali Vijay', 83, 83, 1),
(48, 'Mandeep Singh', 14, 14, 2),
(49, 'Virat Kohli', 123, 120, 2),
(50, 'Subramaniam Badrinat', 95, 86, 2),
(51, 'Nic Maddinson', 3, 3, 2),
(52, 'Sarfaraz Khan', 13, 11, 2),
(53, 'Chris Gayle', 82, 76, 2),
(54, 'Vijay Zol', 3, 3, 2),
(55, 'Darren Sammy', 22, 22, 2),
(56, 'David Wiese', 14, 14, 2),
(57, 'Yogesh Takawale', 5, 5, 2),
(58, 'AB de Villiers', 104, 100, 2),
(59, 'Dinesh Karthik', 122, 115, 2),
(60, 'Manvinder Bisla', 39, 33, 2),
(61, 'Ashok Dinda', 66, 50, 2),
(62, 'Yuzvendra Chahal', 30, 28, 2),
(63, 'Sreenath Aravind', 19, 16, 2),
(64, 'Harshal Patel', 30, 23, 2),
(65, 'Iqbal Abdulla', 39, 34, 2),
(66, 'Abu Nechim', 10, 10, 2),
(67, 'Varun Aaron', 28, 25, 2),
(68, 'Mitchell Starc', 27, 25, 2),
(69, 'Sean Abbott', 2, 1, 2),
(70, 'Ambati Rayudu', 96, 95, 3),
(71, 'Unmukt Chand', 20, 20, 3),
(72, 'Rohit Sharma', 128, 128, 3),
(73, 'Lendl Simmons', 21, 20, 3),
(74, 'Aiden Blizzard', 7, 7, 3),
(75, 'Shreyas Gopal', 5, 5, 3),
(76, 'Kieron Pollard', 93, 90, 3),
(77, 'Hardik Pandya', 9, 9, 3),
(78, 'Aditya Tare', 29, 25, 3),
(79, 'Parthiv Patel', 93, 90, 3),
(80, 'Harbhajan Singh', 111, 111, 3),
(81, 'Jasprit Bumrah', 17, 17, 3),
(82, 'Jagadeesha Suchith', 13, 13, 3),
(83, 'Vinay Kumar', 99, 95, 3),
(84, 'Pragyan Ojha', 92, 89, 3),
(85, 'Pawan Suyal', 5, 5, 3),
(86, 'Mitchell McClenaghan', 12, 12, 3),
(87, 'Marchant de Lange', 5, 5, 3),
(88, 'Lasith Malinga', 98, 98, 3),
(89, 'Abhimanyu Mithun', 16, 15, 3),
(90, 'Ben Hilfenhaus', 17, 15, 3),
(91, 'George Bailey', 34, 34, 4),
(92, 'Murali Vijay', 86, 86, 4),
(93, 'David Miller', 47, 45, 4),
(94, 'Shaun Marsh', 56, 53, 4),
(95, 'Virender Sehwag', 104, 102, 4),
(96, 'Gurkeerat Singh', 21, 20, 4),
(97, 'Manan Vohra', 27, 25, 4),
(98, 'Thisara Perera', 25, 25, 4),
(99, 'Rishi Dhawan', 24, 20, 4),
(100, 'Axar Patel', 31, 29, 4),
(101, 'Glenn Maxwell', 32, 32, 4),
(102, 'Shivam Sharma', 5, 5, 4),
(103, 'Wriddhiman Saha', 78, 74, 4),
(104, 'Karanveer Singh', 9, 9, 4),
(105, 'Beuran Hendricks', 7, 7, 4),
(106, 'Mitchell Johnson', 40, 36, 4),
(107, 'Shardul Thakur', 1, 1, 4),
(108, 'Anureet Singh', 17, 12, 4),
(109, 'Parvinder Awana', 33, 30, 4),
(110, 'Sandeep Sharma', 29, 27, 4),
(111, 'Manoj Tiwary', 78, 75, 5),
(112, 'Mayank Agarwal', 47, 45, 5),
(113, 'Saurabh Tiwary', 70, 67, 5),
(114, 'Kedar Jadhav', 47, 45, 5),
(115, 'JP Duminy', 67, 67, 5),
(116, 'Shreyas Iyer', 14, 14, 5),
(117, 'Yuvraj Singh', 98, 98, 5),
(118, 'Jayant Yadav', 3, 1, 5),
(119, 'Angelo Mathews', 46, 46, 5),
(120, 'Albie Morkel', 89, 89, 5),
(121, 'Quinton de Kock', 13, 13, 5),
(122, 'CM Gautam', 13, 12, 5),
(123, 'Amit Mishra', 98, 95, 5),
(124, 'Domnic Joseph', 6, 5, 5),
(125, 'Mohammed Shami', 23, 23, 5),
(126, 'Nathan Coulter Nile', 14, 13, 5),
(127, 'Gurinder Sandhu', 3, 2, 5),
(128, 'Zaheer Khan', 77, 75, 5),
(129, 'Jaydev Unadkat', 34, 31, 5),
(130, 'Shahbaz Nadeem', 44, 44, 5),
(131, 'Imran Tahir', 16, 16, 5),
(132, 'Ajinkya Rahane', 81, 81, 6),
(133, 'Steve Smith', 46, 45, 6),
(134, 'Chris Morris', 27, 27, 6),
(135, 'Dinesh Salunkhe', 6, 4, 6),
(136, 'Ankit Sharma', 17, 15, 6),
(137, 'Rajat Bhatia', 82, 80, 6),
(138, 'Abhishek Nayar', 60, 58, 6),
(139, 'Shane Watson', 78, 76, 6),
(140, 'James Faulkner', 45, 45, 6),
(141, 'Stuart Binny', 58, 58, 6),
(142, 'Pravin Tambe', 26, 26, 6),
(143, 'Rahul Tewatia', 4, 4, 6),
(144, 'Kane Richardson', 10, 10, 6),
(145, 'Manish Pandey', 77, 75, 7),
(146, 'Gautam Gambhir', 117, 115, 7),
(147, 'Robin Uthappa', 120, 120, 7),
(148, 'Suryakumar Yadav', 30, 30, 7),
(149, 'Andre Russell', 22, 22, 7),
(150, 'Azhar Mahmood', 23, 23, 7),
(151, 'Johan Botha', 34, 34, 7),
(152, 'Yusuf Pathan', 119, 115, 7),
(153, 'Ryan ten Doeschate', 29, 29, 7),
(154, 'Shakib Al Hasan', 32, 32, 7),
(155, 'Sumit Narwal', 7, 5, 7),
(156, 'Veer Pratap Singh', 9, 9, 7),
(157, 'Umesh Yadav', 71, 71, 7),
(158, 'Piyush Chawla', 111, 105, 7),
(159, 'Pat Cummins', 4, 4, 7),
(160, 'Brad Hogg', 16, 14, 7),
(161, 'Morne Morkel', 60, 60, 7),
(162, 'Sunil Narine', 55, 51, 7),
(163, 'KC Cariappa', 1, 1, 7),
(164, 'Cameron White', 47, 47, 8),
(165, 'JP Duminy', 67, 67, 8),
(166, 'Shikhar Dhawan', 96, 96, 8),
(167, 'Akshath Reddy', 12, 10, 8),
(168, 'Chris Lynn', 3, 3, 8),
(169, 'Dwaraka Ravi Teja', 32, 30, 8),
(170, 'Ashish Reddy', 27, 27, 8),
(171, 'Biplab Samantray', 9, 8, 8),
(172, 'Kumar Sangakkara', 71, 71, 8),
(173, 'Parthiv Patel', 93, 90, 8),
(174, 'Ishant Sharma', 66, 66, 8),
(175, 'Ankit Sharma', 17, 17, 8),
(176, 'Dale Steyn', 89, 85, 8),
(177, 'Anand Rajan', 8, 8, 8),
(178, 'Veer Pratap Singh', 9, 9, 8),
(179, 'Amit Mishra', 98, 92, 8),
(180, 'Angelo Mathews', 46, 45, 9),
(181, 'Ashish Nehra', 74, 70, 9),
(182, 'Bhuvaneswar Kumar', 59, 56, 9),
(183, 'Harpreet singh', 4, 4, 9),
(184, 'James Faulkner', 45, 45, 9),
(185, 'Jesse Ryder', 29, 27, 9),
(186, 'Manish Pandey', 77, 75, 9),
(187, 'Mitchell Marsh', 17, 16, 9),
(188, 'Murali Kartik', 56, 51, 9),
(189, 'Nathan McCullum', 2, 2, 9),
(190, 'Robin Uthappa', 120, 120, 9),
(191, 'Sourav Ganguly', 59, 57, 9),
(192, 'Wayne Parnell', 26, 26, 9),
(193, 'Yuvraj Singh', 98, 95, 9),
(194, 'KL Rahul', 25, 23, 10),
(195, 'Eoin Morgan', 41, 40, 10),
(196, 'Hanuma Vihari', 22, 20, 10),
(197, 'Kane Williamson', 2, 2, 10),
(198, 'Shikhar Dhawan', 96, 92, 10),
(199, 'David Warner', 83, 80, 10),
(200, 'Kevin Pietersen', 32, 30, 10),
(201, 'Ashish Reddy', 27, 25, 10),
(202, 'Moises Henriques', 28, 26, 10),
(203, 'Ravi Bopara', 24, 20, 10),
(204, 'Parvez Rasool', 2, 2, 10),
(205, 'Bipul Sharma', 19, 17, 10),
(206, 'Karn Sharma', 41, 40, 10),
(207, 'Naman Ojha', 81, 76, 10),
(208, 'Ishant Sharma', 66, 62, 10),
(209, 'Dale Steyn', 89, 85, 10),
(210, 'Bhuvneshwar Kumar', 59, 56, 10),
(211, 'Trent Boult', 7, 7, 10),
(212, 'Praveen Kumar', 97, 90, 10),
(213, 'Siddarth Kaul', 11, 10, 10),
(214, 'Adam Gilchrist', 80, 78, 8),
(215, 'Sachin Tendulkar', 78, 73, 3),
(216, 'Rahul Dravid', 89, 88, 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `playerbatsemen`
--
CREATE TABLE IF NOT EXISTS `playerbatsemen` (
`p1` varchar(20)
,`p2` int(11)
,`p3` int(11)
,`b1` float
,`b2` int(11)
,`b3` int(11)
,`b4` int(11)
,`b5` int(11)
,`b6` int(11)
,`b7` float
,`team_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `playerbowler`
--
CREATE TABLE IF NOT EXISTS `playerbowler` (
`p1` varchar(20)
,`p2` int(11)
,`p3` int(11)
,`bw1` float
,`bw2` int(11)
,`bw3` float
,`bw4` int(11)
,`bw5` varchar(10)
,`bw6` float
,`team_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `playercaptain`
--
CREATE TABLE IF NOT EXISTS `playercaptain` (
`p1` varchar(20)
,`p2` int(11)
,`p3` int(11)
,`c1` varchar(11)
,`c2` int(11)
,`c3` int(11)
,`team_id` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `playerwk`
--
CREATE TABLE IF NOT EXISTS `playerwk` (
`p1` varchar(20)
,`p2` int(11)
,`p3` int(11)
,`w1` int(11)
,`w2` int(11)
,`w3` int(11)
,`team_id` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE IF NOT EXISTS `season` (
  `year` int(11) NOT NULL,
  `No_of_teams_played` int(11) DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `runner` int(11) DEFAULT NULL,
  `player_of_season` int(11) DEFAULT NULL,
  `orange_cap` varchar(20) DEFAULT NULL,
  `purple_cap` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`year`),
  UNIQUE KEY `year_index` (`year`),
  KEY `winner` (`winner`),
  KEY `runner` (`runner`),
  KEY `player_of_season` (`player_of_season`),
  KEY `player_of_season_index` (`player_of_season`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`year`, `No_of_teams_played`, `winner`, `runner`, `player_of_season`, `orange_cap`, `purple_cap`) VALUES
(2011, 9, 1, 2, 53, 'Chris Gayle', 'Lasith Malinga'),
(2012, 9, 7, 1, 162, 'Chris Gayle', 'Morne Morkel'),
(2013, 9, 3, 1, 139, 'Micheal Hussey', 'DJ Bravo'),
(2014, 8, 7, 4, 101, 'Robin Uthappa', 'Mohit Sharma'),
(2015, 8, 3, 1, 149, 'David Warner', 'DJ Bravo');

-- --------------------------------------------------------

--
-- Stand-in structure for view `seasondet`
--
CREATE TABLE IF NOT EXISTS `seasondet` (
`Year` int(11)
,`notp` int(11)
,`winner` varchar(30)
,`name` varchar(30)
,`player_name` varchar(20)
,`orange_cap` varchar(20)
,`runner` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `seasonmatches`
--
CREATE TABLE IF NOT EXISTS `seasonmatches` (
`team1` varchar(30)
,`team2` varchar(30)
,`winner` varchar(30)
,`season` int(11)
,`man_of_match` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `seasonteams`
--
CREATE TABLE IF NOT EXISTS `seasonteams` (
`name` varchar(30)
,`season` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `team_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `coach` varchar(20) DEFAULT NULL,
  `ground` varchar(40) DEFAULT NULL,
  `matches_played` int(11) DEFAULT NULL,
  `matches_Won` int(11) DEFAULT NULL,
  `Matches_Lost` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_id`),
  UNIQUE KEY `team_id_index` (`team_id`),
  FULLTEXT KEY `team_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `name`, `city`, `owner`, `coach`, `ground`, `matches_played`, `matches_Won`, `Matches_Lost`) VALUES
(1, 'Chennai Super Kings', 'chennai', 'N Srinivasan', 'Stephen Fleming', 'Chidambaram', 132, 79, 51),
(2, 'Royal Challengers Bangalore', 'Banglore', 'Vijay Malya', 'vettori', 'Chinnaswamy', 124, 60, 59),
(3, 'Mumbai Indians', 'Mumbai', 'Nita Ambani', 'Ricky Ponting', 'Wankhede', 126, 73, 53),
(4, 'Kings XI Punjab', 'Mohali', 'Preity Zinta', 'Sanjay Bangar', 'Dharamsala', 120, 57, 61),
(5, 'Delhi Daredevils', 'Delhi', 'GMR', 'Gary Kirsten', 'Feroz Shah Kotla', 119, 49, 67),
(6, 'Rajasthan Royals', 'Jaipur', 'Shilpa Shetty', 'Paddy Upton', 'Sawai Mansingh', 118, 61, 53),
(7, 'Kolkata Knight Rider', 'Kolkata', 'Shah Rukh Khan', 'Trevor Bayliss', 'Eden Gardens', 117, 60, 55),
(8, 'Deccan Chargers', 'Hyderabad', 'Deccan Chronicle', 'Darren Lehmann', 'Rajiv Gandhi International Cricket', 75, 29, 46),
(9, 'Pune Warriors India', 'Pune', 'Sahara India Pariwar', 'Pravin Amre', 'DY Patil', 46, 12, 33),
(10, 'Sunrisers Hyderabad', 'Hyderabad', 'Kalanithi Maran', 'Tom Moody', 'Rajiv Gandhi International Cricket', 45, 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `usertypeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_index` (`userid`),
  KEY `usertypeid` (`usertypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `password`, `firstname`, `lastname`, `usertypeid`) VALUES
('Anudeesh@gmail.com', '6da3952bdd723e28914335af10da86e1', 'Anudeesh', 'Puppala', 0),
('BharadwajAmirneni@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', 'Bharadwaj', 'Amirneni', 3),
('deepubolla@gmail.com', '603295f0d1e7e546c3ee21047c07ccda', 'deepu', 'Bolla', 3),
('himajafeb8@gmail.com', '603295f0d1e7e546c3ee21047c07ccda', 'Himaja', 'Muppalla', 2),
('krih.vakkalagadda@gmail.com', '603295f0d1e7e546c3ee21047c07ccda', 'Krishna', 'vakkalagadda', 3),
('mguttiko@uncc.edu', '603295f0d1e7e546c3ee21047c07ccda', 'rajesh', 'GUTTIKONDA', 3),
('raj.gmvr@gmail.com', '603295f0d1e7e546c3ee21047c07ccda', 'rajesh', 'Guttikonda', 1),
('s.vakkalagadda@gmail.com', '603295f0d1e7e546c3ee21047c07ccda', 'sathya', 'vakkalagadda', 2),
('saahithisurapaneni@gmail.com', 'd420db3ef1d053060a4322fbb26b80d6', 'saahithi Jyothy', 'Surapaneni', 1),
('vidya.sagar@gmail.com', '603295f0d1e7e546c3ee21047c07ccda', 'vidya', 'sagar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `userTypeID` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`userTypeID`, `name`, `description`) VALUES
(0, 'BannedUser', 'banned users'),
(1, 'admin', 'admin who can manage'),
(2, 'Content creator', 'update scores'),
(3, 'user', 'login retrive');

-- --------------------------------------------------------

--
-- Table structure for table `wicketkeeper`
--

CREATE TABLE IF NOT EXISTS `wicketkeeper` (
  `player_id` int(11) NOT NULL DEFAULT '0',
  `stumps` int(11) DEFAULT NULL,
  `catches` int(11) DEFAULT NULL,
  `max_dismissals` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `player_id_wicketkeeper_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wicketkeeper`
--

INSERT INTO `wicketkeeper` (`player_id`, `stumps`, `catches`, `max_dismissals`) VALUES
(8, 23, 54, 4),
(21, 2, 11, 2),
(38, 12, 30, 3),
(57, 4, 12, 4),
(58, 7, 9, 2),
(59, 23, 61, 4),
(60, 7, 17, 3),
(70, 2, 11, 3),
(78, 5, 2, 2),
(114, 4, 10, 2),
(122, 4, 3, 2),
(147, 22, 39, 4),
(172, 9, 34, 5),
(173, 11, 42, 3),
(207, 10, 41, 3),
(214, 16, 51, 4);

-- --------------------------------------------------------

--
-- Structure for view `numberofrunnerss`
--
DROP TABLE IF EXISTS `numberofrunnerss`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `numberofrunnerss` AS select count(1) AS `nrunners`,`team`.`team_id` AS `team_id` from (`team` join `season`) where (`team`.`team_id` = `season`.`winner`) group by `team`.`team_id`;

-- --------------------------------------------------------

--
-- Structure for view `numberofwins`
--
DROP TABLE IF EXISTS `numberofwins`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `numberofwins` AS select count(1) AS `nwins`,`team`.`team_id` AS `team_id` from (`team` join `season`) where (`team`.`team_id` = `season`.`winner`) group by `team`.`team_id`;

-- --------------------------------------------------------

--
-- Structure for view `playerbatsemen`
--
DROP TABLE IF EXISTS `playerbatsemen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `playerbatsemen` AS select `p`.`player_name` AS `p1`,`p`.`Matches_played` AS `p2`,`p`.`Innings_played` AS `p3`,`b`.`average` AS `b1`,`b`.`hundreds` AS `b2`,`b`.`fifties` AS `b3`,`b`.`highest` AS `b4`,`b`.`runs` AS `b5`,`b`.`notouts` AS `b6`,`b`.`strikerate` AS `b7`,`p`.`team_id` AS `team_id` from (`player` `p` join `batsmen` `b`) where (`p`.`player_id` = `b`.`player_id`);

-- --------------------------------------------------------

--
-- Structure for view `playerbowler`
--
DROP TABLE IF EXISTS `playerbowler`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `playerbowler` AS select `p`.`player_name` AS `p1`,`p`.`Matches_played` AS `p2`,`p`.`Innings_played` AS `p3`,`b`.`economy` AS `bw1`,`b`.`maidens` AS `bw2`,`b`.`overs` AS `bw3`,`b`.`runs` AS `bw4`,`b`.`best_bowling` AS `bw5`,`b`.`wickets` AS `bw6`,`p`.`team_id` AS `team_id` from (`player` `p` join `bowler` `b`) where (`p`.`player_id` = `b`.`player_id`);

-- --------------------------------------------------------

--
-- Structure for view `playercaptain`
--
DROP TABLE IF EXISTS `playercaptain`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `playercaptain` AS select `p`.`player_name` AS `p1`,`p`.`Matches_played` AS `p2`,`p`.`Innings_played` AS `p3`,`b`.`term` AS `c1`,`b`.`wins` AS `c2`,`b`.`losses` AS `c3`,`p`.`team_id` AS `team_id` from (`player` `p` join `captain` `b`) where (`p`.`player_id` = `b`.`player_id`);

-- --------------------------------------------------------

--
-- Structure for view `playerwk`
--
DROP TABLE IF EXISTS `playerwk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `playerwk` AS select `p`.`player_name` AS `p1`,`p`.`Matches_played` AS `p2`,`p`.`Innings_played` AS `p3`,`w`.`stumps` AS `w1`,`w`.`catches` AS `w2`,`w`.`max_dismissals` AS `w3`,`p`.`team_id` AS `team_id` from (`player` `p` join `wicketkeeper` `w`) where (`p`.`player_id` = `w`.`player_id`);

-- --------------------------------------------------------

--
-- Structure for view `seasondet`
--
DROP TABLE IF EXISTS `seasondet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `seasondet` AS select `s`.`year` AS `Year`,`s`.`No_of_teams_played` AS `notp`,`t1`.`name` AS `winner`,`t2`.`name` AS `name`,`p`.`player_name` AS `player_name`,`s`.`orange_cap` AS `orange_cap`,`s`.`purple_cap` AS `runner` from (((`season` `s` join `team` `t1`) join `team` `t2`) join `player` `p`) where ((`s`.`winner` = `t1`.`team_id`) and (`s`.`runner` = `t2`.`team_id`) and (`p`.`player_id` = `s`.`player_of_season`));

-- --------------------------------------------------------

--
-- Structure for view `seasonmatches`
--
DROP TABLE IF EXISTS `seasonmatches`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `seasonmatches` AS select `t1`.`name` AS `team1`,`t2`.`name` AS `team2`,`t3`.`name` AS `winner`,`i`.`season` AS `season`,`i`.`man_of_match` AS `man_of_match` from (((`iplmatch` `i` join `team` `t1`) join `team` `t2`) join `team` `t3`) where ((`i`.`team1` = `t1`.`team_id`) and (`i`.`team2` = `t2`.`team_id`) and (`i`.`winner` = `t3`.`team_id`));

-- --------------------------------------------------------

--
-- Structure for view `seasonteams`
--
DROP TABLE IF EXISTS `seasonteams`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `seasonteams` AS (select distinct `t`.`name` AS `name`,`m`.`season` AS `season` from (`iplmatch` `m` join `team` `t`) where (`t`.`team_id` = `m`.`team1`)) union (select distinct `t`.`name` AS `name`,`m`.`season` AS `season` from (`iplmatch` `m` join `team` `t`) where (`t`.`team_id` = `m`.`team2`));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batsmen`
--
ALTER TABLE `batsmen`
  ADD CONSTRAINT `batsmen_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `bowler`
--
ALTER TABLE `bowler`
  ADD CONSTRAINT `bowler_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `captain`
--
ALTER TABLE `captain`
  ADD CONSTRAINT `captain_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `iplmatch`
--
ALTER TABLE `iplmatch`
  ADD CONSTRAINT `iplmatch_ibfk_1` FOREIGN KEY (`team1`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `iplmatch_ibfk_2` FOREIGN KEY (`team2`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `iplmatch_ibfk_3` FOREIGN KEY (`season`) REFERENCES `season` (`year`);

--
-- Constraints for table `livescore`
--
ALTER TABLE `livescore`
  ADD CONSTRAINT `livescore_ibfk_1` FOREIGN KEY (`match_number`) REFERENCES `iplmatch` (`match_number`),
  ADD CONSTRAINT `livescore_ibfk_2` FOREIGN KEY (`season`) REFERENCES `season` (`year`),
  ADD CONSTRAINT `livescore_ibfk_3` FOREIGN KEY (`batsman1`) REFERENCES `batsmen` (`player_id`),
  ADD CONSTRAINT `livescore_ibfk_4` FOREIGN KEY (`batsman2`) REFERENCES `batsmen` (`player_id`),
  ADD CONSTRAINT `livescore_ibfk_5` FOREIGN KEY (`bowler`) REFERENCES `bowler` (`player_id`),
  ADD CONSTRAINT `livescore_ibfk_6` FOREIGN KEY (`team1`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `livescore_ibfk_7` FOREIGN KEY (`team2`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`team_id`);

--
-- Constraints for table `season`
--
ALTER TABLE `season`
  ADD CONSTRAINT `season_ibfk_1` FOREIGN KEY (`winner`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `season_ibfk_2` FOREIGN KEY (`runner`) REFERENCES `team` (`team_id`),
  ADD CONSTRAINT `season_ibfk_3` FOREIGN KEY (`player_of_season`) REFERENCES `player` (`player_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usertypeid`) REFERENCES `user_type` (`userTypeID`);

--
-- Constraints for table `wicketkeeper`
--
ALTER TABLE `wicketkeeper`
  ADD CONSTRAINT `wicketkeeper_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
