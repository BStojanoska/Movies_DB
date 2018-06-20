-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2018 at 01:31 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Challenge_05`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `year_of_birth` date DEFAULT NULL,
  `agent_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `lastname`, `nickname`, `year_of_birth`, `agent_code`) VALUES
(1, 'Chris', 'Evans', NULL, '1981-06-13', 478),
(2, 'Robert', 'Downey', 'Jr.', '1965-04-04', 5067),
(3, 'Chris', 'Hemsworth', NULL, '1983-08-11', 507),
(4, 'Tom', 'Hiddleston', 'Loki', '1981-02-09', 407),
(5, 'Tom', 'Holland', NULL, '1996-06-01', 3076),
(6, 'Mark', 'Ruffalo', NULL, '1967-11-22', 3071),
(7, 'Chris', 'Pratt', NULL, '1979-06-21', 3006),
(8, 'Benedict', 'Cumberbatch', NULL, '1976-07-19', 2006),
(9, 'Chadwick', 'Boseman', NULL, '1977-11-29', 2676),
(10, 'Thandie', 'Newthon', NULL, '1972-11-06', 1676),
(11, 'Steven', 'Strait', NULL, '1986-03-23', 676),
(12, 'Tom', 'Ellis', NULL, '1978-11-17', 4005),
(13, 'Millie Bobbie', 'Brown', NULL, '2004-02-19', 123);

-- --------------------------------------------------------

--
-- Table structure for table `actors_movies`
--

CREATE TABLE `actors_movies` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `salary` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors_movies`
--

INSERT INTO `actors_movies` (`id`, `movie_id`, `actor_id`, `salary`) VALUES
(1, 1, 2, 3000000),
(2, 2, 6, 4000000),
(3, 3, 2, 6500000),
(4, 4, 3, 5000000),
(5, 5, 1, 4500000),
(6, 6, 2, 7000000),
(7, 7, 2, 8000000),
(8, 8, 4, 4000000),
(9, 9, 1, 5500000),
(10, 10, 7, 5000000),
(11, 11, 4, 3500000),
(12, 12, 1, 3500000),
(13, 13, 8, 6000000),
(14, 14, 7, 6000000),
(15, 15, 5, 4000000),
(16, 16, 6, 4000000),
(17, 17, 9, 7000000),
(18, 18, 5, 6500000),
(19, 19, 11, 3000000),
(20, 20, 10, 2000000),
(21, 21, 12, 4000000),
(22, 22, 13, 4500000),
(23, 4, 4, 3000000),
(24, 11, 1, 50000000),
(25, 6, 1, 7000000),
(26, 6, 4, 30000000);

-- --------------------------------------------------------

--
-- Table structure for table `critics`
--

CREATE TABLE `critics` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `login_code` int(11) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `critics`
--

INSERT INTO `critics` (`id`, `name`, `lastname`, `login_code`, `pass`) VALUES
(1, 'Taran', 'Adarsh', 5335, 'password'),
(2, 'James', 'Agee', 123456, 'passsecure'),
(3, 'Hollis', 'Alpert', 58954, 'login'),
(4, 'David', 'Ansen', 666666, 'crappymovies'),
(5, 'Michael', 'Atkinson', 3333, 'catcatdog');

-- --------------------------------------------------------

--
-- Table structure for table `critics_actorsmovies`
--

CREATE TABLE `critics_actorsmovies` (
  `id` int(11) NOT NULL,
  `critic_id` int(11) DEFAULT NULL,
  `actormovies_id` int(11) DEFAULT NULL,
  `acting` int(11) DEFAULT NULL,
  `dedication` int(11) DEFAULT NULL,
  `talent` int(11) DEFAULT NULL,
  `expression` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `critics_actorsmovies`
--

INSERT INTO `critics_actorsmovies` (`id`, `critic_id`, `actormovies_id`, `acting`, `dedication`, `talent`, `expression`) VALUES
(1, 4, 13, 8, 5, 7, 9),
(2, 3, 10, 7, 6, 9, 10),
(3, 1, 9, 9, 9, 8, 8),
(4, 5, 22, 7, 7, 7, 9),
(5, 2, 20, 9, 5, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `critics_movies`
--

CREATE TABLE `critics_movies` (
  `id` int(11) NOT NULL,
  `critic_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `critics_movies`
--

INSERT INTO `critics_movies` (`id`, `critic_id`, `movie_id`, `rating`) VALUES
(1, 1, 6, 8),
(2, 1, 10, 9),
(3, 1, 20, 7),
(4, 2, 11, 10),
(5, 2, 22, 7),
(6, 3, 2, 7),
(7, 4, 15, 7),
(8, 4, 19, 10),
(9, 5, 10, 5),
(10, 5, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `genre` varchar(32) DEFAULT NULL,
  `expertise` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `lastname`, `genre`, `expertise`) VALUES
