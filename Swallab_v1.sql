-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 08 月 06 日 18:04
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `Swallab_v1`
--

-- --------------------------------------------------------

--
-- 資料表結構 `FiltClasses`
--

CREATE TABLE `FiltClasses` (
  `f_c_id` int(11) NOT NULL,
  `class` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `FiltLocations`
--

CREATE TABLE `FiltLocations` (
  `f_l_id` int(11) NOT NULL,
  `location` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `FiltPurposes`
--

CREATE TABLE `FiltPurposes` (
  `f_p_id` int(11) NOT NULL,
  `purpose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `FiltSectionDemos`
--

CREATE TABLE `FiltSectionDemos` (
  `f_s_d_id` int(11) NOT NULL,
  `section` varchar(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `MemberCreditCards`
--

CREATE TABLE `MemberCreditCards` (
  `m_c_c_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `expiry_mm` int(11) DEFAULT NULL,
  `expiry_yyyy` int(11) DEFAULT NULL,
  `CVN` int(11) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `MemberFavorites`
--

CREATE TABLE `MemberFavorites` (
  `m_f_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `MemberNotes`
--

CREATE TABLE `MemberNotes` (
  `m_n_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `main_photo` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `visited_at_datetime` varchar(255) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `MemberReviews`
--

CREATE TABLE `MemberReviews` (
  `m_r_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `Members`
--

CREATE TABLE `Members` (
  `m_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sum_tracking` int(11) DEFAULT NULL,
  `sum_fans` int(11) DEFAULT NULL,
  `thr_link` varchar(255) DEFAULT NULL,
  `ins_link` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `NotesComments`
--

CREATE TABLE `NotesComments` (
  `n_c_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `m_n_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `OrderDetails`
--

CREATE TABLE `OrderDetails` (
  `o_d_id` int(11) NOT NULL,
  `o_id` int(11) DEFAULT NULL,
  `item` varchar(51) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `subtotal_price` int(11) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `OrderInfos`
--

CREATE TABLE `OrderInfos` (
  `o_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `o_s_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` time DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `OrderStatuses`
--

CREATE TABLE `OrderStatuses` (
  `o_s_id` int(11) NOT NULL,
  `status` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `RestComments`
--

CREATE TABLE `RestComments` (
  `r_c_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `RestDiscount`
--

CREATE TABLE `RestDiscount` (
  `r_d_id` int(11) NOT NULL,
  `r_i_id` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `created_at_datetime` varchar(255) DEFAULT NULL,
  `end_at_datetime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `RestInfos`
--

CREATE TABLE `RestInfos` (
  `r_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `f_c_id` int(11) DEFAULT NULL,
  `f_l_id` int(11) DEFAULT NULL,
  `avg_price` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `weekday` varchar(255) DEFAULT NULL,
  `wd_operating` varchar(255) DEFAULT NULL,
  `wd_close_1` varchar(255) DEFAULT NULL,
  `wd_close_2` varchar(255) DEFAULT NULL,
  `weekend` varchar(255) DEFAULT NULL,
  `we_operating` varchar(255) DEFAULT NULL,
  `we_close_1` varchar(255) DEFAULT NULL,
  `we_close_2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `RestItems`
--

CREATE TABLE `RestItems` (
  `r_i_id` int(11) NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  `f_s_d_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `item_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `Serve`
--

CREATE TABLE `Serve` (
  `id` int(11) NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  `r_i_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `SuitableFor`
--

CREATE TABLE `SuitableFor` (
  `id` int(11) NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  `f_p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `FiltClasses`
--
ALTER TABLE `FiltClasses`
  ADD PRIMARY KEY (`f_c_id`);

--
-- 資料表索引 `FiltLocations`
--
ALTER TABLE `FiltLocations`
  ADD PRIMARY KEY (`f_l_id`);

--
-- 資料表索引 `FiltPurposes`
--
ALTER TABLE `FiltPurposes`
  ADD PRIMARY KEY (`f_p_id`);

--
-- 資料表索引 `FiltSectionDemos`
--
ALTER TABLE `FiltSectionDemos`
  ADD PRIMARY KEY (`f_s_d_id`);

--
-- 資料表索引 `MemberCreditCards`
--
ALTER TABLE `MemberCreditCards`
  ADD PRIMARY KEY (`m_c_c_id`),
  ADD KEY `m_id` (`m_id`);

--
-- 資料表索引 `MemberFavorites`
--
ALTER TABLE `MemberFavorites`
  ADD PRIMARY KEY (`m_f_id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `m_id` (`m_id`);

--
-- 資料表索引 `MemberNotes`
--
ALTER TABLE `MemberNotes`
  ADD PRIMARY KEY (`m_n_id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `m_id` (`m_id`);

--
-- 資料表索引 `MemberReviews`
--
ALTER TABLE `MemberReviews`
  ADD PRIMARY KEY (`m_r_id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `m_id` (`m_id`);

--
-- 資料表索引 `Members`
--
ALTER TABLE `Members`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `NotesComments`
--
ALTER TABLE `NotesComments`
  ADD PRIMARY KEY (`n_c_id`),
  ADD KEY `m_n_id` (`m_n_id`),
  ADD KEY `m_id` (`m_id`);

--
-- 資料表索引 `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD PRIMARY KEY (`o_d_id`),
  ADD KEY `o_id` (`o_id`);

--
-- 資料表索引 `OrderInfos`
--
ALTER TABLE `OrderInfos`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `o_s_id` (`o_s_id`);

--
-- 資料表索引 `OrderStatuses`
--
ALTER TABLE `OrderStatuses`
  ADD PRIMARY KEY (`o_s_id`);

--
-- 資料表索引 `RestComments`
--
ALTER TABLE `RestComments`
  ADD PRIMARY KEY (`r_c_id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `m_id` (`m_id`);

--
-- 資料表索引 `RestDiscount`
--
ALTER TABLE `RestDiscount`
  ADD PRIMARY KEY (`r_d_id`),
  ADD KEY `r_i_id` (`r_i_id`);

--
-- 資料表索引 `RestInfos`
--
ALTER TABLE `RestInfos`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `f_c_id` (`f_c_id`),
  ADD KEY `f_l_id` (`f_l_id`);

--
-- 資料表索引 `RestItems`
--
ALTER TABLE `RestItems`
  ADD PRIMARY KEY (`r_i_id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `f_s_d_id` (`f_s_d_id`);

--
-- 資料表索引 `Serve`
--
ALTER TABLE `Serve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `r_i_id` (`r_i_id`);

--
-- 資料表索引 `SuitableFor`
--
ALTER TABLE `SuitableFor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_id` (`r_id`),
  ADD KEY `f_p_id` (`f_p_id`);

--
-- 資料表索引 `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `FiltClasses`
--
ALTER TABLE `FiltClasses`
  MODIFY `f_c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `FiltLocations`
--
ALTER TABLE `FiltLocations`
  MODIFY `f_l_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `FiltPurposes`
--
ALTER TABLE `FiltPurposes`
  MODIFY `f_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `FiltSectionDemos`
--
ALTER TABLE `FiltSectionDemos`
  MODIFY `f_s_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `MemberCreditCards`
--
ALTER TABLE `MemberCreditCards`
  MODIFY `m_c_c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `MemberFavorites`
--
ALTER TABLE `MemberFavorites`
  MODIFY `m_f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `MemberNotes`
--
ALTER TABLE `MemberNotes`
  MODIFY `m_n_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `MemberReviews`
--
ALTER TABLE `MemberReviews`
  MODIFY `m_r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Members`
--
ALTER TABLE `Members`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `NotesComments`
--
ALTER TABLE `NotesComments`
  MODIFY `n_c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `OrderDetails`
--
ALTER TABLE `OrderDetails`
  MODIFY `o_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `OrderInfos`
--
ALTER TABLE `OrderInfos`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `OrderStatuses`
--
ALTER TABLE `OrderStatuses`
  MODIFY `o_s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `RestComments`
--
ALTER TABLE `RestComments`
  MODIFY `r_c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `RestDiscount`
--
ALTER TABLE `RestDiscount`
  MODIFY `r_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Serve`
--
ALTER TABLE `Serve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `SuitableFor`
--
ALTER TABLE `SuitableFor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `MemberCreditCards`
--
ALTER TABLE `MemberCreditCards`
  ADD CONSTRAINT `membercreditcards_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`);

--
-- 資料表的限制式 `MemberFavorites`
--
ALTER TABLE `MemberFavorites`
  ADD CONSTRAINT `memberfavorites_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `memberfavorites_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`);

--
-- 資料表的限制式 `MemberNotes`
--
ALTER TABLE `MemberNotes`
  ADD CONSTRAINT `membernotes_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `membernotes_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`);

--
-- 資料表的限制式 `MemberReviews`
--
ALTER TABLE `MemberReviews`
  ADD CONSTRAINT `memberreviews_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `memberreviews_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`);

--
-- 資料表的限制式 `Members`
--
ALTER TABLE `Members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

--
-- 資料表的限制式 `NotesComments`
--
ALTER TABLE `NotesComments`
  ADD CONSTRAINT `notescomments_ibfk_1` FOREIGN KEY (`m_n_id`) REFERENCES `MemberNotes` (`m_n_id`),
  ADD CONSTRAINT `notescomments_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`);

--
-- 資料表的限制式 `OrderDetails`
--
ALTER TABLE `OrderDetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `OrderInfos` (`o_id`);

--
-- 資料表的限制式 `OrderInfos`
--
ALTER TABLE `OrderInfos`
  ADD CONSTRAINT `orderinfos_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`),
  ADD CONSTRAINT `orderinfos_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `orderinfos_ibfk_3` FOREIGN KEY (`o_s_id`) REFERENCES `OrderStatuses` (`o_s_id`);

--
-- 資料表的限制式 `RestComments`
--
ALTER TABLE `RestComments`
  ADD CONSTRAINT `restcomments_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `restcomments_ibfk_2` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`);

--
-- 資料表的限制式 `RestDiscount`
--
ALTER TABLE `RestDiscount`
  ADD CONSTRAINT `restdiscount_ibfk_1` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`r_i_id`);

--
-- 資料表的限制式 `RestInfos`
--
ALTER TABLE `RestInfos`
  ADD CONSTRAINT `restinfos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `restinfos_ibfk_2` FOREIGN KEY (`f_c_id`) REFERENCES `FiltClasses` (`f_c_id`),
  ADD CONSTRAINT `restinfos_ibfk_3` FOREIGN KEY (`f_l_id`) REFERENCES `FiltLocations` (`f_l_id`);

--
-- 資料表的限制式 `RestItems`
--
ALTER TABLE `RestItems`
  ADD CONSTRAINT `restitems_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `restitems_ibfk_2` FOREIGN KEY (`f_s_d_id`) REFERENCES `FiltSectionDemos` (`f_s_d_id`);

--
-- 資料表的限制式 `Serve`
--
ALTER TABLE `Serve`
  ADD CONSTRAINT `serve_ibfk_1` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`r_i_id`),
  ADD CONSTRAINT `serve_ibfk_2` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`r_i_id`),
  ADD CONSTRAINT `serve_ibfk_3` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `serve_ibfk_4` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `serve_ibfk_5` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`r_i_id`);

--
-- 資料表的限制式 `SuitableFor`
--
ALTER TABLE `SuitableFor`
  ADD CONSTRAINT `suitablefor_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `suitablefor_ibfk_2` FOREIGN KEY (`f_p_id`) REFERENCES `FiltPurposes` (`f_p_id`),
  ADD CONSTRAINT `suitablefor_ibfk_3` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `suitablefor_ibfk_4` FOREIGN KEY (`f_p_id`) REFERENCES `FiltPurposes` (`f_p_id`),
  ADD CONSTRAINT `suitablefor_ibfk_5` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`),
  ADD CONSTRAINT `suitablefor_ibfk_6` FOREIGN KEY (`f_p_id`) REFERENCES `FiltPurposes` (`f_p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
