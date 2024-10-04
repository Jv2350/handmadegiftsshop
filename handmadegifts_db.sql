-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 10:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handmadegifts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `qty` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
('um1YA3yyu7nNb2HeLpYq', 'f9rw0MeNQsckTadqj3iJ', 'annu', 'annu@gmail.com', 'regarding selling purpose', 'Lorem ipsum dolar sit amet, consectetur elit, sed do eiusmod\r\ntempor incididunt ut labore et dolar magna aliqua. Ut emim ad minim veniam.'),
('6RJtlST7OTEJKA9A0mkX', 'f9rw0MeNQsckTadqj3iJ', 'niki', 'nikita@gmail.com', 'how product sell on website', 'Lorem ipsum dolar sit amet, consectetur elit, sed do eiusmod\r\ntempor incididunt ut labore et dolar magna aliqua. Ut emim ad minim veniam.'),
('674RTQvzF58xdX610GFz', 'f9rw0MeNQsckTadqj3iJ', 'annu', 'annu@gmail.com', 'how product sell on website', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress',
  `payment_status` varchar(200) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`, `payment_status`) VALUES
('7lylXpuS8ha6thPz0Dvq', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'annu', '8455839528', 'annu@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'GVDBOaWeJZLSg4m8Cmi6', 200, '1', '2024-09-26', 'canceled', 'pending'),
('cS8G1EjcYn98B8ZcwSnz', 'f9rw0MeNQsckTadqj3iJ', 'qpbW2pqfKq3sVHOp51PX', 'annu', '8455839528', 'annu@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'Xcif12TiWYpCV0VuNN8y', 100, '1', '2024-09-26', 'in progress', 'pending'),
('MjhnN2dcSnyBGqgS6K8t', 'f9rw0MeNQsckTadqj3iJ', 'dLDwg82ML9tbIBl4HxQZ', 'niki', '8374037593', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'office', 'cash on delivery', 'qUnjKbupf1EdlhV7NH7f', 100, '1', '2024-09-29', 'in progress', 'pending'),
('7NviFPwgeZhUtdmrIp15', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'niki', '8374037593', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'GVDBOaWeJZLSg4m8Cmi6', 200, '1', '2024-09-29', 'canceled', 'pending'),
('GgGnuM4CFfCKKU0xxLxS', 'f9rw0MeNQsckTadqj3iJ', 'qpbW2pqfKq3sVHOp51PX', 'niki', '8374037593', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'Xcif12TiWYpCV0VuNN8y', 100, '1', '2024-09-29', 'in progress', 'pending'),
('4zqyykNlqwFi850FxcH5', 'f9rw0MeNQsckTadqj3iJ', 'qpbW2pqfKq3sVHOp51PX', 'niki', '8374037593', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'Xcif12TiWYpCV0VuNN8y', 100, '1', '2024-09-29', 'in progress', 'pending'),
('DoegEHL7fSfinAakgJyN', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'annu', '3344556677', 'annu@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'KzauWYGnGQlDSNE2gqd8', 200, '1', '2024-10-01', 'in progress', 'pending'),
('DoegEHL7fSfinAakgJyN', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'annu', '3344556677', 'annu@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', '1oPRtkiNUDXX3yvUgqfH', 100, '1', '2024-10-01', 'in progress', 'pending'),
('DoegEHL7fSfinAakgJyN', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'annu', '3344556677', 'annu@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', '4quQTPDPwV9NaTY2WcQM', 300, '1', '2024-10-01', 'in progress', 'pending'),
('1c9w6mpGm4rIoxJDhMn5', 'f9rw0MeNQsckTadqj3iJ', 'qpbW2pqfKq3sVHOp51PX', 'niki', '7644387546', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'Xcif12TiWYpCV0VuNN8y', 100, '1', '2024-10-01', 'in progress', 'pending'),
('1c9w6mpGm4rIoxJDhMn5', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'niki', '7644387546', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'GVDBOaWeJZLSg4m8Cmi6', 200, '1', '2024-10-01', 'in progress', 'pending'),
('1c9w6mpGm4rIoxJDhMn5', 'f9rw0MeNQsckTadqj3iJ', '7u49SkqcjmjHRX5emDkd', 'niki', '7644387546', 'nikita@gmail.com', '456, Maharashtra, panvel, India, 410208', 'home', 'cash on delivery', 'nGCTRd14tMs4p1pfkTxW', 200, '1', '2024-10-01', 'in progress', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stock` int(100) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `image`, `stock`, `product_detail`, `status`) VALUES
('F7RJTbNa4hv09Wvs1Rnb', 'qpbW2pqfKq3sVHOp51PX', 'best flower for velentine', 100, 'HARROHT12-1.jpg', 30, 'Another Valentine’s favorite! Cyclamen stand for sincere and maternal love, deliver these as a potted plant and dress it up in a loving container to showcase its essence long after Valentine’s Day.\r\n  \r\nAnother Valentine’s favorite! Cyclamen stand for sincere and maternal love, deliver these as a potted plant and dress it up in a loving container to showcase its essence long after Valentine’s Day.  \r\n\r\nAnother Valentine’s favorite! Cyclamen stand for sincere and maternal love, deliver these as a potted plant and dress it up in a loving container to showcase its essence long after Valentine’s Day.  \r\n\r\n\r\n', 'active'),
('Xcif12TiWYpCV0VuNN8y', 'qpbW2pqfKq3sVHOp51PX', 'flower bouquet', 100, 'product.avif', 30, 'Another Valentine’s favorite! Cyclamen stand for sincere and maternal love, deliver these as a potted plant and dress it up in a loving container to showcase its essence long after Valentine’s Day.  \r\n\r\nAnother Valentine’s favorite! Cyclamen stand for sincere and maternal love, deliver these as a potted plant and dress it up in a loving container to showcase its essence long after Valentine’s Day.  \r\n\r\nAnother Valentine’s favorite! Cyclamen stand for sincere and maternal love, deliver these as a potted plant and dress it up in a loving container to showcase its essence long after Valentine’s Day.  \r\n\r\n', 'active'),
('D3iBQHE9J0EMFdeKYrU6', '7u49SkqcjmjHRX5emDkd', 'Wild Roses', 100, 'product14.jpg', 3, 'wild roses are beautiful!!!', 'active'),
('KzauWYGnGQlDSNE2gqd8', '7u49SkqcjmjHRX5emDkd', 'Wild Pink Flower', 200, 'ARRU1-1-opt-reg.jpg', 3, 'Wild Pink Flowers are too beautiful and elegant!!!', 'active'),
('rvqfj8skUIAvLnjjYw4C', '7u49SkqcjmjHRX5emDkd', 'Flower Vas White', 300, 'hero-bg.png', 2, 'flower Pot', 'active'),
('8aNy7kjvSuhKEnF7JmT9', '7u49SkqcjmjHRX5emDkd', 'purple orchid flowers', 200, 'HVASEU1-1-opt-reg.jpg', 2, 'purple orchid flowers are nice!!!', 'active'),
('1oPRtkiNUDXX3yvUgqfH', '7u49SkqcjmjHRX5emDkd', 'Annual flowers', 100, 'product.jpg', 3, 'These flowers bloom once a year and have a long blooming period.', 'active'),
('GVDBOaWeJZLSg4m8Cmi6', '7u49SkqcjmjHRX5emDkd', 'Perennial flowers', 200, 'product.webp', 1, 'These flowers can bloom every season and live for multiple growing seasons.', 'active'),
('4quQTPDPwV9NaTY2WcQM', '7u49SkqcjmjHRX5emDkd', 'English rose ', 300, 'product0.avif', 2, 'This flower is a symbol of England&#39;s beauty and elegance.', 'active'),
('nGCTRd14tMs4p1pfkTxW', '7u49SkqcjmjHRX5emDkd', 'Passionflower', 200, 'product0.webp', 3, 'a unique flower with intricate details; represents Christ&#39;s passion and is used for its calming properties.', 'active'),
('8vgzbbESVnjflnSy1Ogf', '7u49SkqcjmjHRX5emDkd', 'Heliconia', 400, 'product1.jpg', 4, 'often mistaken for a bird of paradise; vibrant and comes in a variety of shapes and sizes.', 'active'),
('2tHUkOjYCbsqDezCY4jX', '7u49SkqcjmjHRX5emDkd', 'Plumeria', 200, 'product1.avif', 2, 'a tropical flower with a strong, sweet scent; commonly found in leis.\r\n', 'active'),
('yDG1fD2l1zyrhRHsUCwa', '7u49SkqcjmjHRX5emDkd', 'Fuchsia', 200, 'product1.webp', 4, 'a teardrop-shaped flower; hangs from the stem and can be a mix of pink, purple, and white.', 'active'),
('hOepupkaID7xsYVVls9U', '7u49SkqcjmjHRX5emDkd', 'Bleeding heart', 300, 'product2.avif', 4, 'a distinct, heart-shaped flower; usually pink or white, and symbolic of undying love.\r\n', 'active'),
('vBgabTp9LhujsUk5JW0Z', '7u49SkqcjmjHRX5emDkd', 'Anthurium', 150, 'product2.jpg', 2, 'a heart-shaped flower with a glossy finish; commonly red or pink, with a prominent yellow spadix.\r\n', 'active'),
('mfmZJnxu5KD1WVoWhDUs', '7u49SkqcjmjHRX5emDkd', 'Chamomile', 100, 'product2.webp', 3, 'a daisy-like flower; brewed as a tea for its calming effects and to aid digestion.\r\n', 'active'),
('ypV6qPcoNzkdRmnPDQjr', '7u49SkqcjmjHRX5emDkd', 'Calendula', 99, 'product3.avif', 3, 'bright orange or yellow flower; often used in skin remedies for its healing properties.\r\n', 'active'),
('Q57OBEgPA11x9tSxBSIJ', '7u49SkqcjmjHRX5emDkd', 'Echinacea', 150, 'product3.webp', 4, 'a pinkish-purple coneflower; believed to boost the immune system.\r\n', 'active'),
('8J8T1ZiDcbxylUHnhp57', '7u49SkqcjmjHRX5emDkd', 'Ginseng', 250, 'product4.avif', 3, 'not a flower but a root; well-known for its revitalizing properties and often consumed as a tonic.\r\n', 'active'),
('QP0ggSPWsZPSR4g0qlJf', '7u49SkqcjmjHRX5emDkd', 'Elderflower', 350, 'product4.jpg', 3, 'small, white flowers from the elder tree; often used to make syrups or liqueurs with immune-boosting properties.\r\n', 'active'),
('FkhJHd66seKeGIoNlqHh', '7u49SkqcjmjHRX5emDkd', 'Yarrow: ', 200, 'product5.avif', 2, 'a white or pink flower; historically used to treat wounds and reduce bleeding.\r\n', 'active'),
('cUAmPsd1FEn669Efy2uM', '7u49SkqcjmjHRX5emDkd', 'Valerian', 250, 'product5.jpg', 3, 'a tall, flowering grassland plant; the root is used to treat insomnia and anxiety.\r\n', 'active'),
('Vr7vedvRsVYSXwLtzHyS', '7u49SkqcjmjHRX5emDkd', 'Borage', 300, 'product6.avif', 2, 'a bright blue flower; known for its anti-inflammatory properties and often used in culinary dishes.\r\n', 'active'),
('OdHtbS2PgxfASFaOAoAE', '7u49SkqcjmjHRX5emDkd', 'Nasturtium', 100, 'product6.jpg', 4, 'a bright, peppery flower; both petals and leaves can be eaten in salads or as garnishes.\r\n', 'active'),
('k99lMo5uRE2amaUcwo3t', 'dLDwg82ML9tbIBl4HxQZ', 'pink flowers', 100, 'ARRU1-1-opt-reg.jpg', 2, 'beautiful flowers\r\n', 'active'),
('qUnjKbupf1EdlhV7NH7f', 'dLDwg82ML9tbIBl4HxQZ', 'pink flowers', 100, 'product.jpg', 2, 'beautiful flowers\r\n', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `password`, `image`) VALUES
('7u49SkqcjmjHRX5emDkd', 'sarthak sananse', 'sarthaksananse@gmail.com', '07750a2cba77983894994a8b0b0fd462b7e1e47a', 'XuWNqmygjJ3RqbIVOzB3.webp'),
('BgDXUnD1kwEpjEvJHsFM', 'mohini', 'mohinisananse4@gmail.com', 'c3f27f35a0332569ac2de7d970de793a8f80388b', 'k00fq9CZZtKJna4zu4SW.'),
('2whiSygFk8PkPggD0xq3', 'niku', 'niku4@gmail.com', 'f47aea8bdcbd1179a1f3d91e6afeeb259488f2d1', 'Md0l4CZbyC0VQkEP0Km9.jfif'),
('rYh5j2Ka4qcBssVYF07O', 'Pratham', 'pratham@gmail.com', '0ec09ef9836da03f1add21e3ef607627e687e790', 'uVR4FJFnDuqviixQUwTU.jfif'),
('qpbW2pqfKq3sVHOp51PX', 'niki', 'nikita@gmail.com', '51eac6b471a284d3341d8c0c63d0f1a286262a18', '0xcxh0HuwKVozgV7iQkY.webp'),
('L1J8l4LHfeJhgyy04Qr9', 'prarthna', 'parth4@gmail.com', 'df8736178d13a3a1b1171c36d064cd2c4e280cf9', 'MWWp54RJxyE7L2F7XeoZ.jpg'),
('GmP1FzAMTxfmlFCFnh1B', 'vedu', 'vedu18@gmail.com', '9f164f25c7a1dfe3b7e41c4791fa573952467590', 'vjBn7Cj9VOBtWdOJgLvk.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('f9rw0MeNQsckTadqj3iJ', 'vedu', 'vedu18@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'TopUOjKX2fJQpu8diHx7.jpg'),
('dLDwg82ML9tbIBl4HxQZ', 'annu', 'annu@gmail.com', '4d8174039cb10866f89c9cb7bcfc337110792a4c', 'rTLJRpGZrfqAAYjSnZwU.avif');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `price`) VALUES
('rWOH1ysiDXDGMAZLMJKK', 'f9rw0MeNQsckTadqj3iJ', '2tHUkOjYCbsqDezCY4jX', '200'),
('hmZnIrM6KGF7U0loomEo', 'f9rw0MeNQsckTadqj3iJ', 'vBgabTp9LhujsUk5JW0Z', '150'),
('mi2wClwEWkUBJ1KNLB34', 'f9rw0MeNQsckTadqj3iJ', 'yDG1fD2l1zyrhRHsUCwa', '200');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
