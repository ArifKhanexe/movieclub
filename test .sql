-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 12:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `m_id` int(3) NOT NULL,
  `movie_name` varchar(235) NOT NULL,
  `movie_desc` varchar(500) NOT NULL,
  `movie_lang` varchar(30) NOT NULL,
  `movie_price` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`m_id`, `movie_name`, `movie_desc`, `movie_lang`, `movie_price`) VALUES
(1, 'Sholey', 'The film is about two criminals, Veeru (Dharmendra) and Jai (Amitabh Bachchan), hired by a retired police officer (Sanjeev Kumar) to capture the ruthless dacoit Gabbar Singh (Amjad Khan). ... Sholay is considered a classic and one of the best Indian films.', 'Hindi -2D', 500),
(4, 'Avengers End Game', 'Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers.', 'English -2D', 450),
(5, 'Shang-Chi and the Legend of the Ten Rings', 'In the film, Shang-Chi is forced to confront his past when his father Wenwu (Leung), the leader of the Ten Rings organization, draws Shang-Chi and his sister Xialing (Zhang) into a search for a mythical village. It has grossed $324 million worldwide, making it the sixth-highest-grossing film of 2021.', 'English -2D', 500),
(6, 'tom & jerry', 'mksmck sncsk sadas', 'English', 500);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sno` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(35) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `pass` varchar(35) NOT NULL,
  `cpass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`sno`, `username`, `email`, `mobile`, `pass`, `cpass`) VALUES
(1, 'snehasish', 'weishenpov@gmail.com', '8777417874', '123', '123'),
(2, 'prem', 'prem.jai@gmail.com', '9804280066', '123', '123'),
(4, 'aman', 'aman@gmail.com', '9876543210', '123', '123'),
(5, 'bikash', 'bikash@gmail.com', '9807654813', '123', '123'),
(6, 'baman', 'baman@gmail.com', '6254975122', '123', '123'),
(8, 'amit', 'amit@gmail.com', '9804257812', '123', '123'),
(9, 'harsh', 'harsh@gmail.com', '7845651325', '123', '123'),
(12, 'anil', 'anil@gmail.com', '9804257841', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `registration_admin`
--

CREATE TABLE `registration_admin` (
  `sno` int(3) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(35) CHARACTER SET latin1 NOT NULL,
  `mobile` varchar(10) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(35) CHARACTER SET latin1 NOT NULL,
  `cpass` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_admin`
--

INSERT INTO `registration_admin` (`sno`, `username`, `email`, `mobile`, `pass`, `cpass`) VALUES
(1, 'admin1', 'admin1@gmail.com', '9876543210', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(5) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(35) NOT NULL,
  `movie_name` varchar(235) NOT NULL,
  `name_on_card` varchar(255) NOT NULL,
  `card_number` int(16) NOT NULL,
  `exp_month` varchar(15) NOT NULL,
  `exp_year` varchar(4) NOT NULL,
  `cvv` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `full_name`, `email`, `movie_name`, `name_on_card`, `card_number`, `exp_month`, `exp_year`, `cvv`) VALUES
(3, 'prem chand jaiswal', 'prem.jai@gmail.com', 'Sholey', 'prem chand jaiswal', 2147483647, 'jan', '2412', 123),
(4, 'arif khan', 'prem.jai@gmail.com', 'Sholey', 'arif khan', 2147483647, 'feb', '2312', 123),
(5, 'arif khan', 'prem.jai@gmail.com', 'Sholey', 'arif khan', 2147483647, 'feb', '2312', 123),
(6, 'umesh yadav', 'prem.jai@gmail.com', 'Sholey', 'umesh yadav', 2147483647, 'feb', '2312', 123),
(7, 'aman gupta', 'aman@gmail.com', 'Sholey', 'Aman Gupta', 2147483647, 'dec', '2029', 123),
(8, 'aman gupta', 'aman@gmail.com', 'Sholey', 'Aman Gupta', 2147483647, 'dec', '2029', 123),
(11, 'arif', 'arifchor@khankimaagi', 'Sholey', 'adsf', 2147483647, 'jan', '2098', 123),
(12, 'arif', 'arifchor@khankimaagi', 'Sholey', 'adsf', 2147483647, 'jan', '2098', 123),
(13, 'prem jai', 'prem.jai@gmail.com', 'Sholey', 'prem jai', 2147483647, 'june', '2046', 222),
(14, 'hudu skosk', 'prem.jai@gmail.com', 'Sholey', 'uhcudnzc dcjv', 2147483647, 'kal', '0938', 123),
(15, 'scpdx scsax', 'prem.jai@gmail.com', 'Sholey', 'scs sac ', 2147483647, 'xfasv', '0125', 666),
(16, 'de de', 'prem.jai@gmail.com', 'Sholey', 'deaczx', 13144, 'jac', '1234', 124),
(17, 'prem chand jaiswal', 'prem.jai@gmail.com', 'Sholey', 'prem ', 2147483647, 'jan', '2022', 111),
(18, 'Prem', 'prem.jai@gmail.com', 'Avengers End Game', 'Prem', 2147483647, '12', '2000', 121),
(19, 'Prem asdxw', 'prem.jai@gmail.com', 'Avengers End Game', 'prem skzmxkm', 2147483647, 'jan', '2013', 154),
(20, 'Aman', 'aman@gmail.com', 'Sholey', 'Aman sincs', 12445, 'jan', '2012', 123),
(21, 'Prem  jsnjcnd x', 'prem.jai@gmail.com', 'Avengers End Game', 'wqfvrg dfsd', 123524, 'ksa', '2021', 154),
(22, 'prem kasknc', 'prem.jai@gmail.com', 'Sholey', 'ocanjs  dv as', 2147483647, 'jan', '2442', 123),
(23, 'Prem', 'prem.jai@gmail.com', 'Avengers End Game', 'prensc emfc', 2147483647, 'feb', '2000', 123),
(24, 'Prem chasdvfg', 'prem.jai@gmail.com', 'Avengers End Game', 'Preas  cfvf ', 2147483647, 'jan', '2022', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `registration_admin`
--
ALTER TABLE `registration_admin`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `m_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `registration_admin`
--
ALTER TABLE `registration_admin`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
