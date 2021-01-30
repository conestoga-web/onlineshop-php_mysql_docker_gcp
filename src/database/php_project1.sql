-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2021 at 12:11 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

/*SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;*/
START TRANSACTION;
/*SET time_zone = "+00:00";*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE inventory (
  productID int(10) UNSIGNED NOT NULL,
  name varchar(50) NOT NULL,
  description varchar(1000) DEFAULT NULL,
  specification varchar(1000) NOT NULL,
  categoryID int(10) UNSIGNED NOT NULL,
  imageFile varchar(50) DEFAULT NULL,
  colour varchar(20) DEFAULT NULL,
  warranty varchar(10) DEFAULT NULL,
  unitPrice decimal(10,2) NOT NULL,
  onHand int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO inventory (productID, name, description, specification, categoryID, imageFile, colour, warranty, unitPrice, onHand) VALUES
(1, 'iPhone XS-max', 'Super Retina - including the largest display ever on an iPhone. Even faster Face ID. And a breakthrough dual-camera system with depth control.', 'Super Retina HD display / 6.5-inch all-screen OLED / Multi-Touch display / HDR display / 2688 x 1242 pixel', 1, 'iPhone_XS_re.jpg', 'Gold, Space Grey, Si', '1 year    ', '1249.99', 13),
(2, 'iPhone XR', 'All-screen design. Longest battery life ever in an iPhone. Fastest performance. Water-and splash-resistant. Studio-quality photos and 4K video. More secure with Face ID.', 'Liquid Retina HD display / 6.1-inch all-screen LCD Multi-touch display with IPS technology / 1792 x 828 pixel / 1400:1 contrast ratio / Fingerprint-resistant oleophobic coating', 1, 'iPhone_XR_re.jpg', 'Yellow, White, Coral', '1 year    ', '1079.99', 12),
(3, 'Galaxy S10', 'The result of 10 years of pioneering mobile firsts, Galaxy S10 introduce the next generation of mobile innovation.', 'Virtually bezel-less screen / Infinity-O display / Ultrasonic fingerprint / Dyanmic AMOLED screen / Telephoto, wide-angle, ultra wide camera', 2, 'SS_S10_re.jpg', 'Prism White, Prism B', '1 year', '1259.99', 17),
(4, 'Galaxy S9', 'The revolutionary Dual Aperture lens sees like the human eye. It naturally adapts to challenging lighting conditions with ease, making sure your photos look incredible.', 'Super slow-motion: 960 frames per second / Three ways to watch the action over and over: Reverse, Loop, Swing / Motion detection / Augmented Reality / Biometric authentication: Iris scan, Face recognition, Fingerprint sca', 2, 'SS_S9_re.jpg', 'Prism White, Prism B', '1 year', '859.99', 18),
(5, 'Galaxy Note9', 'One of the best phones of the year and a gaming beast. Still in a class of its own thanks to the great S pen.', 'Wireless charging / Speed: 33%(faster CPU), 44%(faster GPU), 8GB RAM / AKG premium surround sound, Dolby Atmos / Iris scan, Face recognition, Fingerprint scan / Infinity display: 2960 x 1440', 2, 'SS_Note9_re.jpg', 'Ocean Blue, Midnight', '1 year', '1299.99', 12),
(6, 'Galaxy Note8', 'See the bigger picture and communicate in a whole new way. With the Samsung Note8 you can raise the bar again and again.', 'Powerfully fast: 10nm AP + 6GB RAM / Gigabit LTE + Gigabit Wi-Fi / Wireless charging: hassle-free charging / IP68 Water and dust resistance / Iris scan, Face recognition, Fingerprint sca', 2, 'SS_Note8_re.jpg', 'Midnight Black, Deep', '1 year', '999.99', 6),
(7, 'LG K9', 'Comfortable Grip, 5.0\" HD Display, 8MP Rear Camera, Noise Reduction in low light, Flash Jump Shot.', '12.7cm HD IPS TFT In-Cell Display (1280 x 720) / 8MP with Single LED Flash Rear Camera / 5MP with Auto Shot Front Camera / Battery: 2,500mAh (Removable) / Internal Memory: 16GB, RAM: 2 GB', 3, 'LG_K9_re.jpg', 'Aurora Black', '1 year', '479.99', 32),
(8, 'LG G7 One', 'Experience latest Android OS and latest AI. With the LG G7 One, your Android OS will never be outdated.', 'Stay Up-to-date with the Latest Android OS / Monthly Security Updates / Bloatware-free Android / Latest AI Experience / Super Bright Display / Boombox Speaker', 3, 'LG_G7one_re.jpg', 'NEW Aurora Black', '1 year', '839.99', 29),
(9, 'LG V30', 'LG\'s first Google Daydream-ready phone. Combined with the LG V30\'s 6.0\" OLED FullVision Display, prepare to experience an expanded variety of VR-immersive applications.', '6.0\" QHD+ OLED FullVision Display / F1.6 Crystal Clear Lens / Dual Rear Cameras / Wide Angle Front and Rear Lens / Hi-Fi Quad DAC / IP68 Water & Dust Resistant', 3, 'LG_V30_re.jpg', 'Silver', '1 year', '1149.99', 24),
(10, 'Backberry KEY2 LE', 'Soft textured back for a better grip, Iconic U shape with physical keyboard +4.5-inch display, Ultimate privacy, Full power for full days', '100% Android™ / Access to over a million apps on Google Play / First dual main camera BlackBerry smartphone / All new reimagined keyboard design / Up to 2 days battery life', 4, 'BB_Key2LE_re.jpg', 'Black', '1 year', '579.99', 34),
(11, 'Google Pixel3 XL', 'A new way to capture your world. With Pixel 3\'s camera.', 'Latest Android 9 Pie + Google Assistant / Fullscreen 6.3” display / 12.2 MP dual-pixel / Dual front-firing stereo speakers / 2915 mAH battery + Qi wireless charging / Built for VR', 5, 'GG_Pixel3_re.jpg', 'Clearly White, Just ', '1 year', '999.99', 43);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE orders (
  order_id int(10) UNSIGNED NOT NULL,
  first_name varchar(40) NOT NULL,
  last_name varchar(40) NOT NULL,
  payment varchar(10) NOT NULL,
  order_product varchar(40) NOT NULL,
  quantity int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO orders (order_id, first_name, last_name, payment, order_product, quantity) VALUES
(1, 'Chan', 'Lim', 'Cash', 'Galaxy S9', 1),
(2, 'John', 'Park', 'Debit Card', 'Galaxy S9', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE inventory
  ADD PRIMARY KEY (productID);

--
-- Indexes for table `orders`
--
ALTER TABLE orders
  ADD PRIMARY KEY (order_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE inventory
  MODIFY productID int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE orders
  MODIFY order_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