(1, 'Jon', 'Favreau', 'sci-fi', 'special effects'),
(2, 'Louis', 'Leterrier', 'sci-fi', 'explosions'),
(3, 'Kenneth', 'Branagh', 'sci-fi', 'special effects'),
(4, 'Joe', 'Johnston', 'sci-fi', 'drama'),
(5, 'Shane', 'Black', 'sci-fi', 'special effects'),
(6, 'Alan', 'Taylor', 'sci-fi', 'space'),
(7, 'Joe', 'Russo', 'sci-fi', 'bear attacks'),
(8, 'Joss', 'Whedon', 'sci-fi', 'special effects'),
(9, 'Scott', 'Derricson', 'sci-fi', 'parralel universes'),
(10, 'James', 'Gunn', 'sci-fi', 'special effects'),
(11, 'Jon', 'Watts', 'sci-fi', 'spider webs'),
(12, 'Taika', 'Waititi', 'sci-fi', 'special effects'),
(13, 'Ryan', 'Coogler', 'sci-fi', 'special effects');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `premiere_city` varchar(32) DEFAULT NULL,
  `opening_week_sales` bigint(20) DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `director_salary` bigint(20) DEFAULT NULL,
  `sequel_group` int(11) DEFAULT NULL,
  `parts_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `movie_id`, `premiere_city`, `opening_week_sales`, `format`, `director_id`, `director_salary`, `sequel_group`, `parts_no`) VALUES
(1, 1, 'Los Angeles', 50000000, 2, 1, 150000, 1, 1),
(2, 2, 'Sydney', 100000000, 2, 2, 110000, NULL, NULL),
(3, 3, 'Holywood', 195000000, 2, 1, 190000, 1, 2),
(4, 4, 'Sydney', 230000000, 2, 3, 220000, 2, 1),
(5, 5, 'Los Angeles', 150000000, 2, 4, 195000, 3, 1),
(6, 6, 'Los Angeles', 195000000, 2, 8, 300000, 4, 1),
(7, 7, 'Paris', 200000000, 2, 5, 190000, 1, 3),
(8, 8, 'London', 240000000, 2, 6, 1500000, 2, 2),
(9, 9, 'Los Angeles', 16300000, 1, 7, 1500000, 3, 2),
(10, 10, 'Los Angeles', 25300000, 2, 10, 1200000, 5, 1),
(11, 11, 'Los Angeles', 26000000, 2, 8, 2000000, 4, 2),
(12, 12, 'Los Angeles', 29000000, 2, 7, 2100000, 3, 3),
(13, 13, 'Hong Kong', 27000000, 2, 9, 2400000, NULL, NULL),
(14, 14, 'Tokyo', 29000000, 2, 10, 2000000, 5, 2),
(15, 15, 'Los Angeles', 29000000, 2, 11, 2900000, NULL, NULL),
(16, 16, 'Los Angeles', 30000000, 2, 12, 2300000, 2, 3),
(17, 17, 'Los Angeles', 33000000, 2, 13, 30000000, NULL, NULL),
(18, 18, 'Los Angeles', 25500000, 2, 7, 2650000, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `format`
--

CREATE TABLE `format` (
  `id` int(11) NOT NULL,
  `format` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `format`
--

INSERT INTO `format` (`id`, `format`) VALUES
(1, '2D'),
(2, '3D');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `premiere_date` date DEFAULT NULL,
  `genre` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `production` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `premiere_date`, `genre`, `country`, `production`) VALUES
(1, 'Iron Man', '2008-05-02', 'sci-fi', 'United States', 'Marvel'),
(2, 'The Incredible Hulk', '2008-06-13', 'sci-fi', 'United States', 'Marvel'),
(3, 'Iron Man 2', '2010-05-07', 'sci-fi', 'United States', 'Marvel'),
(4, 'Thor', '2011-05-06', 'sci-fi', 'United States', 'Marvel'),
(5, 'Captain America: The First Avenger', '2011-07-22', 'sci-fi', 'United States', 'Marvel'),
(6, 'Marvel\'s The Avengers', '2012-05-04', 'sci-fi', 'United States', 'Marvel'),
(7, 'Iron Man 3', '2013-05-03', 'sci-fi', 'United States', 'Marvel'),
(8, 'Thor: The Dark World', '2013-11-08', 'sci-fi', 'United States', 'Marvel'),
(9, 'Captain America: The Winter Soldier', '2014-04-04', 'sci-fi', 'United States', 'Marvel'),
(10, 'Guardians of The Galaxy', '2015-08-01', 'sci-fi', 'United States', 'Marvel'),
(11, 'Avengers: Age of Ultron', '2015-05-01', 'sci-fi', 'United States', 'Marvel'),
(12, 'Captain America: CIvil War', '2016-05-06', 'sci-fi', 'United States', 'Marvel'),
(13, 'Doctor Strange', '2016-11-04', 'sci-fi', 'United States', 'Marvel'),
(14, 'Guardians of The Galaxy Vol. 2', '2017-05-05', 'sci-fi', 'United States', 'Marvel'),
(15, 'Spider-Man: Homecoming', '2017-07-07', 'sci-fi', 'United States', 'Marvel'),
(16, 'Thor: Ragnarok', '2017-11-03', 'sci-fi', 'United States', 'Marvel'),
(17, 'Black Panther', '2018-02-16', 'sci-fi', 'United States', 'Marvel'),
(18, 'Avengers: Infinity War', '2018-04-27', 'sci-fi', 'United States', 'Marvel'),
(19, 'The Expanse', '2015-12-14', 'sci-fi', 'United States', 'Penguin in a Parka'),
(20, 'Westworld', '2016-10-02', 'sci-fi', 'United States', 'HBO'),
(21, 'Lucifer', '2016-01-25', 'fantasy', 'United States', 'Warner Bros. Television'),
(22, 'Stranger Things', '2016-07-15', 'sci-fi', 'United States', '21 Laps Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `oscar_winners`
--

CREATE TABLE `oscar_winners` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `part_in_movie` varchar(32) DEFAULT NULL,
  `award_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oscar_winners`
--

INSERT INTO `oscar_winners` (`id`, `actor_id`, `movie_id`, `part_in_movie`, `award_year`) VALUES
(1, 1, 4, 'Thor', 2012),
(2, 8, 13, 'Dr. Strange', 2017),
(3, 9, 17, 'Black Panther', 2018),
(4, 8, 11, 'Dr. Strange', 2017),
(5, 7, 18, 'Star Lord', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `tv_station_premiere` varchar(64) DEFAULT NULL,
  `series_no` int(11) DEFAULT NULL,
  `episodes_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `movie_id`, `tv_station_premiere`, `series_no`, `episodes_no`) VALUES
