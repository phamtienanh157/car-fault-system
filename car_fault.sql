-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 04:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_fault`
--

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE `battery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`id`, `name`) VALUES
(1, 'Nhỏ hơn 2 năm'),
(2, '2 đến 4 năm'),
(3, 'Lớn hơn 4 năm');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `engine_status` int(11) NOT NULL,
  `sudden_shutdown` int(11) NOT NULL,
  `warning_light` int(11) NOT NULL,
  `gasoline` int(11) NOT NULL,
  `battery` int(11) NOT NULL,
  `shakes` int(11) NOT NULL,
  `noise` int(11) NOT NULL,
  `smell` int(11) NOT NULL,
  `oil` int(11) NOT NULL,
  `headlight` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `tire` int(11) DEFAULT NULL,
  `brake` int(11) DEFAULT NULL,
  `output` varchar(255) NOT NULL,
  `solution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `engine_status`, `sudden_shutdown`, `warning_light`, `gasoline`, `battery`, `shakes`, `noise`, `smell`, `oil`, `headlight`, `company`, `tire`, `brake`, `output`, `solution`) VALUES
(1, 1, 4, 1, 1, 1, 1, 1, 2, 2, 1, 7, 2, 1, 'Lỗi động cơ', 'Đến gara kiểm tra'),
(2, 3, 1, 2, 3, 1, 2, 2, 2, 2, 1, 3, 2, 1, 'Hết xăng', 'Kiểm tra đồng hồ xăng'),
(3, 2, 3, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 'Lỗi ổ khóa điện củ đề và máy phát', 'Đến gara kiểm tra ổ khóa điện củ đề và máy phát'),
(4, 3, 1, 2, 1, 1, 2, 2, 2, 2, 1, 3, 1, 1, 'Động cơ bị sặc xăng', 'Đến gara sửa chữa'),
(5, 1, 1, 2, 1, 2, 2, 2, 1, 2, 3, 1, 2, 1, 'Hỏng công tắc đèn pha hoặc cháy đèn', 'Thay công tắc hoặc thay bóng đèn'),
(6, 2, 4, 2, 1, 3, 2, 2, 2, 2, 3, 1, 2, 1, 'Ắc quy chết hoặc ngăn ắc quy bẩn', 'Kiểm tra, vệ sinh hoặc thay ắc quy'),
(7, 2, 4, 1, 2, 1, 2, 2, 2, 2, 3, 9, 1, 1, 'Lỗi máy phát điện ô tô', 'Đưa xe đến các trung tâm để bảo dưỡng hoặc thay máy phát mới.'),
(8, 1, 1, 2, 1, 1, 2, 2, 2, 2, 1, 3, 1, 3, 'Lốp xe bị mòn/ Hết hạn sử dụng', 'Thay lốp xe'),
(9, 1, 1, 2, 2, 3, 1, 1, 2, 2, 1, 2, 2, 1, 'Hệ thống giảm sóc, khung gầm xuống cấp', 'Đến gara kiểm tra');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, 'Toyota'),
(2, 'Kia'),
(3, 'Hyundai'),
(4, 'Honda'),
(5, 'Ford'),
(6, 'Mazda'),
(7, 'Vinfast'),
(8, 'Mercedes'),
(9, 'Audi');

-- --------------------------------------------------------

--
-- Table structure for table `engine_status`
--

CREATE TABLE `engine_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engine_status`
--

INSERT INTO `engine_status` (`id`, `name`) VALUES
(1, 'Bình thường'),
(2, 'Khó nổ máy'),
(3, 'Không nổ máy');

-- --------------------------------------------------------

--
-- Table structure for table `gasoline`
--

CREATE TABLE `gasoline` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gasoline`
--

INSERT INTO `gasoline` (`id`, `name`) VALUES
(1, 'Còn nhiều'),
(2, 'Còn ít'),
(3, 'Hết');

-- --------------------------------------------------------

--
-- Table structure for table `headlight`
--

CREATE TABLE `headlight` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `headlight`
--

INSERT INTO `headlight` (`id`, `name`) VALUES
(1, 'Sáng'),
(2, 'Chập chờn'),
(3, 'Không sáng');

-- --------------------------------------------------------

--
-- Table structure for table `props`
--

CREATE TABLE `props` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `props`
--

INSERT INTO `props` (`id`, `name`, `weight`) VALUES
(1, 'engine_status', 6),
(2, 'sudden_shutdown', 6),
(3, 'warning_light', 6),
(4, 'gasoline', 6),
(5, 'battery', 6),
(6, 'shakes', 3),
(7, 'noise', 3),
(8, 'smell', 3),
(9, 'oil', 3),
(10, 'headlight', 1),
(11, 'company', 1),
(12, 'tire', 1),
(13, 'brake', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sudden_shutdown`
--

CREATE TABLE `sudden_shutdown` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sudden_shutdown`
--

INSERT INTO `sudden_shutdown` (`id`, `name`) VALUES
(1, 'Không bao giờ'),
(2, 'Hiếm khi'),
(3, 'Thỉnh thoảng'),
(4, 'Thường xuyên');

-- --------------------------------------------------------

--
-- Table structure for table `tire`
--

CREATE TABLE `tire` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tire`
--

INSERT INTO `tire` (`id`, `name`) VALUES
(1, 'Nhỏ hơn 2 năm'),
(2, '2 đến 4 năm'),
(3, 'Lớn hơn 4 năm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `battery`
--
ALTER TABLE `battery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engine_status`
--
ALTER TABLE `engine_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gasoline`
--
ALTER TABLE `gasoline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headlight`
--
ALTER TABLE `headlight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `props`
--
ALTER TABLE `props`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sudden_shutdown`
--
ALTER TABLE `sudden_shutdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tire`
--
ALTER TABLE `tire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `battery`
--
ALTER TABLE `battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `engine_status`
--
ALTER TABLE `engine_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gasoline`
--
ALTER TABLE `gasoline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `headlight`
--
ALTER TABLE `headlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `props`
--
ALTER TABLE `props`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sudden_shutdown`
--
ALTER TABLE `sudden_shutdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tire`
--
ALTER TABLE `tire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
