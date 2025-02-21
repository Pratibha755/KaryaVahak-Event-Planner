-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 05:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `reviewlink` varchar(50) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(15, 36, 'Renuka', 'renuka@gmail.com', '7557998901', 'Hello Sir, I am a Mehandi artist (Bandra). I want to add my service to your website.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(22, 33, 'Pratibha Pagar', '9988771212', 'pratibha@gmail.com', 'cash', 'flat no. 204, 05, Yeola, India - 423401', ', Do My Events Production (1) ', 200000, '01-May-2023', 'completed'),
(23, 36, 'Renuka', '3434565678', 'renuka@gmail.com', 'cash', 'flat no. 301, 08, Mumbai, India - 876543', ', LK Decors, Chennai (1) ', 150000, '01-May-2023', 'pending'),
(24, 38, 'Renuka', '7558668185', 'renuka@gmail.com', 'cash', 'flat no. 301, 08, Mumbai, India - 876543', ', LK Decors, Chennai (1) ', 150000, '27-May-2023', 'pending'),
(25, 38, '', '', '', 'cash', 'flat no. , , ,  - ', ', LK Decors, Chennai (1) , Do My Events Production (1) ', 350000, '27-May-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `workingsince` int(11) NOT NULL,
  `services` varchar(500) NOT NULL,
  `inservices` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `reviewlink` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `workingsince`, `services`, `inservices`, `image`, `reviewlink`) VALUES
(115, 'LK Decors, Chennai', 'I, Ganesh, the founder of LK Decors. Based in Chennai, we have been working since 2021 and have covered more than 50 weddings. We are an event management & wedding planning company dedicated to providing customers with a wide assortment of event management services for all sorts of corporate and personal events. Every client and bespoke wedding service that we provide is unique, therefore wedd... \r\n', 150000, 2021, 'DJ/Music, Decor, Venue Booking, Photography Services', 'Decor, Venue Booking, Photography Services', 'EC11.jpg', 'LK_decors.php'),
(116, 'Do My Events Production', 'If you\'re looking for a talented group of expert wedding planners in the city, Do My Events Production is a name you shouldn\'t overlook. They will be with you at all times, providing first-rate services and making every effort to make your wedding unique. They would go to great lengths to make your wedding an extravagant affair to be remembered for years to come. With their years of experience, you can be confident that they will make your dream wedding a reality.\r\n', 200000, 2020, 'DJ/Music, Decor, Venue Booking, Photography Services', 'DJ/Music, Decor, Venue Booking, Photography Services', 'EC30.jpg', 'domyevents.php'),
(117, 'Kalakaar Events', 'Kalakaar Events is one of the premium and well-respected event management companies in Pune. This company offers the best when it comes to wedding planning and management. It covers all the aspects of organising a wedding, including everything ranging from planning to designing and execution. If you are looking for a one-stop solution for all your wedding requirements, then Kalakaar Events is the choice that you ought to make.\r\n', 300000, 2015, 'DJ/Music, Decor, Venue Booking, Photography Services', 'DJ/Music, Decor, Venue Booking, Photography Services', 'BP15.jpg', 'kalakaar.php');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(32, 'admin123', 'admin123@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin'),
(33, 'pratibha', 'pratibha@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(34, 'Gauri', 'gauri123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(35, 'Bhoomi', 'bhoomi@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(36, 'Renuka', 'renuka@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(37, 'Dipti', 'dipti@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(38, 'Pratibha Pagar', 'pagarpratibha123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(76, 33, 115, 'LK Decors, Chennai', 150000, 'EC11.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
