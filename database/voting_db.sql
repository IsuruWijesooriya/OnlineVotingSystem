-- 
-- 19089 - J.M.I Wijesooriya
-- Online Voting System
-- http://localhost/Voting/login.php


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `voting_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `category_list` (`id`, `category`) VALUES
(18, 'President'),
(19, 'Vice President');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(6, 'Isuru Wijesooriya', 'Isuru', 'IsuRasi@1', 1),
(8, 'Lasith Malinga', 'Lasith', 'lasithmalinga', 2),
(9, 'Kumar Sangakkara', 'Kumar', 'kumarsangakkara', 2),
(10, 'Chaminda Vaas', 'Vaas', 'chamindavaas', 2),
(11, 'Arjuna Ranathunge', 'Arjuna', 'Arjuna Rnathunge', 2);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `voting_opt_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `votes` (`id`, `voting_id`, `category_id`, `voting_opt_id`, `user_id`) VALUES
(34, 31, 18, 47, 11),
(35, 31, 19, 50, 11),
(36, 31, 18, 48, 9),
(37, 31, 19, 52, 9),
(38, 31, 18, 47, 8),
(39, 31, 19, 50, 8),
(40, 31, 18, 47, 10),
(41, 31, 19, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `voting_list`
--

CREATE TABLE `voting_list` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `voting_list` (`id`, `title`, `description`, `is_default`) VALUES
(12, 'No Any Current Election', '', 0),
(31, 'Presidential Election', 'Sri Lanka Cricket Council', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voting_opt`
--

CREATE TABLE `voting_opt` (
  `id` int(30) NOT NULL,
  `voting_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `image_path` text NOT NULL,
  `opt_txt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `voting_opt` (`id`, `voting_id`, `category_id`, `image_path`, `opt_txt`) VALUES
(47, 31, 18, '1684260420_1600415520_avatar.jpg', 'Sanath Jayasuriya'),
(48, 31, 18, '1684260540_1684260420_1600415520_avatar - Copy.jpg', 'Muttaiah Muralitharan'),
(50, 31, 19, '1684260720_download-5.jpg', 'Mahela Jayawardene'),
(52, 31, 19, '1684260840_images.jpg', 'T.M Dilshan');

--
-- Indexes for tables
--

ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `voting_list`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `voting_opt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for tables
--

ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `votes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

ALTER TABLE `voting_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

ALTER TABLE `voting_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;
