-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2021 at 07:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fooddesk_net`
--

-- --------------------------------------------------------

--
-- Table structure for table `used_nonfood_products`
--

CREATE TABLE `used_nonfood_products` (
  `id` int(11) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `company_id` varchar(50) NOT NULL,
  `nonfood_product_id` varchar(50) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `date_added` date NOT NULL,
  `date_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `used_nonfood_products`
--

INSERT INTO `used_nonfood_products` (`id`, `product_id`, `company_id`, `nonfood_product_id`, `amount`, `price`, `date_added`, `date_updated`) VALUES
(162, '878768', '87', '186', '40', 0, '2021-03-17', '2021-03-17'),
(164, '888226', '87', '184', '2', 12, '2021-03-17', '2021-03-23'),
(177, '861433', '87', '186', '400', 0, '2021-03-17', '2021-03-17'),
(195, '875781', '87', '184', '200', 0, '2021-03-18', '2021-03-22'),
(200, '878768', '87', '185', '300', 0, '2021-03-18', '0000-00-00'),
(201, '878768', '87', '184', '50', 0, '2021-03-18', '0000-00-00'),
(202, '861433', '87', '185', '300', 0, '2021-03-18', '0000-00-00'),
(206, '888209', '87', '185', '30', 0, '2021-03-18', '0000-00-00'),
(209, '875781', '87', '186', '20', 0, '2021-03-19', '2021-03-22'),
(210, '20717', '87', '185', '40', 0, '2021-03-22', '2021-03-22'),
(212, '857456', '87', '185', '100', 43.33, '2021-03-22', '2021-03-22'),
(213, '857456', '87', '184', '20', 12, '2021-03-22', '2021-03-22'),
(214, '857456', '87', '187', '68', 0, '2021-03-22', '0000-00-00'),
(215, '888226', '87', '186', '400', 140, '2021-03-23', '0000-00-00'),
(216, '888216', '87', '185', '30', 0, '2021-03-26', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `used_nonfood_products`
--
ALTER TABLE `used_nonfood_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `used_nonfood_products`
--
ALTER TABLE `used_nonfood_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
