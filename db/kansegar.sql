-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 10:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kansegar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(4, 'rifqi', '601f1889667efaebb33b8c12572835da3f027f78');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_before` int(20) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 3, 'Rifqi', 'email@email.com', '452432432', 'Saya mau nanya'),
(2, 0, 'admin', 'mrifqiirawan.unm@gmail.com', '3213123', 'Kamu mau nanya');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(3, 3, 'M. Rifqi irawan', '0822222222', 'mrifqiirawan.unm@gmail.com', 'e wallet', 'pesse,  Tarja, Barru, Sulsel, Indonesia - 90762', 'Ikan Lele (33000 x 1) - ', 33000, '2022-12-04', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `produsen` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `price_before` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `produsen`, `details`, `price`, `price_before`, `image_01`, `image_02`, `image_03`) VALUES
(30, 'Ikan Lele', 'defaut by KanSegar', 'Ikan lele merupakan salah satu bahan makanan andalan masyarakat Indonesia. Jenis ikan ini kerap diolah menjadi berbagai jenis makanan, baik dengan cara digoreng, dibakar, atau diolah dengan bahan rempah sesuai selera Anda. Manfaat ikan lele untuk kesehatan tak kalah dengan jenis ikan lainnya, mulai dari menurunkan berat badan hingga menjaga kesehatan jantung. Hal ini berkat beragam nutrisi yang terkandung di dalamnya, seperti protein dan omega-3.\r\ntag : ikan air tawar', 33000, 35000, 'lele-1.jpg', 'lele-2.jpg', 'lele-3.jpg'),
(31, 'Ikan Mas', 'defaut by KanSegar', 'Rasanya yang manis dan gurih menjadikan ikan bawal sebagai salah satu ikan air tawar yang diminati banyak orang. Terlebih, ikan satu ini relatif murah dah mudah ditemukan. Tak hanya itu, ikan bawal juga memiliki beragam kandungan nutrisi yang bermanfaat bagi tubuh.\r\nKandungan nutrisi pada ikan bawal tak kalah dengan jenis ikan air tawar lainnya.\r\ntag : ikan air tawar', 35000, 37000, 'mas-1.jpg', 'mas-2.jpg', 'mas-3.jpg'),
(32, 'Ikan Bandeng', 'defaut by KanSegar', 'Ikan bandeng (Chanos chanos) merupakan salah satu jenis ikan air tawar yang umum dikonsumsi di Indonesia. Habitat asli ikan bandeng sebenarnya di laut, tepatnya di Samudra Hindia hingga Samudra Pasifik. Namun, ikan ini dapat hidup di air tawar atau air payau, sehingga banyak dibudidayakan sebagai ikan air tawar.\r\nIkan bandeng merupakan sumber protein yang baik. Di dalam 100 gram ikan bandeng terkandung sekitar 20 gram protein dan beragam nutrisi\r\ntag : ikan air payau', 43000, 45000, 'bandeng-1.jpg', 'bandeng-2.jpg', 'bandeng-3.jpg'),
(34, 'Ikan Tuna', 'defaut by KanSegar', 'Ikan tuna termasuk ikan favorit karena mudah diolah, berdaging tebal, dan memiliki rasa yang gurih. Selain lezat, ternyata masih banyak yang belum tahu bahwa kandungan ikan tuna menyimpan banyak manfaat bagi tubuh. \r\nTuna dikenal dengan kandungan lemak, protein, dan asam lemak omega-3 yang tinggi. Tidak hanya itu, mengonsumsi 100 gram tuna segar juga dapat memberikan tubuh Anda kandungan gizi.\r\ntag : ikan air laut', 43000, 46500, 'tuna-1.jpg', 'tuna-2.jpg', 'tuna-3.jpg'),
(35, 'Ikan Kakap', 'defaut by KanSegar', 'Ikan kakap dapat Anda andalkan sebagai sumber zat gizi protein dengan jumlah kalori rendah, sehingga aman bagi Anda yang sedang dalam diet sehat.  \r\nKandungan protein yang ada di dalam ikan kakap tentu tidak perlu diragukan lagi. Dalam 100 gram ikan kakap, terdapat sebanyak 20,51 gram protein.\r\ntag : ikan air payau', 38000, 40000, 'kakap-2.jpg', 'kakap-1.jpg', 'kakap-3.jpg'),
(36, 'Ikan Tenggiri', 'defaut by KanSegar', 'Ikan tenggiri merupakan salah satu jenis ikan yang cukup banyak dikonsumsi oleh masyarakat Indonesia, karena mudah ditemukan, harganya terjangkau, dan dapat diolah menjadi berbagai jenis masakan hingga camilan.\r\nBeragam manfaat ikan tenggiri dapat diperoleh berkat kandungan nutrisi di dalamnya. Tak hanya dapat menjaga kesehatan tubuh, jenis ikan air laut ini juga diklaim bisa mengurangi risiko terkena penyakit serius, seperti diabetes dan kanker payudara.\r\ntag : ikan air laut', 88000, 90000, 'tenggiri-1.jpg', 'tenggiri-2.jpg', 'tenggiri-3.jpg'),
(37, 'Ikan Kembung', 'defaut by KanSegar', 'Rastrellliger kanagurta adalah nama ilmiah dari ikan kembung. Ikan yang hidup di laut ini masih sekerabat dengan ikan tenggiri, ikan tuna, dan ikan tongkol. Anda bisa mengolah ikan kembung dengan berbagai cara, mulai dari menggorengnya hingga membuatnya menjadi pepes. \r\nDi balik rasanya yang enak, ikan kembung ternyata kaya kandungan gizi sehingga memberi manfaat pada kesehatan tubuh. Dalam 100 gram ikan kembung, terdapat berbagai nutrisi.\r\ntag : ikan air laut', 46000, 48000, 'kembung-1.jpeg', 'kembung-2.jpg', 'kembung-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(3, 'Rifqi', 'mrifqiirawan.unm@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price_before` int(20) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
