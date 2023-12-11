-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 10:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `self_orderfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `food_id`) VALUES
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `id` int(20) NOT NULL,
  `initial_date` date NOT NULL,
  `final_date` date NOT NULL,
  `reply` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback`, `id`, `initial_date`, `final_date`, `reply`) VALUES
(3, 'fdfghgghj', 52, '2023-11-01', '2025-11-23', 'df'),
(4, 'fdfghgghj', 52, '2023-11-01', '2023-11-09', 'fhgfhg'),
(5, 'good', 51, '0000-00-00', '0000-00-00', ''),
(6, 'verygood', 52, '2023-11-25', '0000-00-00', ''),
(7, '', 52, '2023-11-27', '0000-00-00', ''),
(8, 'erryh', 52, '2023-11-27', '0000-00-00', ''),
(9, 'good', 51, '2023-11-27', '0000-00-00', ''),
(10, 'verygood', 53, '2023-11-28', '0000-00-00', ''),
(11, 'verygood ', 52, '2023-11-29', '0000-00-00', ''),
(12, 'ffggh', 77, '2023-12-01', '0000-00-00', ''),
(13, 'verygood ', 78, '2023-12-04', '0000-00-00', ''),
(16, 'verygood', 78, '0000-00-00', '0000-00-00', ''),
(17, 'hloo', 78, '2023-12-04', '0000-00-00', ''),
(18, 'good', 78, '2023-12-04', '0000-00-00', ''),
(19, 'fghjj', 82, '2023-12-06', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE `food_details` (
  `food_id` int(11) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `food_name` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `ingredients` varchar(50) NOT NULL,
  `preparationtime` varchar(20) NOT NULL,
  `price` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_details`
--

INSERT INTO `food_details` (`food_id`, `photo`, `food_name`, `category`, `ingredients`, `preparationtime`, `price`) VALUES
(6, '7294dc47-640c-42f8-838e-61c363bb5d9b.png', 'chicken biriyani', '', 'chicken , rice', '02:00', 150),
(8, 'cheeseburger.webp', 'cheese burger', '', 'cheese,chicken,buns,letuse,', '00:30', 150),
(9, '7294dc47-640c-42f8-838e-61c363bb5d9b.png', 'biriyani', '', 'chicken , rice', '02:00', 150),
(10, 'cheeseburger.webp', 'burger', '', 'bun,vegitables', '00:20', 80),
(11, 'building.jpg', 'chicken biriyani', '', 'chicken , rice', '02:00', 150),
(12, '3.jpeg', 'pizza', '', 'onion,mushroom', '00:30', 150),
(13, '4.jpeg', 'chicken pizza', 'pizza', 'onion,mushroom', '00:30', 150),
(14, 'pizza.jpg', 'pizza', 'pizza', 'onion,mushroom', '00:30', 170),
(15, 'burger1.jpg', 'burger', 'burger', 'cheese,chicken,buns,letuse,', '00:30', 90),
(16, 'cola.jpg', 'cola', 'drinks', 'water,colaflavour', '00:30', 45);

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `order_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`order_id`, `id`, `food_id`, `order_date`) VALUES
(18, 39, 6, '2023-11-21'),
(19, 39, 8, '2023-11-21'),
(22, 39, 14, '2023-11-22'),
(23, 39, 13, '2023-11-22'),
(24, 39, 13, '2023-11-22'),
(25, 39, 10, '2023-11-22'),
(28, 41, 13, '2023-11-23'),
(29, 44, 8, '2023-11-23'),
(30, 44, 8, '2023-11-23'),
(31, 44, 16, '2023-11-23'),
(32, 44, 8, '2023-11-23'),
(34, 52, 8, '2023-11-24'),
(38, 51, 6, '2023-11-27'),
(39, 53, 6, '2023-11-28'),
(40, 53, 10, '2023-11-28'),
(41, 64, 8, '2023-12-01'),
(42, 64, 9, '2023-12-01'),
(44, 77, 8, '2023-12-01'),
(45, 53, 8, '2023-12-01'),
(46, 78, 8, '2023-12-04'),
(47, 78, 6, '2023-12-05'),
(48, 81, 8, '2023-12-05'),
(50, 81, 6, '2023-12-05'),
(55, 82, 13, '2023-12-08'),
(56, 82, 6, '2023-12-08'),
(57, 82, 8, '2023-12-08'),
(59, 81, 6, '2023-12-11'),
(60, 81, 6, '2023-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `Email`, `Password`) VALUES
(20, 'faheem@gmail.com', '123'),
(21, 'faheem@gmail.com', '123'),
(22, 'faheem@gmail.com', '123'),
(23, 'faheem@gmail.com', '123'),
(24, 'martin@gmail.com', '123'),
(25, '', ''),
(26, 'martinjames@gmail.co', '123'),
(27, 'sreyas@gmail.com', '123'),
(28, 'thyagu@gmail.com', '123'),
(29, 'rahibaazeez@gmail.co', '1234'),
(30, '', ''),
(31, '', ''),
(32, '', ''),
(33, 'arun@gmail.com', '1234'),
(34, '', ''),
(35, 'rahi@gmail.com', '124'),
(36, 'nafih@gmail.com', '123'),
(37, 'aju@gmail.com', '12334'),
(38, 'mk', '1234'),
(39, 'mk@gmail.com', '1234'),
(40, 'martin@gmail.com', '123'),
(41, 'adhi@gmail.com', '123'),
(42, 'rizwan@gmail.com', '1234'),
(43, 'adhi@gmail.com', ''),
(44, 'adhi@gmail.com', '1234'),
(45, 'adhi@gmail.com', '1234'),
(46, '', ''),
(47, 'adhi@gmail.com', '1234'),
(48, 'martin@gmail.com', '123'),
(49, 'rahiba@gmail.com', '123'),
(50, 'richu@gmail.co', '123456'),
(51, 'raju@gmail.com', '123456'),
(52, 'ajay@gmail.com', '123456'),
(53, 'anju@gmail.com', '123456'),
(54, 'anu@gmail.com', '123456'),
(55, 'anu@gmail.com', '123456'),
(56, 'anu@gmail.com', '123456'),
(57, 'anu@gmail.com', '123456'),
(58, 'anu@gmail.com', '123456'),
(59, 'anu@gmail.com', '123456'),
(60, 'anu@gmail.com', '123456'),
(61, 'anu@gmail.com', '123456'),
(62, 'anu@gmail.com', '123456'),
(63, 'anu@gmail.com', '123456'),
(64, 'rr@gmail.com', '123456'),
(65, 'rr@gmail.com', '123456'),
(66, 'rr@gmail.com', '123456'),
(67, 'rr@gmail.com', '123456'),
(68, '', ''),
(69, '', ''),
(70, '', ''),
(71, '', ''),
(72, '', ''),
(73, '', ''),
(74, '', ''),
(75, '', ''),
(76, 'rr@gmail.com', '123456'),
(77, 'rb@gmail.com', '123456'),
(78, 'bhi@gmail.com', '123456'),
(79, '', ''),
(80, 'sreyas@gmail.com', '123456'),
(81, 'faheem@gmail.com', '123456'),
(82, 'jabir@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Phonenumber` bigint(10) NOT NULL,
  `Photo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `Name`, `Email`, `Password`, `Phonenumber`, `Photo`) VALUES
(36, 'nafih', 'nafih@gmail.com', '123', 7558885017, '1000003820.jpg'),
(37, 'aju', 'aju@gmail.com', '12334', 7558885017, '30413b5d-12b2-4b9c-b130-d57ae89a6d296697454669319258686.jpg'),
(39, 'jabir', 'mk@gmail.com', '1234', 8533226677, '91a87380-ee17-40ec-8200-a9c9de07f5fc342195251022102760.jpg'),
(41, 'adhi', 'adhi@gmail.com', '123', 7558885017, '59d014fc-e0ba-4ed3-96f6-5df1dcdbef7f6121619925051521298.jpg'),
(42, 'rizwan', 'rizwan@gmail.com', '1234', 9746885560, '1000004236.jpg'),
(44, 'adhi', 'adhi@gmail.com', '1234', 7558885017, 'person2.png'),
(45, 'adhi', 'adhi@gmail.com', '1234', 7558885017, 'person2.png'),
(47, 'adhi', 'adhi@gmail.com', '1234', 7558885017, 'person2.png'),
(48, 'martin', 'martin@gmail.com', '123', 7558885017, '1000004233.jpg'),
(49, 'rahiba', 'rahiba@gmail.com', '123', 7558885017, 'b192fb84-5cd4-4fd3-92a4-066a8d56474b7506025507685763252.jpg'),
(50, 'richu', 'richu@gmail.co', '123456', 9746885560, '1000004230.jpg'),
(51, 'raju', 'raju@gmail.com', '123456', 9746885560, '1000004316.jpg'),
(52, 'ajay', 'ajay@gmail.com', '123456', 9746885560, '855de520-b66e-44d2-9316-265f8f5303448680395714527038864.jpg'),
(53, 'anju', 'anju@gmail.com', '123456', 9746885560, 'b907f408-18b5-4d7b-9431-914eee19e8787019408276490076620.jpg'),
(54, 'anu', 'anu@gmail.com', '123456', 0, '184f4867-4a68-4be3-bd92-d80c8b2904591587008364993287.jpg'),
(55, 'anu', 'anu@gmail.com', '123456', 0, '184f4867-4a68-4be3-bd92-d80c8b2904591587008364993287.jpg'),
(56, 'anu', 'anu@gmail.com', '123456', 0, '184f4867-4a68-4be3-bd92-d80c8b2904591587008364993287.jpg'),
(57, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(58, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(59, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(60, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(61, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(62, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(63, 'anu', 'anu@gmail.com', '123456', 0, '1000004469.jpg'),
(64, 'rr', 'rr@gmail.com', '123456', 7558885017, '1000004469.jpg'),
(65, 'rr', 'rr@gmail.com', '123456', 7558885017, '1000004469.jpg'),
(66, 'rr', 'rr@gmail.com', '123456', 7558885017, '1000004469.jpg'),
(67, 'rr', 'rr@gmail.com', '123456', 7558885017, '1000004469.jpg'),
(76, 'rr', 'rr@gmail.com', '123456', 7558885017, '09d877dd-76a8-41b0-a6bb-ec4eb0c7c6204857101635319296932.jpg'),
(77, 'rb', 'rb@gmail.com', '123456', 7558885017, '1000004469.jpg'),
(78, 'abhi', 'bhi@gmail.com', '123456', 9746885560, '1000004630.jpg'),
(79, '', '', '', 0, ''),
(80, 'sreyas', 'sreyas@gmail.com', '123456', 7558885017, 'person4.jpeg'),
(81, 'faheem', 'faheem@gmail.com', '123456', 7558885017, '1000004628.jpg'),
(82, 'Jabir MK', 'jabir@gmail.com', '123456', 858995227, '52dc47ef-0118-4b7e-ba38-553bb27961d26899427317359131406.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `food_id` (`food_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `food_details`
--
ALTER TABLE `food_details`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `food_order`
--
ALTER TABLE `food_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `food_details`
--
ALTER TABLE `food_details`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `food_order`
--
ALTER TABLE `food_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_details` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_order`
--
ALTER TABLE `food_order`
  ADD CONSTRAINT `food_order_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food_details` (`food_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_order_ibfk_2` FOREIGN KEY (`id`) REFERENCES `user_registration` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
