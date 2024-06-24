-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 08:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trendhive`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `message`) VALUES
(1, 'Usama Javed', 'javedarsil@gmail.com', 'Your services are awesome'),
(2, 'aqib sial', 'aqibsial29@gmail.com', 'great work');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `item_id`, `title`, `price`, `quantity`) VALUES
(1, 10, 'Floral Hoddie jacket', 2999, 1),
(1, 42, 'Linen Top Summer Collection', 1100, 1),
(1, 43, 'Welvet Embroided Maxi', 3000, 1),
(2, 45, 'Huboler quartz Just date HQ-05', 1999, 1),
(3, 46, 'OLEVS 9931 Quartz Watch Stainless steel & Waterproof', 3500, 2),
(4, 25, 'Stylish Cap for Girls', 400, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` bigint(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pay_mod` varchar(20) NOT NULL,
  `t_bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `name`, `phone`, `address`, `pay_mod`, `t_bill`) VALUES
(1, 'Usama Javed', 3099932898, 'Bhatta # 1 Street # 2 House 210/1', 'COD', 0),
(2, 'Usama Javed', 3099932898, 'Bhatta # 1 Street # 2 House 210/1', 'COD', 0),
(3, 'Usama Javed', 3099932898, 'Bhatta # 1 Street # 2 House 210/1', 'COD', 7000),
(4, 'Usama Javed', 3099932898, 'Bhatta # 1 Street # 2 House 210/1', 'COD', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `discription` text NOT NULL,
  `price` int(10) NOT NULL,
  `category` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `size` varchar(200) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `discription`, `price`, `category`, `image`, `size`, `quantity`) VALUES
