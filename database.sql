-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2019 at 05:09 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_menu` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `reply_for` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `title`, `content`, `user_id`, `status`, `reply_for`, `created_at`) VALUES
(1, 2, 'Thảm tập Yoga có họa tiết MuacungH2T', 'abc', 26, NULL, NULL, '2019-11-30 03:45:26'),
(15, 2, 'Thảm tập Yoga có họa tiết MuacungH2T', 'ok\r\n', 26, NULL, NULL, '2019-11-29 20:51:05'),
(16, 2, 'Thảm tập Yoga có họa tiết MuacungH2T', 'leu leu', 27, NULL, NULL, '2019-11-29 20:52:07'),
(17, 5, 'Thảm tập yoga Zeno TPE 2 lớp tím', 'ABC\r\n', 27, NULL, NULL, '2019-11-29 21:12:51'),
(18, 3, 'Thảm tập yoga kèm túi đựng Verygood (Đỏ)', 'GGGG', 27, NULL, NULL, '2019-11-29 21:14:46'),
(19, 3, 'Thảm tập yoga kèm túi đựng Verygood (Đỏ)', 'SSSSS', 27, NULL, NULL, '2019-11-29 21:17:06'),
(20, 5, 'Thảm tập yoga Zeno TPE 2 lớp tím', '55555', 27, NULL, NULL, '2019-11-29 21:46:26'),
(21, 14, 'Giày thể thao nam PAN Thailand', 'đẹp', 27, NULL, NULL, '2019-11-29 21:48:35'),
(22, 14, 'Giày thể thao nam PAN Thailand', 'xấu', 26, NULL, NULL, '2019-11-29 21:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `date`) VALUES
(7, 'Văn Phúc Nguyễn', 342525777, 'phucnvph07307@fpt.edu.vn', 'ok bạn \"\"\"\"\"\"', '2019-11-28 14:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `URL` text,
  `sort_order` int(11) DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(191) NOT NULL,
  `detail` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `submitted_date` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `view_count` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `image`, `description`, `detail`, `created_date`, `submitted_date`, `status`, `view_count`, `tag_id`) VALUES
(1, 'Cách Chọn Quần Thể Thao Cho Nam', 'nk-2015-new-men-brand-jogging-tracksuit-set-long-sleeve-100-cotton-font-b-jackets-b.jpg', 'Trang phục thể thao muôn màu muôn vẻ và có những trang phục thích hợp với những bộ môn khác nhau. Khó nhất là quần, vậy bạn đã biết cách chọn quần thể thao cho nam ? Như các bạn đã biết, như\r', 'Trang phục thể thao muôn màu muôn vẻ và có những trang phục thích hợp với những bộ môn khác nhau. Khó nhất là quần, vậy bạn đã biết cách chọn quần thể thao cho nam ? Như các bạn đã biết, nhu cầu tập luyện thể thao đối với mọi người ngày càng phát triển và có sức ảnh hưởng nhất định.  Vì thế việc trang bị trang phục cũng quan trọng không kém. Với tiêu chí thời trang và thích hợp với nhiều hoàn cảnh tập luyện thì sau đây sẽ là bài biết nói về cách chọn quần thể thao cho nam chuẩn nhất. Bài viết này, chúng ta nhắm đến cách chọn quần thôi nhé, vì áo khá đơn giản có thể chất liệu thun, co dãn và thấm hút mồ hôi tốt đều được. Đầu tiên, bạn nên xác định môn thể thao bạn đang chơi. Để có thể xác định tính chất riêng môn thể thao đó phù hợp với trang phục nào ?  Ví dụ : Tennis phù hợp với quần ngắn, thể thao ngoài trời có thể tận dụng quần dài để tránh nóng vì nắng…. Kế tiếp, tiêu chí nói chung cho trang phục thể thao bắt buộc phải là chất thun, nhất là quần thể thao để đảm bảo rằng bạn có thể vận động theo cường độ thay đổi liên tục nhanh chậm bất ngờ. Bên cạnh đó ngoài chất thun cổ điển bạn có thể chọn mua những mẫu quần có tính chất dù pha thun nhẹ để có thể thay đổi tùy theo sự phù hợp bộ môn và tạo cảm giác thoải mái khi vận động.  Sau cùng, đó là kiểu dáng cũng như màu sắc được phối trên quần giúp bạn tự tin hơn khi vân động và có thể kết hợp nó cùng các hoàn cảnh dạo phố, khiến bạn trở nên thời trang, năng động và cá tính hơn. Quần thể thao cho nam là phụ kiện không thể thiếu dù bạn nam có chơi thể thao hay không chơi thể thao vì độ tiện dụng cũng như thiết kế thời trang mạnh mẽ luôn cuốn hút tất cả mọi người, bất kể độ tuổi.', '2019-11-29 16:36:56', '0000-00-00 00:00:00', 1, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone_number` varchar(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `voucher_id` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `payment_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `disabled_comment` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `discription` text,
  `detail` text,
  `image` varchar(255) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `rating` float(10,0) DEFAULT NULL,
  `especially` tinyint(1) DEFAULT NULL,
  `producer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `used_count` int(11) DEFAULT '1',
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pro` (`product_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cate` (`category_id`),
  ADD KEY `fk_cer` (`producer_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `fk_pro` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_cate` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_cer` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
