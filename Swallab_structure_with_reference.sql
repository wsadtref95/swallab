-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: NoL_Swallab
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `FiltClasses`
--

DROP TABLE IF EXISTS `FiltClasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltClasses` (
  `f_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`f_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FiltLocations`
--

DROP TABLE IF EXISTS `FiltLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltLocations` (
  `f_l_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`f_l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FiltPurposes`
--

DROP TABLE IF EXISTS `FiltPurposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltPurposes` (
  `f_p_id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`f_p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FiltSectionDemos`
--

DROP TABLE IF EXISTS `FiltSectionDemos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltSectionDemos` (
  `f_s_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`f_s_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberCreditCards`
--

DROP TABLE IF EXISTS `MemberCreditCards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberCreditCards` (
  `m_c_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `expiry_mm` int(11) DEFAULT NULL,
  `expiry_yyyy` int(11) DEFAULT NULL,
  `CVN` int(11) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL,
  PRIMARY KEY (`m_c_c_id`),
  KEY `fk_MemberCreditCards_m_id` (`m_id`),
  CONSTRAINT `fk_MemberCreditCards_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberFavorites`
--

DROP TABLE IF EXISTS `MemberFavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberFavorites` (
  `m_f_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  PRIMARY KEY (`m_f_id`),
  KEY `fk_MemberFavorites_r_id` (`r_id`),
  KEY `fk_MemberFavorites_m_id` (`m_id`),
  CONSTRAINT `fk_MemberFavorites_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_MemberFavorites_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberNotes`
--

DROP TABLE IF EXISTS `MemberNotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberNotes` (
  `m_n_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `main_photo` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `visited_at_datetime` varchar(255) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL,
  PRIMARY KEY (`m_n_id`),
  KEY `fk_MemberNotes_r_id` (`r_id`),
  KEY `fk_MemberNotes_m_id` (`m_id`),
  CONSTRAINT `fk_MemberNotes_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_MemberNotes_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberReviews`
--

DROP TABLE IF EXISTS `MemberReviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberReviews` (
  `m_r_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL,
  PRIMARY KEY (`m_r_id`),
  KEY `fk_MemberReviews_m_id` (`m_id`),
  KEY `fk_MemberReviews_r_id` (`r_id`),
  CONSTRAINT `fk_MemberReviews_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_MemberReviews_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Members`
--

DROP TABLE IF EXISTS `Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Members` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sum_tracking` int(11) DEFAULT NULL,
  `sum_fans` int(11) DEFAULT NULL,
  `thr_link` varchar(255) DEFAULT NULL,
  `ins_link` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  CONSTRAINT `fk_Members_m_id` FOREIGN KEY (`m_id`) REFERENCES `Users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NotesComments`
--

DROP TABLE IF EXISTS `NotesComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotesComments` (
  `n_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `m_n_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL,
  PRIMARY KEY (`n_c_id`),
  KEY `fk_NotesComments_m_id` (`m_id`),
  KEY `fk_NotesComments_m_n_id` (`m_n_id`),
  CONSTRAINT `fk_NotesComments_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_NotesComments_m_n_id` FOREIGN KEY (`m_n_id`) REFERENCES `MemberNotes` (`m_n_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderDetails` (
  `o_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` int(11) DEFAULT NULL,
  `item` varchar(51) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `subtotal_price` int(11) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_d_id`),
  KEY `fk_OrderDetails_o_id` (`o_id`),
  CONSTRAINT `fk_OrderDetails_o_id` FOREIGN KEY (`o_id`) REFERENCES `OrderInfos` (`o_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrderInfos`
--

DROP TABLE IF EXISTS `OrderInfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderInfos` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `o_s_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` time DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `fk_OrderInfos_m_id` (`m_id`),
  KEY `fk_OrderInfos_r_id` (`r_id`),
  KEY `fk_OrderInfos_o_s_id` (`o_s_id`),
  CONSTRAINT `fk_OrderInfos_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_OrderInfos_o_s_id` FOREIGN KEY (`o_s_id`) REFERENCES `OrderStatuses` (`o_s_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_OrderInfos_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrderStatuses`
--

DROP TABLE IF EXISTS `OrderStatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderStatuses` (
  `o_s_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`o_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestComments`
--

DROP TABLE IF EXISTS `RestComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestComments` (
  `r_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `r_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at_date` date DEFAULT NULL,
  `created_at_time` time DEFAULT NULL,
  `updated_at_date` date DEFAULT NULL,
  `updated_at_time` time DEFAULT NULL,
  PRIMARY KEY (`r_c_id`),
  KEY `fk_RestComments_r_id` (`r_id`),
  KEY `fk_RestComments_m_id` (`m_id`),
  CONSTRAINT `fk_RestComments_m_id` FOREIGN KEY (`m_id`) REFERENCES `Members` (`m_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_RestComments_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestDiscount`
--

DROP TABLE IF EXISTS `RestDiscount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestDiscount` (
  `r_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_i_id` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `created_at_datetime` varchar(255) DEFAULT NULL,
  `end_at_datetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_d_id`),
  KEY `fk_RestDiscount_r_i_id` (`r_i_id`),
  CONSTRAINT `fk_RestDiscount_r_i_id` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`r_i_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestInfos`
--

DROP TABLE IF EXISTS `RestInfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestInfos` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `we_close_2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_id`),
  KEY `fk_RestInfos_f_c_id` (`f_c_id`),
  KEY `fk_RestInfos_f_l_id` (`f_l_id`),
  KEY `fk_RestInfos_user_id` (`user_id`),
  CONSTRAINT `fk_RestInfos_f_c_id` FOREIGN KEY (`f_c_id`) REFERENCES `FiltClasses` (`f_c_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_RestInfos_f_l_id` FOREIGN KEY (`f_l_id`) REFERENCES `FiltLocations` (`f_l_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_RestInfos_user_id` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestItems`
--

DROP TABLE IF EXISTS `RestItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestItems` (
  `r_i_id` int(11) NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  `f_s_d_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `item_photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`r_i_id`),
  KEY `fk_RestItems_r_id` (`r_id`),
  KEY `fk_RestItems_f_s_d_id` (`f_s_d_id`),
  CONSTRAINT `fk_RestItems_f_s_d_id` FOREIGN KEY (`f_s_d_id`) REFERENCES `FiltSectionDemos` (`f_s_d_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_RestItems_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Serve`
--

DROP TABLE IF EXISTS `Serve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Serve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `r_i_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Serve_r_id` (`r_id`),
  KEY `fk_Serve_r_i_id` (`r_i_id`),
  CONSTRAINT `fk_Serve_r_i_id` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`r_i_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_Serve_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SuitableFor`
--

DROP TABLE IF EXISTS `SuitableFor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SuitableFor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `f_p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SuitableFor_r_id` (`r_id`),
  KEY `fk_SuitableFor_f_p_id` (`f_p_id`),
  CONSTRAINT `fk_SuitableFor_f_p_id` FOREIGN KEY (`f_p_id`) REFERENCES `FiltPurposes` (`f_p_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_SuitableFor_r_id` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`r_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(1024) DEFAULT NULL,
  `phone` varchar(21) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 10:36:54
