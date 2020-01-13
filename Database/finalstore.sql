

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'BATWING LOGO HOODIE', 4600),
(2, '715 BOOT CUT JEANS', 4500),
(3, 'GRAPHIC TEE', 1500),
(4, 'NEW GRAPHIC TEE', 999),
(5, 'STYLED TEE', 2400),
(6, 'RANCHER WIDE LEG JEANS', 6000),
(7, 'CUSTOMISED GRAPHIC TEE', 3900),
(8, 'GRAPHIC RINGER TEE', 1800),
(9, 'STYLED TOP', 1500),
(10, 'STRIPES TEE', 1000),
(11, 'SKINNY JEANS', 4900),
(12, 'COOL TEE', 1200);

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(13, 'STYLED TEE', 4600),
(14, 'WORKER SHIRT', 4500),
(15, 'COOL POCKET TEE', 1500),
(16, 'BOMBER JACKET', 999),
(17, 'GRAPHIC SWEATER', 2400),
(18, 'STRANGER THINGS GRAPHIC TEE', 6000),
(19, 'SUNSET POCKET SHIRT', 3900),
(20, 'WESTERN SHIRT', 1800),
(21, 'GRAPHIC POLO TEE', 1500),
(22, 'POLO TEE', 1000),
(23, 'SLIM FIT JEANS', 4900),
(24, 'STAR WARS JACKET', 1200);

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(25, 'WOMEN SNEAKERS', 1399),
(26, 'ZIPPER WALLET', 1999),
(27, 'METAL KEEPER WALLET', 2099),
(28, 'MILLSTONE SNEAKERS', 3520),
(29, 'SPORT SNEAKERS', 2600),
(30, 'L BACK MINI', 1500),
(31, 'WOOD SNEAKERS', 3999),
(32, 'BACKPACK', 2299),
(33, 'MID SNEAKERS', 3000),
(34, 'MULLET SNEAKERS', 4999),
(35, 'TULARE SNEAKERS', 2249),
(36, 'SHINN SNEAKERS', 1399);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Sajal', 'sajal.agrawal1997@gmail.com', '57f231b1ec41dc6641270cb09a56f897', '8899889988', 'Indore', '100 palace colony, Indore'),
(2, 'Ram', 'ram1234@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889989', 'Pune', '100 palace colony, Pune'),
(3, 'Shyam', 'shyam@xyz.com', '57f231b1ec41dc6641270cb09a56f897', '8899889990', 'Bangalore', '100 palace colony, Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`



--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(7, 3, 3, 'Added to cart'),
(8, 3, 4, 'Added to cart'),
(9, 3, 5, 'Added to cart'),
(10, 3, 11, 'Added to cart'),
(11, 1, 9, 'Added to cart'),
(12, 1, 2, 'Added to cart'),
(13, 1, 8, 'Added to cart');
INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(14, 1, 13, 'Added to cart');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