(1, 19, 'Sci-Fi Channel', 3, 32),
(2, 20, 'HBO', 2, 17),
(3, 21, 'Fox', 3, 57),
(4, 22, 'Netflix', 2, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id4` (`movie_id`),
  ADD KEY `actor_id4` (`actor_id`);

--
-- Indexes for table `critics`
--
ALTER TABLE `critics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `critics_actorsmovies`
--
ALTER TABLE `critics_actorsmovies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `critic_id2` (`critic_id`),
  ADD KEY `actormovies_id` (`actormovies_id`);

--
-- Indexes for table `critics_movies`
--
ALTER TABLE `critics_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `critic_id` (`critic_id`),
  ADD KEY `movie_id5` (`movie_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `format` (`format`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oscar_winners`
--
ALTER TABLE `oscar_winners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_id3` (`actor_id`),
  ADD KEY `movie_id3` (`movie_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id2` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `actors_movies`
--
ALTER TABLE `actors_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `critics`
--
ALTER TABLE `critics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `critics_actorsmovies`
--
ALTER TABLE `critics_actorsmovies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `critics_movies`
--
ALTER TABLE `critics_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `format`
--
ALTER TABLE `format`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `oscar_winners`
--
ALTER TABLE `oscar_winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `actors_movies`
--
ALTER TABLE `actors_movies`
  ADD CONSTRAINT `actor_id4` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `movie_id4` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `critics_actorsmovies`
--
ALTER TABLE `critics_actorsmovies`
  ADD CONSTRAINT `actormovies_id` FOREIGN KEY (`actormovies_id`) REFERENCES `actors_movies` (`id`),
  ADD CONSTRAINT `critic_id2` FOREIGN KEY (`critic_id`) REFERENCES `critics` (`id`);

--
-- Constraints for table `critics_movies`
--
ALTER TABLE `critics_movies`
  ADD CONSTRAINT `critic_id` FOREIGN KEY (`critic_id`) REFERENCES `critics` (`id`),
  ADD CONSTRAINT `movie_id5` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `director_id` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`),
  ADD CONSTRAINT `format` FOREIGN KEY (`format`) REFERENCES `format` (`id`),
  ADD CONSTRAINT `movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `oscar_winners`
--
ALTER TABLE `oscar_winners`
  ADD CONSTRAINT `actor_id3` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `movie_id3` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `movie_id2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