(1, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2000, 'women', '[\"assets/images/products/women/ladies_summer_wear.webp\",\"assets/images/products/women/ladies_summer_wear2.webp\",\"assets/images/products/women/ladies_summer_wear3.webp\"]', 'M', 20),
(2, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1500, 'women', '[\"assets/images/products/women/ladies_top1.webp\",\"assets/images/products/women/ladies_top2.webp\",\"assets/images/products/women/ladies_top3.webp\",\"assets/images/products/women/ladies_top4.webp\"]', 'M', 20),
(3, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1700, 'women', '[\"assets/images/products/women/party_wear1.webp\",\"assets/images/products/women/party_wear2.webp\",\"assets/images/products/women/party_wear3.webp\"]', 'M', 20),
(4, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3000, 'men', '[\"assets/images/products/men/cshirt1.webp\",\"assets/images/products/men/cshirt2.webp\",\"assets/images/products/men/cshirt3.webp\",\"assets/images/products/men/cshirt4.webp\"]', 'M', 20),
(5, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2500, 'men', '[\"assets/images/products/men/shirt1.webp\",\"assets/images/products/men/shirt2.webp\",\"assets/images/products/men/shirt3.webp\"]', 'M', 20),
(6, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1500, 'men', '[\"assets/images/products/men/tshirt1.webp\",\"assets/images/products/men/tshirt2.webp\",\"assets/images/products/men/tshirt3.webp\"]', 'M', 20),
(7, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1750, 'footwear', '[\"assets/images/products/footwear/nike1.webp\",\"assets/images/products/footwear/nike2.webp\",\"assets/images/products/footwear/nike3.webp\",\"assets/images/products/footwear/nike4.webp\"]', 'M', 20),
(8, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2750, 'footwear', '[\"assets/images/products/footwear/nike5.webp\",\"assets/images/products/footwear/nike6.webp\",\"assets/images/products/footwear/nike7.webp\",\"assets/images/products/footwear/nike8.webp\",\"assets/images/products/footwear/nike9.webp\"]', 'M', 20),
(9, 'Vintage Blue Sweatshirt and White Sweatpants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio.\r\n Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris\r\n suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus\r\n accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1999, 'footwear', '[\"assets/images/products/footwear/nike10.webp\",\"assets/images/products/footwear/nike11.webp\",\"assets/images/products/footwear/nike12.webp\",\"assets/images/products/footwear/nike13.webp\"]', 'M', 20),
(10, 'Floral Hoddie jacket', 'Introducing our stylish Men\'s Floral Hoodie Jacket, a perfect blend of comfort and fashion. Crafted with high-quality materials, this jacket ensures both warmth and durability. The intricate floral design adds a touch of elegance to your casual ensemble, making it ideal for various occasions. Whether you\'re running errands or meeting friends, this versatile hoodie jacket effortlessly elevates your look. Stay cozy and on-trend with our Men\'s Floral Hoodie Jacket - your go-to outerwear essential.', 2999, 'footwear', '[\"assets/images/products/footwear/nike14.webp\",\"assets/images/products/footwear/nike15.webp\",\"assets/images/products/footwear/nike16.webp\"]', 'M', 30),
(11, 'Sylish Floral jogger pant', 'Men Floral Jogger Pants. Crafted with the perfect blend of fashion-forward design and functionality, these jogger pants elevate your everyday look effortlessly.Featuring a striking floral pattern, these pants add a vibrant touch to your wardrobe, ensuring you stand out from the crowd. The relaxed fit and elasticized waistband offer superior comfort and flexibility, making them ideal for any activity, whether it is a casual outing or a laid-back day at home.', 2999, 'watches', '[\"assets/images/products/watches/watch1.webp\",\"assets/images/products/watches/watch2.webp\",\"assets/images/products/watches/watch3.webp\"]', 'M', 30),
(12, 'Sylish Floral jogger pant', 'The Denim Jeans Jogger Pant. Blending the classic style of denim jeans with the comfort of joggers, these pants offer the best of both worlds. Crafted from premium quality denim fabric, they provide durability and a timeless aesthetic. The jogger-style elasticized cuffs ensure a snug fit while allowing freedom of movement, making them perfect for any occasion, whether it\'s a casual outing or a laid-back weekend at home. With their versatile design, these denim jogger pants effortlessly elevate your style while keeping you comfortable all day long.', 2500, 'watches', '[\"assets/images/products/watches/watch4.webp\",\"assets/images/products/watches/watch5.webp\",\"assets/images/products/watches/watch6.webp\"]', 'M', 30),
(13, 'Sylish Floral jogger pant', 'Men\'s Brown Jogger Pants. Crafted with both style and comfort in mind, these joggers are the perfect blend of functionality and fashion. Designed with a relaxed fit and elasticized waistband, these joggers offer unparalleled comfort and flexibility for all-day wear. Whether you\'re running errands, hitting the gym, or lounging at home, these pants provide the ultimate combination of style and ease.', 4000, 'watches', '[\"assets/images/products/watches/watch.webp\",\"assets/images/products/watches/watch7.webp\",\"assets/images/products/watches/watch8.webp\"]', 'M', 30),
(14, 'Men Denim Slim fit pant', ' the Men\'s Slim Fit Jeans Pant. Crafted with precision and style in mind, these jeans are designed to effortlessly complement your everyday look.\r\nConstructed from high-quality denim fabric, these slim fit jeans offer both durability and comfort. The slim fit silhouette provides a tailored appearance, accentuating your physique without sacrificing freedom of movement.\r\nWhether you\'re dressing up for a casual outing or keeping it laid-back, these versatile jeans are the perfect choice. Pair them with a crisp button-down shirt for a polished ensemble, or opt for a relaxed tee for a more casual vibe.', 2000, 'accessories', '[\"assets/images/products/accessories/bag.webp\",\"assets/images/products/accessories/bag2.webp\",\"assets/images/products/accessories/bag3.webp\"]', 'M', 30),
(15, 'Men Cargo Jeans Pants', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2200, 'men', '[\"assets/images/products/men/cargo1.webp\",\"assets/images/products/men/cargo2.webp\",\"assets/images/products/men/cargo3.webp\"]', 'M', 20),
(16, 'Men stylish casual shirts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1500, 'men', '[\"assets/images/products/men/casual1.webp\",\"assets/images/products/men/casual2.webp\",\"assets/images/products/men/casual3.webp\",\"assets/images/products/men/casual4.webp\"]', 'M', 20),
(17, 'Men Formal Chinos Pant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 999, 'men', '[\"assets/images/products/men/chinos1.webp\",\"assets/images/products/men/chinos.webp\",\"assets/images/products/men/chinos3.webp\",\"assets/images/products/men/chinos4.webp\"]', 'M', 20),
(18, 'Summer premium Quality High Necks for Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1100, 'men', '[\"assets/images/products/men/hneck1.webp\",\"assets/images/products/men/hneck2.webp\",\"assets/images/products/men/hneck3.webp\",\"assets/images/products/men/hneck4.webp\"]', 'M', 25),
(19, 'Men Wash and Wear Kurta Pajama', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3500, 'men', '[\"assets/images/products/men/kurta1.webp\",\"assets/images/products/men/kurta2.webp\",\"assets/images/products/men/kurta3.webp\",\"assets/images/products/men/kurta4.webp\"]', 'M', 30),
(20, 'Men Polo T-Shirt', 'Vintage Blue Sweatshirt and White Sweatpants\', \'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\\r\\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1300, 'men', '[\"assets/images/products/men/polo1.webp\",\"assets/images/products/men/polo2.webp\",\"assets/images/products/men/polo3.webp\"]', 'M', 20),
(21, 'Men Track Suits', 'Vintage Blue Sweatshirt and White Sweatpants\', \'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\\r\\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2100, 'men', '[\"assets/images/products/men/tracks1.webp\",\"assets/images/products/men/tracks2.webp\",\"assets/images/products/men/tracks3.webp\",\"assets/images/products/men/tracks4.webp\"]', 'M', 20),
(22, 'Unique Cufflinks for Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 550, 'acccessories', '[\"assets/images/products/accessories/cufflinks1.webp\",\"assets/images/products/accessories/cufflinks2.webp\",\"assets/images/products/accessories/cufflinks3.webp\",\"assets/images/products/accessories/cufflinks4.webp\"]', 'Normal', 20),
(23, 'Militry Gloves', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 700, 'acccessories', '[\"assets/images/products/accessories/gloves1.webp\",\"assets/images/products/accessories/gloves2.webp\",\"assets/images/products/accessories/gloves3.webp\",\"assets/images/products/accessories/gloves4.webp\"]', 'Normal', 20),
(24, '\r\nHandkerchief Pack of 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 900, 'acccessories', '[\"assets/images/products/accessories/hankerchief1.webp\",\"assets/images/products/accessories/hankerchief2.webp\",\"assets/images/products/accessories/hankerchief3.webp\",\"assets/images/products/accessories/hankerchief4.webp\"]', 'Normal', 20),
(25, 'Stylish Cap for Girls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 400, 'acccessories', '[\"assets/images/products/accessories/ladiescap1.webp\",\"assets/images/products/accessories/ladiescap2.webp\",\"assets/images/products/accessories/ladiescap3.webp\",\"assets/images/products/accessories/ladiescap4.webp\"]', 'Normal', 20),
(26, 'Pure Leather Belt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1600, 'acccessories', '[\"assets/images/products/accessories/leatherbelt1.webp\",\"assets/images/products/accessories/leatherbelt2.webp\",\"assets/images/products/accessories/leatherbelt3.webp\",\"assets/images/products/accessories/leatherbelt4.webp\"]', 'Normal', 20),
(27, 'Markhor Printed Cap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 400, 'acccessories', '[\"assets/images/products/accessories/markhor1.webp\",\"assets/images/products/accessories/markhor2.webp\",\"assets/images/products/accessories/markhor3.webp\",\"assets/images/products/accessories/markhor4.webp\"]', 'Normal', 20),
(28, 'Decent Namaz Cap', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 500, 'acccessories', '[\"assets/images/products/accessories/namazcap1.webp\",\"assets/images/products/accessories/namazcap2.webp\",\"assets/images/products/accessories/namazcap3.webp\",\"assets/images/products/accessories/namazcap4.webp\"]', 'Normal', 20),
(29, 'Militry Syle Boots', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2800, 'footwear', '[\"assets/images/products/footwear/boots1.webp\",\"assets/images/products/footwear/boots2.webp\",\"assets/images/products/footwear/boots3.webp\",\"assets/images/products/footwear/boots4.webp\"]', 'Normal', 20),
(30, 'Brogue Shoes for', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2300, 'footwear', '[\"assets/images/products/footwear/brogue1.webp\",\"assets/images/products/footwear/brogue2.webp\",\"assets/images/products/footwear/brogue3.webp\",\"assets/images/products/footwear/brogue4.webp\"]', 'Normal', 20),
(31, 'Refined Footwear for Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1650, 'footwear', '[\"assets/images/products/footwear/leathershoes1.webp\",\"assets/images/products/footwear/leathershoes2.webp\",\"assets/images/products/footwear/leathershoes3.webp\",\"assets/images/products/footwear/leathershoes4.webp\"]', 'Normal', 20),
(32, 'Leather Loofer for Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1200, 'footwear', '[\"assets/images/products/footwear/lofer1.webp\",\"assets/images/products/footwear/lofer2.webp\",\"assets/images/products/footwear/lofer3.webp\",\"assets/images/products/footwear/lofer4.webp\"]', 'Normal', 20),
(33, 'Light Weight Slipper for Women', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 700, 'footwear', '[\"assets/images/products/footwear/slipper1.webp\",\"assets/images/products/footwear/slipper2.webp\",\"assets/images/products/footwear/slipper3.webp\",\"assets/images/products/footwear/slipper4.webp\"]', 'Normal', 20),
(34, 'White Sneakers for Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2900, 'footwear', '[\"assets/images/products/footwear/sneaker1.webp\",\"assets/images/products/footwear/sneaker2.webp\",\"assets/images/products/footwear/sneaker3.webp\",\"assets/images/products/footwear/sneaker4.webp\"]', '40,41,42,43', 20),
(35, 'Sports Sneakers for Men', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 4000, 'footwear', '[\"assets/images/products/footwear/sport1.webp\",\"assets/images/products/footwear/sport2.webp\",\"assets/images/products/footwear/sport3.webp\",\"assets/images/products/footwear/sport4.webp\"]', '40,41,42,43', 20),
(36, 'Abbaya Gaon for Women and Girls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2500, 'women', '[\"assets/images/products/women/abaya1.webp\",\"assets/images/products/women/abaya2.webp\",\"assets/images/products/women/abaya3.webp\"]', 'M', 20),
(37, 'Stylish korean Kurti Set for Girls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1500, 'women', '[\"assets/images/products/women/kurti1.webp\",\"assets/images/products/women/kurti2.webp\",\"assets/images/products/women/kurti3.webp\"]', 'M', 20),
(38, 'Short Sleeve French Shirt for Girls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2500, 'women', '[\"assets/images/products/women/frenchshirt1.webp\",\"assets/images/products/women/frenchshirt2.webp\",\"assets/images/products/women/frenchshirt3.webp\"]', 'M', 20),
(39, 'Embroided Frock for Girls', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3000, 'women', '[\"assets/images/products/women/frock1.webp\",\"assets/images/products/women/frock2.webp\",\"assets/images/products/women/frock3.webp\"]', 'M', 20),
(40, 'Stylish kurta with Tulip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2900, 'women', '[\"assets/images/products/women/kurtatulip1.webp\",\"assets/images/products/women/kurtatulip2.webp\",\"assets/images/products/women/kurtatulip3.webp\",\"assets/images/products/women/kurtatulip4.webp\"]', 'M', 20),
(41, 'Ladies HighNeck Summer Collection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1700, 'women', '[\"assets/images/products/women/ladieshneck1.webp\",\"assets/images/products/women/ladieshneck2.webp\",\"assets/images/products/women/ladieshneck3.webp\",\"assets/images/products/women/ladieshneck4.webp\"]', 'M', 20),
(42, 'Linen Top Summer Collection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1100, 'women', '[\"assets/images/products/women/linentop1.webp\",\"assets/images/products/women/linentop2.webp\",\"assets/images/products/women/linentop3.webp\"]', 'M', 20),
(43, 'Welvet Embroided Maxi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3000, 'women', '[\"assets/images/products/women/maxi1.webp\",\"assets/images/products/women/maxi2.webp\",\"assets/images/products/women/maxi3.webp\"]', 'M', 20),
(44, 'Chifon Embroided Saree', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 60000, 'women', '[\"assets/images/products/women/saree1.webp\",\"assets/images/products/women/saree2.webp\",\"assets/images/products/women/saree3.webp\",\"assets/images/products/women/saree4.webp\"]', 'M', 20),
(45, 'Huboler quartz Just date HQ-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 1999, 'watches', '[\"assets/images/products/watches/huboler1.webp\",\"assets/images/products/watches/huboler2.webp\"]', 'M', 50),
(46, 'OLEVS 9931 Quartz Watch Stainless steel & Waterproof', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3500, 'watches', '[\"assets/images/products/watches/olevs1.webp\",\"assets/images/products/watches/olevs2.webp\"]', 'M', 50),
(47, 'Elaize ROLEX YACHMASTER DATE JUST MASTER LOCK', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 5000, 'watches', '[\"assets/images/products/watches/elaize1.webp\",\"assets/images/products/watches/elaize2.webp\",\"assets/images/products/watches/elaize3.webp\",\"assets/images/products/watches/elaize4.webp\"]', 'M', 50),
(48, 'Fitron scratch less watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 4200, 'watches', '[\"assets/images/products/watches/fitron1.webp\",\"assets/images/products/watches/fitron2.webp\",\"assets/images/products/watches/fitron3.webp\"]', 'M', 50),
(49, 'TAG Heuer Business Classic Luxury Watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2600, 'watches', '[\"assets/images/products/watches/heuer1.webp\",\"assets/images/products/watches/heuer2.webp\",\"assets/images/products/watches/heuer3.webp\"]', 'M', 50),
(50, 'H9 Pro Smart watch New Arrival', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3700, 'watches', '[\"assets/images/products/watches/h9pro1.webp\",\"assets/images/products/watches/h9pro2.webp\",\"assets/images/products/watches/h9pro3.webp\"]', 'M', 50),
(51, 'MICHAEL KORS LADIES GIFT SET', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 3500, 'watches', '[\"assets/images/products/watches/michael1.webp\",\"assets/images/products/watches/michael2.webp\",\"assets/images/products/watches/michael3.webp\",\"assets/images/products/watches/michael4.webp\"]', 'M', 50),
(52, 'KORS LADIES GIFT SET GOOD QUALITY GIFT SET', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 4500, 'watches', '[\"assets/images/products/watches/kors1.webp\",\"assets/images/products/watches/kors2.webp\",\"assets/images/products/watches/kors3.webp\"]', 'M', 50),
(53, 'Women Mesh Magnet Buckle Watches', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eget fermentum odio. Quisque id turpis nec risus ullamcorper dapibus nec vitae ex. Sed lacinia dui nec mauris suscipit, id placerat dui posuere. Sed vitae libero id ipsum aliquam finibus. Vivamus accumsan metus nec justo sodales, vitae accumsan justo hendrerit. Integer non ligula sit\r\n amet felis eleifend posuere. Suspendisse potenti. Sed convallis magna et dui vehicula', 2000, 'watches', '[\"assets/images/products/watches/mesh1.webp\",\"assets/images/products/watches/mesh2.webp\",\"assets/images/products/watches/mesh3.webp\"]', 'M', 50);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `gender` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `cart_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cart_data`))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `phone`, `gender`, `email`, `password`, `address`, `city`, `country`, `cart_data`) VALUES
(1, 'Usama', 'Javed', 3099932898, 'male', 'javedarsil@gmail.com', '1qazxsw2', 'Bhatta # 1 Street # 2 House 210/1', 'Bahawalpur', 'pakistan', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
