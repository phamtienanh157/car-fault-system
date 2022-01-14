-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 03:20 PM
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
  `solution` varchar(535) NOT NULL,
  `reason` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `engine_status`, `sudden_shutdown`, `warning_light`, `gasoline`, `battery`, `shakes`, `noise`, `smell`, `oil`, `headlight`, `company`, `tire`, `brake`, `output`, `solution`, `reason`) VALUES
(1, 1, 4, 1, 1, 1, 1, 1, 2, 2, 1, 7, 2, 1, 'Lỗi động cơ', '- Đến gara kiểm tra', '- Có thể do hỏng bugi hoặc hỏng dây cao áp, bộ chia điện'),
(2, 3, 1, 2, 3, 1, 2, 2, 2, 2, 1, 3, 2, 1, 'Hết xăng', '- Kiểm tra đồng hồ xăng. Nếu xe của bạn hết nhiên liệu, đổ ít nhất 10 Lít (2.6 US gal, 2.2 Imp gal) nhiên liệu, và thử khởi động lại động cơ. Bởi vì không khí có thể có ở đường ống nhiên liệu khi xe hết nhiên liệu, động cơ có thể cần thời gian lâu hơn để khởi động. Nếu động cơ không khởi động ở lần đầu tiên, thử cố gắng khởi động lại vài lần. Nếu động cơ vẫn không thể khởi động, hãy liên hệ với chuyên gia sửa chữa.', '- Xe hết nhiên liệu'),
(3, 2, 3, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 'Lỗi ổ khóa điện củ đề và máy phát', '- Đến gara kiểm tra ổ khóa điện củ đề và máy phát', '- Có thể do rôto hoặc stato bị chạm chập'),
(4, 3, 1, 2, 1, 1, 2, 2, 2, 2, 1, 3, 1, 1, 'Động cơ bị sặc xăng', '- Tháo nến điện ra làm sạch và lau khô điện cực. <br/>\r\n- Đề nổ động cơ và giữ thời gian trong vòng 15 giây.<br/>\r\n- Lắp lại nến điện.<br/>\r\n- Khởi động lại đông cơ nhưng không đạp chân ga.<br/>\r\n- Vệ sinh bầu lọc gió và chỉnh lại tỉ lệ hoà khí.', '- Tỉ lệ hoà khí (xăng, gió không đúng) bầu lọc gió bị tắc do bụi bẩn.'),
(5, 1, 1, 2, 1, 2, 2, 2, 1, 2, 3, 1, 2, 1, 'Lỗi đèn pha', '- Thay công tắc hoặc thay bóng đèn', '- Hỏng công tắc đèn pha hoặc cháy đèn'),
(6, 2, 4, 2, 1, 3, 2, 2, 2, 2, 3, 1, 2, 1, 'Lỗi ắc quy', '- Kiểm tra, vệ sinh hoặc thay ắc quy', '- Ắc quy chết hoặc ngăn ắc quy bẩn hoặc các đầu dây nối bị hở'),
(7, 2, 4, 1, 2, 1, 2, 2, 2, 2, 3, 9, 1, 1, 'Lỗi máy phát điện ô tô', 'Đưa xe đến các trung tâm để bảo dưỡng hoặc thay máy phát mới.', '- Cuộn rotor bị hỏng <br/>\r\n- Cuộn stato bị hỏng <br/>\r\n- IC máy phát điện bị hỏng'),
(8, 1, 1, 2, 1, 1, 2, 2, 2, 2, 1, 3, 1, 3, 'Lốp xe bị mòn/ Hết hạn sử dụng', '- Thay lốp xe', '- Do lốp xe bị mòn do quá trình sử dụng <br/>\r\n- Do lốp xe hết hạn sử dụng'),
(9, 1, 1, 2, 2, 3, 1, 1, 2, 2, 1, 2, 2, 1, 'Hệ thống giảm sóc, khung gầm xuống cấp', '- Đến gara kiểm tra', '- Do hệ thống treo của bánh xe có vấn đề <br/>\r\n- Do xe hoạt động liên tục trong thời gian dài'),
(10, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1, 5, 1, 1, 'Lỗi hộp số', '- Đến gara kiểm tra', '- Rất có thể là cáp chuyển đổi hoặc hệ thống điều khiển hộp số không còn hoạt động nữa hoặc hoạt động sai <br/>\r\n- Do gioăng bị lão hóa do đã sử dụng quá lâu, hoặc cũng có thể là phớt bị vênh do va chạm mạnh hoặc lỗi kỹ thuật trong quá trình lắp đặt'),
(11, 3, 3, 1, 1, 2, 1, 2, 1, 2, 1, 9, 1, 1, 'Lỗi hệ thống đánh lửa', '- Kiểm tra hệ thống đánh lửa (biến áp đánh lửa, dây cao áp, bộ chia điện, nến đánh lửa…) nếu cần thì phải thay thế. <br/>\r\n- Kiểm tra cuộn điện (cuộn kích từ) khắc phục tốt nhất là thay mới.', '- Rất có thể là cáp chuyển đổi hoặc hệ thống điều khiển hộp số không còn hoạt động nữa hoặc hoạt động sai <br/>\r\n- Do gioăng bị lão hóa do đã sử dụng quá lâu, hoặc cũng có thể là phớt bị vệnh do va chạm mạnh hoặc lỗi kỹ thuật trong quá trình lắp đặt'),
(12, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 6, 2, 2, 'Lỗi phanh', '- Cần chỉnh lại hành trình bàn đạp phanh <br/>\r\n- Siết chặt lại các đầu khớp nối; thay thế các đệm; xả khí lẫn trong dầu phanh; thay thế bầu trợ lực và phớt giữa tổng trên <br/>\r\n- Thay cup-pen, dây phanh và má phanh mới.', '- Bầu trợ lực phanh bị trục trặc <br/>\r\n- Đường ống dẫn dầu bị tắc');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
