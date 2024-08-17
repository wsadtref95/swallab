-- MySQL dump 10.13  Distrib 5.7.24, for osx10.9 (x86_64)
--
-- Host: localhost    Database: Swallab_Final
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `restclass` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FiltPurposes`
--

DROP TABLE IF EXISTS `FiltPurposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltPurposes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FiltSectionDemos`
--

DROP TABLE IF EXISTS `FiltSectionDemos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltSectionDemos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberCreditCards`
--

DROP TABLE IF EXISTS `MemberCreditCards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberCreditCards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `infos` varchar(255) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `membercreditcards_m_id_foreign` (`m_id`),
  CONSTRAINT `membercreditcards_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberNotes`
--

DROP TABLE IF EXISTS `MemberNotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberNotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `r_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `main_photo` longtext NOT NULL,
  `per_cost` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `visited_date` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `membernotes_m_id_foreign` (`m_id`),
  KEY `membernotes_r_id_foreign` (`r_id`),
  CONSTRAINT `membernotes_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `membernotes_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MemberReviews`
--

DROP TABLE IF EXISTS `MemberReviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberReviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `r_id` bigint(20) unsigned NOT NULL,
  `score` int(11) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `memberreviews_m_id_r_id_unique` (`m_id`,`r_id`),
  KEY `memberreviews_r_id_foreign` (`r_id`),
  CONSTRAINT `memberreviews_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `memberreviews_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Members`
--

DROP TABLE IF EXISTS `Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `sum_tracking` int(11) NOT NULL DEFAULT 0,
  `sum_fans` int(11) NOT NULL DEFAULT 0,
  `thr_link` varchar(255) DEFAULT NULL,
  `ins_link` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_user_id_foreign` (`user_id`),
  CONSTRAINT `members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NotesComments`
--

DROP TABLE IF EXISTS `NotesComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotesComments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `m_n_id` bigint(20) unsigned NOT NULL,
  `content` text NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notescomments_m_id_foreign` (`m_id`),
  KEY `notescomments_m_n_id_foreign` (`m_n_id`),
  CONSTRAINT `notescomments_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notescomments_m_n_id_foreign` FOREIGN KEY (`m_n_id`) REFERENCES `MemberNotes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NotesFavorites`
--

DROP TABLE IF EXISTS `NotesFavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NotesFavorites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `m_n_id` bigint(20) unsigned NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notesfavorites_m_id_m_n_id_unique` (`m_id`,`m_n_id`),
  KEY `notesfavorites_m_n_id_foreign` (`m_n_id`),
  CONSTRAINT `notesfavorites_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notesfavorites_m_n_id_foreign` FOREIGN KEY (`m_n_id`) REFERENCES `MemberNotes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderDetails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `o_id` bigint(20) unsigned NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderdetails_o_id_foreign` (`o_id`),
  CONSTRAINT `orderdetails_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `OrderInfos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrderInfos`
--

DROP TABLE IF EXISTS `OrderInfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderInfos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `r_id` bigint(20) unsigned NOT NULL,
  `o_s_id` bigint(20) unsigned NOT NULL,
  `utensils` tinyint(1) NOT NULL,
  `booking_date` varchar(255) NOT NULL,
  `booking_time` varchar(255) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderinfos_m_id_foreign` (`m_id`),
  KEY `orderinfos_r_id_foreign` (`r_id`),
  KEY `orderinfos_o_s_id_foreign` (`o_s_id`),
  CONSTRAINT `orderinfos_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `orderinfos_o_s_id_foreign` FOREIGN KEY (`o_s_id`) REFERENCES `OrderStatuses` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `orderinfos_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OrderStatuses`
--

DROP TABLE IF EXISTS `OrderStatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderStatuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestComments`
--

DROP TABLE IF EXISTS `RestComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestComments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `r_id` bigint(20) unsigned NOT NULL,
  `content` text NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restcomments_m_id_foreign` (`m_id`),
  KEY `restcomments_r_id_foreign` (`r_id`),
  CONSTRAINT `restcomments_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `restcomments_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestDiscount`
--

DROP TABLE IF EXISTS `RestDiscount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestDiscount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_i_id` bigint(20) unsigned NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `end_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restdiscount_r_i_id_foreign` (`r_i_id`),
  CONSTRAINT `restdiscount_r_i_id_foreign` FOREIGN KEY (`r_i_id`) REFERENCES `RestItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestFavorites`
--

DROP TABLE IF EXISTS `RestFavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestFavorites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` bigint(20) unsigned NOT NULL,
  `r_id` bigint(20) unsigned NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restfavorites_m_id_r_id_unique` (`m_id`,`r_id`),
  KEY `restfavorites_r_id_foreign` (`r_id`),
  CONSTRAINT `restfavorites_m_id_foreign` FOREIGN KEY (`m_id`) REFERENCES `Members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `restfavorites_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestInfos`
--

DROP TABLE IF EXISTS `RestInfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestInfos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `f_c_id` bigint(20) unsigned NOT NULL,
  `f_l_id` bigint(20) unsigned NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `avg_price` varchar(255) NOT NULL,
  `href` varchar(255) NOT NULL,
  `weekday` varchar(255) NOT NULL DEFAULT '沒有營業',
  `weekend` varchar(255) NOT NULL DEFAULT '沒有營業',
  `wd_operating` varchar(255) DEFAULT NULL,
  `we_operating` varchar(255) DEFAULT NULL,
  `wd_close_1` varchar(255) DEFAULT NULL,
  `wd_close_2` varchar(255) DEFAULT NULL,
  `we_close_1` varchar(255) DEFAULT NULL,
  `we_close_2` varchar(255) DEFAULT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:52',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restinfos_user_id_foreign` (`user_id`),
  KEY `restinfos_f_c_id_foreign` (`f_c_id`),
  KEY `restinfos_f_l_id_foreign` (`f_l_id`),
  CONSTRAINT `restinfos_f_c_id_foreign` FOREIGN KEY (`f_c_id`) REFERENCES `FiltClasses` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `restinfos_f_l_id_foreign` FOREIGN KEY (`f_l_id`) REFERENCES `FiltLocations` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `restinfos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RestItems`
--

DROP TABLE IF EXISTS `RestItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RestItems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_id` bigint(20) unsigned NOT NULL,
  `f_s_d_id` bigint(20) unsigned NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_photo` longtext DEFAULT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 18:35:53',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restitems_r_id_foreign` (`r_id`),
  KEY `restitems_f_s_d_id_foreign` (`f_s_d_id`),
  CONSTRAINT `restitems_f_s_d_id_foreign` FOREIGN KEY (`f_s_d_id`) REFERENCES `FiltSectionDemos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `restitems_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SuitableFor`
--

DROP TABLE IF EXISTS `SuitableFor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SuitableFor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_id` bigint(20) unsigned NOT NULL,
  `f_p_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `suitablefor_r_id_f_p_id_unique` (`r_id`,`f_p_id`),
  KEY `suitablefor_f_p_id_foreign` (`f_p_id`),
  CONSTRAINT `suitablefor_f_p_id_foreign` FOREIGN KEY (`f_p_id`) REFERENCES `FiltPurposes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `suitablefor_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `RestInfos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL DEFAULT 'member',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-17 18:38:01
