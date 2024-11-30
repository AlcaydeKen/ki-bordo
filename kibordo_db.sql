-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2024 at 06:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kibordo_db`
--
CREATE DATABASE IF NOT EXISTS `kibordo_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kibordo_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'CHERRY MX BLACK CLEAR TOP', 'switches', 1200, 'CHERRY_MX_BLACK_CLEAR-TOP-368x368.png'),
(2, 'CHERRY MX Clear', 'switches', 1200, 'CHERRY_MX_Clear-368x368.png'),
(3, 'CHERRY MX GREEN', 'switches', 1200, 'CHERRY_MX_GREEN-368x368.png'),
(4, 'CHERRY_MX_GREY', 'switches', 1200, 'CHERRY_MX_GREY-368x368.png'),
(5, 'MX RED', 'switches', 1100, 'img-productstage-mxRed@2x_100-368x368_100_mio.png'),
(6, 'MX SPEED', 'switches', 1100, 'img-productstage-mxSpeed@2x_100-368x368_100_mio.png'),
(7, 'MX2A BLACK NON RGB', 'switches', 4400, 'MX2A_Black_non_RGB-368x368.png'),
(8, 'MX2A BLUE NON RGB', 'switches', 4400, 'MX2A_Blue_non_RGB-368x368.png'),
(9, 'MX2A BROWN NON RGB', 'switches', 4400, 'MX2A_Brown_non_RGB-368x368.png'),
(10, 'MX2A RED NON RGB', 'switches', 4400, 'MX2A_Red_non_RGB-368x368.png'),
(11, 'MX2A SILENT BLACK NON RGB', 'switches', 2500, 'MX2A_Silent_Black_non_RGB-368x368.png'),
(12, 'MX2A SILENT RED NON RGB', 'switches', 2500, 'MX2A_Silent_Red_non_RGB-368x368.png'),
(13, 'MX2A SPEED SILVER NON RGB', 'switches', 1600, 'MX2A_Speed_Silver_non_RGB-368x368.png'),
(14, '16-Key Switch Tester', 'switches', 500, '16-Key-Switch-Tester-GX12.25-600x600.jpg'),
(15, 'Akko CS Air Switch', 'switches', 780, 'Air1-600x600.jpg'),
(16, 'Akko V3 Piano Pro Switch', 'switches', 780, 'Akko-V3-Piano-Pro-Switch-GX-600x600.jpg'),
(17, 'Akko CS Crystal Blue Switch', 'switches', 650, 'Crystal-Blue-600x600.jpg'),
(18, 'Akko CS Crystal Wine Red Switch', 'switches', 950, 'Crystal-Wine-Red-600x600.jpg'),
(19, 'Akko POM Brown Switch', 'switches', 780, 'POM-Brown-600x600.jpg'),
(20, 'TTC Gold Red V3 Switch', 'switches', 1000, 'TTC-Gold-Red-0-600x600.jpg'),
(21, 'Akko V3 Cream Black Pro Switch', 'switches', 670, 'V3-Cream-Black-Pro-600x600.jpg'),
(22, 'Akko V3 Cream Blue Pro Switch', 'switches', 500, 'V3-Cream-Blue-Pro-600x600.jpg'),
(23, 'Akko V3 Crystal Pro Switch', 'switches', 850, 'V3-Crystal-Pro-600x600.jpg'),
(24, 'Akko V3 Lavender Purple Pro Switch', 'switches', 550, 'V3-Lavender-Purple-Pro-600x600.jpg'),
(25, 'Akko V3 Matcha Green Pro Switch', 'switches', 550, 'V3-Matcha-Green-Pro-600x600.jpg'),
(26, 'Akko Fairy Switch', 'switches', 780, 'V3-Pro-Fairy-Silent-600x600.jpg'),
(27, 'Akko Penguin Switch', 'switches', 780, 'V3-Pro-Penguin-Silent-600x600.jpg'),
(28, 'Akko V3 Silver Pro Switch', 'switches', 780, 'V3-Silver-Pro-600x600.jpg'),
(29, 'Rock, Paper, Scissors and Praise Artisan Keycaps', 'keycaps', 550, 'Rock-Paper-Scissors-and-Praise-Novelty-Keys-600x600.jpg'),
(30, 'Cream Keycap Set(282-Key)', 'keycaps', 2250, 'Cream-AZ-600x600.jpg'),
(31, 'WOB Building Blocks Keycap Set(282-Key)', 'keycaps', 2250, 'WOB-AZ-600x600.jpg'),
(32, 'Warm Gray Keycap Set(132-key)', 'keycaps', 1950, 'Warm-Gray-AZ-600x600.jpg'),
(33, 'Doraemon Macaron Keycap Set(136-key)', 'keycaps', 4250, 'Doraemon-Macaron-AZ-600x600.jpg'),
(34, 'One Piece Wano Country Keycap Set(136-key)', 'keycaps', 4250, 'One-Piece-Wano-AZ-600x600.jpg'),
(35, 'Akko 9009 Dye-Sub Keycap Set', 'keycaps', 2250, '9009-Dye-Sub-AZ-600x600.jpg'),
(36, 'Palace Keycap Set (187-Key)', 'keycaps', 3750, 'Palace-AZ-600x600.jpg'),
(37, 'Kuromi Keycap Set', 'keycaps', 3900, 'Kuromi-Keycap-Set1-600x600.jpg'),
(38, 'Taiko no Tatsujin Keycap Set(137-Key)', 'keycaps', 3650, 'The-DrumMaster1-1-600x600.jpg'),
(39, 'Red Fuji Keycap Set(161-Key)', 'keycaps', 3650, 'Red-Fuji-600x600.jpg'),
(40, 'World Tour-Beijing Keycap Set', 'keycaps', 3350, 'World-Tour-Beijing-Keycap-Set-600x600.jpg'),
(41, 'World Tour Tokyo R2 Multi-Language SE(185-Key)', 'keycaps', 4450, 'R2-SP-Keycap-600x600.jpg'),
(42, 'SpongeBob Keycap Set(138-key)', 'keycaps', 3650, 'SpongeBob-Keycap-Set-X-600x600.jpg'),
(43, 'Black & Pink Keycap Set(155-key)', 'keycaps', 2800, 'Black-Pink-ASA-Low-Porfile-600x600.jpg'),
(44, '9009 Retro R2 Industrial Style Novelty Keycaps(38-Key)', 'keycaps', 850, '9009-R2-600x600.jpg'),
(45, 'MOD 007B HE', 'cases', 11200, 'MOD007B-HE-GX-600x600.jpg'),
(46, 'MOD 007 V3 VIA', 'cases', 8650, 'MOD007-V3-GX1-600x600.jpg'),
(47, 'SPR 75 Kit', 'cases', 9500, 'SPR-75-600x600.jpg'),
(48, '5075S VIA', 'cases', 3350, '5075-Via-2-600x600.jpg'),
(49, 'SPR 67 Kit', 'cases', 7250, 'SPR-67-Kit-600x600.jpg'),
(50, 'MOD007 Flex-Cut PCBA', 'cases', 1650, '007-PCBA-600x600.jpg'),
(51, 'ACR Pro 68 Kit', 'cases', 4450, 'ACR-Pro-68-kit-Black-Kit-GX-600x600.jpg'),
(52, 'DZ60 SOLDERABLE 60% MECHANICAL KEYBOARD PCB', 'pcb', 2150, 'image_2024-01-17_004857789.png'),
(53, 'DZ65 RGB V3 HOT-SWAP RGB PCB', 'pcb', 3250, 'image_2024-01-17_005034552.png'),
(54, 'DZ60RGB V2 HOT SWAP CUSTOM KEYBOARD PCB', 'pcb', 3050, 'image_2024-01-17_005126394.png'),
(55, 'DZ60RGB-ANSI V2 HOT SWAP MECHANICAL KEYBOARD PCB', 'pcb', 3050, 'image_2024-01-17_005223506.png'),
(56, 'DZ60RGB-WKL HOT-SWAP PCB', 'pcb', 3050, 'image_2024-01-17_005313091.png'),
(57, 'KBD67 LITE BLUETOOTH DUAL-MODE PCB', 'pcb', 4200, 'image_2024-01-17_005348493.png'),
(58, 'KBD75RGB HOT-SWAP PCB (PER-KEY RGB)', 'pcb', 3050, 'image_2024-01-17_005418165.png'),
(59, 'RK61 60% Wireless Mechanical Keyboard (Single Color Backlit)', 'prebuilt', 2900, 'image_2024-01-17_005630125.png'),
(60, 'RK68 65% Wireless Mechanical Keyboard (Single Color Backlit)', 'prebuilt', 3100, 'image_2024-01-17_005731475.png'),
(61, 'F68 60% Foldable Low Profile Mechanical Keyboard', 'prebuilt', 4000, 'image_2024-01-17_005817204.png'),
(62, 'RK84 Wireless RGB Limited Edition Keyboard', 'prebuilt', 4600, 'image_2024-01-17_005846664.png'),
(63, 'RK84 75% Wireless Mechanical Keyboard', 'prebuilt', 4000, 'image_2024-01-17_010003298.png'),
(64, 'RK ROYAL KLUDGE S98 Wireless Hot-Swappable RGB Keyboard RK ROYAL KLUDGE S98 Wireless Hot-Swappable R', 'prebuilt', 7400, 'image_2024-01-17_010102290.png'),
(65, 'RK96 Wireless Hot-Swappable RGB Keyboard, Camp Green', 'prebuilt', 5200, 'image_2024-01-17_010136316.png'),
(66, 'RK96 Wireless Hot-Swappable RGB Keyboard, Forest Blue', 'prebuilt', 5200, 'image_2024-01-17_010205874.png'),
(67, 'RK96 96% Wireless Mechanical Keyboard', 'prebuilt', 4600, 'image_2024-01-17_010222718.png'),
(68, 'RK925 65% Foldable Wireless Mechanical Keyboard', 'prebuilt', 4600, 'image_2024-01-17_010250209.png'),
(69, 'APEX PRO TKL WIRELESS (2023)', 'prebuilt', 16250, 'image_2024-01-17_010712407.png'),
(70, 'APEX PRO MINI WIRELESS', 'prebuilt', 15650, 'image_2024-01-17_010757383.png'),
(71, 'APEX 7', 'prebuilt', 9500, 'image_2024-01-17_010939953.png'),
(72, 'Wooting 60HE', 'prebuilt', 9800, 'image_2024-01-17_011550083.png'),
(73, 'Wooting Double-shot Backlit PBT Keycaps - Just Black', 'prebuilt', 10300, 'image_2024-01-17_011654605.png'),
(74, 'Wooting Double-shot Backlit PBT Keycaps - Just White', 'prebuilt', 11900, 'image_2024-01-17_011734249.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Ken', 'ken@gmail.com', '0951872258', 'cbea80d771f9c02d550a027875b4b1b272bc618e', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
