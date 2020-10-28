-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 05:11 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cus_care`
--

CREATE TABLE `cus_care` (
  `id` int(11) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cus_care`
--

INSERT INTO `cus_care` (`id`, `msg`) VALUES
(1, 'I had a problem.'),
(2, 'hello'),
(3, 'heyyyy'),
(4, 'my fave dress ');

-- --------------------------------------------------------

--
-- Table structure for table `ecart`
--

CREATE TABLE `ecart` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ecart`
--

INSERT INTO `ecart` (`id`, `name`, `image`, `price`, `discount`) VALUES
(1, 'MacBook Air', 'item1.png', 100000, 10),
(2, 'Iphone 11 pro', 'item2.png', 90000, 40),
(3, 'Beats HeadSet', 'item3.png', 20000, 20),
(4, 'Galaxy Tab', 'item4.jpg', 30000, 10),
(5, 'Tea-tree Facewash', 'item5.jpg', 600, 2),
(6, 'Body Butter', 'item6.jpg', 3000, 5),
(7, 'Home Fragrance', 'item7.png', 299, 5),
(8, 'Colorpop Eyeshadow', 'item8.jpg', 4000, 10),
(9, 'Floral dress', 'item9.jpg', 2500, 2),
(10, 'Polka Dot top', 'item10.jpg', 1000, 0),
(11, 'Mom Jeans', 'item11.jpg', 4500, 7),
(12, 'SweatShirt', 'item12.jpg', 3999, 10),
(13, 'Formal Shirt', 'item13.jpg', 1900, 5),
(14, 'Bomber Jacket', 'item14.jpg', 5999, 25),
(15, 'Irvin Jacket', 'item15.jpg', 5999, 15),
(16, 'Ripped Jeans', 'item16.jpg', 2750, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ecartjson`
--

CREATE TABLE `ecartjson` (
  `address` varchar(50) COLLATE utf8_bin NOT NULL,
  `phoneno` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ecartjson`
--

INSERT INTO `ecartjson` (`address`, `phoneno`, `email`) VALUES
('Basundhara,Dhaka', '+880-1234567899', 'ecart@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id` int(30) NOT NULL,
  `laptop_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `laptop_disprice` varchar(30) COLLATE utf8_bin NOT NULL,
  `laptop_price` varchar(30) COLLATE utf8_bin NOT NULL,
  `laptop_image` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id`, `laptop_name`, `laptop_disprice`, `laptop_price`, `laptop_image`) VALUES
(5, 'Lenovo (ThinkPad)', '60000', '53000', 'images/Laptop.png'),
(6, 'DELL', '45700', '40000', 'images/Laptop2.png'),
(7, 'Apple Macbook', '115000', '105000', 'images/Laptop3.png'),
(8, 'Microsoft Surface', '140000', '130000', 'images/Laptop4.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(1, 'rouza@gmail.com', '1111'),
(2, 'hasibur@gmail.com', '2222');

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `id` int(50) NOT NULL,
  `mobile_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `mobile_disprice` varchar(20) COLLATE utf8_bin NOT NULL,
  `mobile_price` varchar(30) COLLATE utf8_bin NOT NULL,
  `mobile_image` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`id`, `mobile_name`, `mobile_disprice`, `mobile_price`, `mobile_image`) VALUES
(1, 'Xiaomi Note 5 pro', '15500', '17000', 'images/mobile.png'),
(2, 'iPhone11 (Yellow)', '113000', '110500', 'images/mobile2.png'),
(3, 'iPhone11 (Black)', '110000', '105000', 'images/mobile3.png'),
(4, 'Samsung Galaxy Note 10', '100000', '85000', 'images/mobile4.png');

-- --------------------------------------------------------

--
-- Table structure for table `sitem`
--

CREATE TABLE `sitem` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitem`
--

INSERT INTO `sitem` (`id`, `name`, `image`, `price`, `discount`) VALUES
(1, 'MACBOOK AIR', '\"item1.png\"', 100000, 50),
(3, 'BEATS HEADSET\r\n\r\n', '\"item3.png\"', 6000, 70);

-- --------------------------------------------------------

--
-- Table structure for table `up_cus`
--

CREATE TABLE `up_cus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(11) NOT NULL DEFAULT 880
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up_cus`
--

INSERT INTO `up_cus` (`id`, `name`, `email`, `number`) VALUES
(33, '', 'bill@gmail.com', 880),
(34, '', 'ellis@gmail.com', 880),
(35, '', 'ellis@gmail.com', 880),
(36, '', 'bill@gmail.com', 880),
(37, '', 'ellis@gmail.com', 880),
(38, '', 'nick@gmail.com', 880),
(39, '', 'bill@gmail.com', 880),
(40, '', 'bill@gmail.com', 880),
(41, '', 'bill@gmail.com', 880),
(42, '', 'bill@gmail.com', 880),
(43, '', 'joye@gmail.com', 880),
(44, '', 'hasbyr@gmail.com', 880);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `phone` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `phone`) VALUES
(0, 'shafin', '$2y$10$gp/NKBMmm2f4zDvqNFbN/u4GiYuQkxjeNAq.n/3duZAIZGjXbbuB2', 'sas@mail.com', 123456789),
(0, 'shafin11', '$2y$10$1EHK.OszjpH6WYlFt7UuZ.AQTflL5VXjuv.X5usmo4ybCnGghQ3Lu', 'sas@maol', 121),
(0, 'shafin110', '$2y$10$AX25X2pEChE7DrKKLbhX..KpbN1QhquS0HouD9EOPQQhcGAvZ4Hpi', 'sas@maol', 121);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
