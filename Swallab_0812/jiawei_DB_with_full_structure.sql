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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FiltClasses`
--

LOCK TABLES `FiltClasses` WRITE;
/*!40000 ALTER TABLE `FiltClasses` DISABLE KEYS */;
INSERT INTO `FiltClasses` VALUES (1,'火鍋',NULL,NULL),(2,'燒肉',NULL,NULL),(3,'拉麵',NULL,NULL),(4,'居酒屋',NULL,NULL),(5,'甜點',NULL,NULL);
/*!40000 ALTER TABLE `FiltClasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FiltLocations`
--

DROP TABLE IF EXISTS `FiltLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FiltLocations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FiltLocations`
--

LOCK TABLES `FiltLocations` WRITE;
/*!40000 ALTER TABLE `FiltLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FiltLocations` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `FiltPurposes`
--

LOCK TABLES `FiltPurposes` WRITE;
/*!40000 ALTER TABLE `FiltPurposes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FiltPurposes` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FiltSectionDemos`
--

LOCK TABLES `FiltSectionDemos` WRITE;
/*!40000 ALTER TABLE `FiltSectionDemos` DISABLE KEYS */;
INSERT INTO `FiltSectionDemos` VALUES (30,'多人饗宴','2024-08-05 01:39:34','2024-08-05 01:39:34'),(31,'個人即享餐','2024-08-05 01:41:44','2024-08-05 01:41:44'),(32,'單點 丸子類','2024-08-05 02:09:53','2024-08-05 02:09:53'),(33,'單點 火鍋料','2024-08-05 02:22:14','2024-08-05 02:22:14'),(34,'單點 主食','2024-08-05 06:22:39','2024-08-05 06:22:39'),(35,'單點 主菜','2024-08-05 06:23:43','2024-08-05 06:23:43'),(36,'單點 餃類','2024-08-08 02:51:05','2024-08-08 02:51:05'),(37,'單點 蔬菜類','2024-08-08 02:59:46','2024-08-08 02:59:46');
/*!40000 ALTER TABLE `FiltSectionDemos` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberCreditCards`
--

LOCK TABLES `MemberCreditCards` WRITE;
/*!40000 ALTER TABLE `MemberCreditCards` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberCreditCards` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberNotes`
--

LOCK TABLES `MemberNotes` WRITE;
/*!40000 ALTER TABLE `MemberNotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberNotes` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberReviews`
--

LOCK TABLES `MemberReviews` WRITE;
/*!40000 ALTER TABLE `MemberReviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberReviews` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:06',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:06',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Members`
--

LOCK TABLES `Members` WRITE;
/*!40000 ALTER TABLE `Members` DISABLE KEYS */;
/*!40000 ALTER TABLE `Members` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotesComments`
--

LOCK TABLES `NotesComments` WRITE;
/*!40000 ALTER TABLE `NotesComments` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotesComments` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotesFavorites`
--

LOCK TABLES `NotesFavorites` WRITE;
/*!40000 ALTER TABLE `NotesFavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `NotesFavorites` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (2,2,'台灣培根豬 (260g)',370,2,'2024-08-08','05:23:52',NULL,NULL,'2024-08-07 21:23:52','2024-08-07 21:23:52'),(3,2,'花枝蝦漿 (150g)',230,3,'2024-08-08','05:23:52',NULL,NULL,'2024-08-07 21:23:52','2024-08-07 21:23:52'),(4,3,'單點 蔬菜類',180,1,'2024-08-09','23:35:52',NULL,NULL,'2024-08-09 15:35:52','2024-08-07 21:23:52'),(5,3,'個人即享鍋',310,2,'2024-08-09','23:35:52',NULL,NULL,'2024-08-09 15:35:52','2024-08-07 21:23:52'),(6,2,'香菇肉蛋餃 (5個)',160,3,'2024-08-08','05:23:52',NULL,NULL,'2024-08-07 21:23:52','2024-08-07 21:23:52'),(7,4,'雙人饗宴',1200,1,'2024-08-08','01:28:39',NULL,NULL,'2024-08-07 17:28:39','2024-08-07 21:23:52'),(8,4,'香菇丸 (8顆)',130,2,'2024-08-08','01:28:39',NULL,NULL,'2024-08-07 17:28:39','2024-08-07 21:23:52'),(9,4,'美國安格斯牛小排 (200g)',620,1,'2024-08-08','01:29:52',NULL,NULL,'2024-08-07 17:29:52','2024-08-07 21:23:52'),(10,4,'蔬菜拼盤',320,2,'2024-08-08','01:29:52',NULL,NULL,'2024-08-07 17:29:52','2024-08-07 21:23:52');
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderInfos`
--

LOCK TABLES `OrderInfos` WRITE;
/*!40000 ALTER TABLE `OrderInfos` DISABLE KEYS */;
INSERT INTO `OrderInfos` VALUES (2,1,1,1,1,'2024-08-08','[\"10\", \"30\"]','','','','','2024-08-07 21:23:52','2024-08-10 14:08:27'),(3,2,1,1,1,'2024-08-11','[\"12\", \"30\"]','','','','','2024-08-09 15:34:17','2024-08-10 08:40:14'),(4,3,1,3,0,'2024-08-08','[\"10\", \"00\"]','','','','','2024-08-07 17:26:33','2024-08-13 15:42:27'),(5,3,2,1,1,'2024-08-14','[\"10\", \"00\"]','','','','','2024-08-13 20:08:22',NULL);
/*!40000 ALTER TABLE `OrderInfos` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderStatuses`
--

LOCK TABLES `OrderStatuses` WRITE;
/*!40000 ALTER TABLE `OrderStatuses` DISABLE KEYS */;
INSERT INTO `OrderStatuses` VALUES (1,'unconfirmed','2024-08-07 21:23:52',NULL),(2,'wip','2024-08-09 13:50:10',NULL),(3,'done','2024-08-09 13:50:10',NULL);
/*!40000 ALTER TABLE `OrderStatuses` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RestComments`
--

LOCK TABLES `RestComments` WRITE;
/*!40000 ALTER TABLE `RestComments` DISABLE KEYS */;
/*!40000 ALTER TABLE `RestComments` ENABLE KEYS */;
UNLOCK TABLES;

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
  `start_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `end_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RestDiscount`
--

LOCK TABLES `RestDiscount` WRITE;
/*!40000 ALTER TABLE `RestDiscount` DISABLE KEYS */;
INSERT INTO `RestDiscount` VALUES (1,32,'200','2024-08-05T00:10','2024-08-05T00:12','2024-08-04 00:10:52','2024-08-04 00:10:52'),(2,32,'200','2024-08-05T00:16','2024-08-05T00:19','2024-08-04 00:16:12','2024-08-04 00:16:12'),(3,31,'300','2024-08-05T10:21','2024-08-05T10:22','2024-08-04 10:20:44','2024-08-04 10:20:44'),(4,33,'100','2024-08-05T10:22','2024-08-05T10:24','2024-08-04 10:22:03','2024-08-04 10:22:03'),(5,34,'3000','2024-08-05T10:25','2024-08-05T10:27','2024-08-04 10:22:03','2024-08-04 10:22:03'),(6,31,'200','2024-08-05T10:32','2024-08-05T10:34','2024-08-04 10:31:16','2024-08-04 10:31:16'),(7,69,'10','2024-08-10T12:04','2024-08-10T12:07','2024-08-09 12:05:07','2024-08-09 12:05:07'),(8,80,'110','2024-08-12T09:18','2024-08-12T09:22','2024-08-11 09:17:09','2024-08-11 09:17:09'),(9,104,'150','2024-08-15T09:35','2024-08-15T09:41','2024-08-14 09:35:05','2024-08-14 09:35:05'),(10,72,'120','2024-08-15T10:25','2024-08-15T10:28','2024-08-14 10:23:37','2024-08-14 10:23:37'),(11,87,'400','2024-08-15T10:49','2024-08-15T10:54','2024-08-14 10:48:52','2024-08-14 10:48:52'),(12,88,'450','2024-08-15T10:52','2024-08-15T10:57','2024-08-14 10:51:19','2024-08-14 10:51:19'),(13,79,'100','2024-08-15T10:53','2024-08-17T10:57','2024-08-14 10:52:49','2024-08-14 10:52:49'),(14,72,'100','2024-08-17T10:00','2024-08-24T11:00','2024-08-14 10:58:30','2024-08-14 10:58:30'),(15,70,'120','2024-08-15T11:02','2024-08-16T11:01','2024-08-14 11:01:28','2024-08-14 11:01:28');
/*!40000 ALTER TABLE `RestDiscount` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RestFavorites`
--

LOCK TABLES `RestFavorites` WRITE;
/*!40000 ALTER TABLE `RestFavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `RestFavorites` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:06',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:06',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RestInfos`
--

LOCK TABLES `RestInfos` WRITE;
/*!40000 ALTER TABLE `RestInfos` DISABLE KEYS */;
INSERT INTO `RestInfos` VALUES (1,1,1,1,'台中市西屯區公益路',1,'600 - 1000','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"24\",\"00\"]','[\"11\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(2,2,1,2,'台中市北區三民路',1,'300 - 600','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"00\",\"22\",\"00\"]','[\"11\",\"30\",\"23\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(3,3,1,1,'台中市南區建國北路',1,'400 - 800','href','[\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"12\",\"00\",\"23\",\"00\"]','[\"11\",\"30\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(4,6,1,1,'台中市西區精誠路',1,'500 - 900','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"22\",\"30\"]','[\"11\",\"00\",\"23\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(5,7,2,1,'台中市北屯區文心路',1,'700 - 1200','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"12\",\"00\",\"24\",\"00\"]','[\"12\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(6,8,2,1,'台中市南屯區向上路',1,'800 - 1500','href','[\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\"]','[\"sunday\"]','[\"17\",\"00\",\"24\",\"00\"]','[\"12\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(7,9,2,1,'台中市西屯區河南路',1,'600 - 1100','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"23\",\"30\"]','[\"11\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(8,10,2,1,'台中市北區三民路',1,'500 - 1000','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"00\",\"22\",\"00\"]','[\"11\",\"30\",\"23\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42');
/*!40000 ALTER TABLE `RestInfos` ENABLE KEYS */;
UNLOCK TABLES;

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
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RestItems`
--

LOCK TABLES `RestItems` WRITE;
/*!40000 ALTER TABLE `RestItems` DISABLE KEYS */;
INSERT INTO `RestItems` VALUES (63,1,30,'四人饗宴',3200,'storage/images/2lTnRVTSgcV6gTgbolBQXm6th9aCQEit3MjzUZ9L.avif','2024-08-05 09:39:34','2024-08-05 09:39:34','2024-08-05 09:39:34','2024-08-05 09:39:34','2024-08-05 01:39:34','2024-08-05 01:39:34'),(64,1,30,'雙人饗宴',1200,'storage/images/MnPMXLWCl6kaT12FlFzVBBJ0jRbfZZd1pc1TPBbs.avif','2024-08-05 09:40:12','2024-08-05 09:40:12','2024-08-05 09:40:12','2024-08-05 09:40:12','2024-08-05 01:40:12','2024-08-05 01:40:12'),(65,1,31,'個人即享鍋',310,'storage/images/TCnBQxlxvQp6xk4P9FKm4eFnC8RVjvSuBmakkIbR.avif','2024-08-05 09:41:44','2024-08-05 09:41:44','2024-08-05 09:41:44','2024-08-05 09:41:44','2024-08-05 01:41:44','2024-08-05 01:41:44'),(66,1,31,'麻辣粉條鍋',289,'storage/images/jBdqBHmA51SevzGplGYqsFGd8KTJH01RJ7nMQwzW.avif','2024-08-05 09:42:19','2024-08-05 09:42:19','2024-08-05 09:42:19','2024-08-05 09:42:19','2024-08-05 01:42:19','2024-08-05 01:42:19'),(67,1,31,'青花驕麻辣燙',180,'storage/images/pS7YtfTAHmNCsruXcg1A7JEjtQoJpXMVjYH20gBM.avif','2024-08-05 09:42:38','2024-08-05 09:42:38','2024-08-05 09:42:38','2024-08-05 09:42:38','2024-08-05 01:42:38','2024-08-05 01:42:38'),(68,1,32,'干貝三鮮丸 (6顆)',240,'storage/images/s2tGFUkiuOtQiA3Fo2qxlHRQvVvnj3qm5wohjvAF.avif','2024-08-05 10:09:53','2024-08-05 10:09:53','2024-08-05 10:09:53','2024-08-05 10:09:53','2024-08-05 02:09:53','2024-08-05 02:09:53'),(69,1,32,'草蝦丸 (6顆)',130,'storage/images/8bzSSm1BXV2glVtDxaMuWYvBPASma9gBCeild1ho.avif','2024-08-05 10:18:34','2024-08-05 10:18:34','2024-08-05 10:18:34','2024-08-05 10:18:34','2024-08-05 02:18:34','2024-08-05 02:18:34'),(70,1,32,'花枝丸 (6顆)',130,'storage/images/VLPe0tuERHaDSmxmavEiq93hJLVykPtG0Mj3zIbt.avif','2024-08-05 10:19:14','2024-08-05 10:19:14','2024-08-05 10:19:14','2024-08-05 10:19:14','2024-08-05 02:19:14','2024-08-05 02:19:14'),(71,1,32,'豬肉餡餅 (3顆)',150,'storage/images/K9qkQnAENfEFElGVORCN2BfsGGV3HcJTx5IcNzU4.avif','2024-08-05 10:19:45','2024-08-05 10:19:45','2024-08-05 10:19:45','2024-08-05 10:19:45','2024-08-05 02:19:45','2024-08-05 02:19:45'),(72,1,33,'牛肉捲餅',120,'storage/images/OFHeWOs9J7jxaE7f3cZ5lFRO4zTboSLeXsYkJm4R.avif','2024-08-05 10:21:11','2024-08-05 10:21:11','2024-08-05 10:21:11','2024-08-05 10:21:11','2024-08-05 02:21:11','2024-08-05 02:21:11'),(73,1,33,'烤雞肉串',100,'storage/images/3M3H4TkB5RpgPjFuw8vOlJDoIvHpZQrhU6nKxFZR.avif','2024-08-05 10:21:45','2024-08-05 10:21:45','2024-08-05 10:21:45','2024-08-05 10:21:45','2024-08-05 02:21:45','2024-08-05 02:21:45'),(74,1,33,'香煎牛舌',150,'storage/images/fMtOerJD3jAT2F1cFtx3SlkPxBgQDo6v8qUzJtbG.avif','2024-08-05 10:22:13','2024-08-05 10:22:13','2024-08-05 10:22:13','2024-08-05 10:22:13','2024-08-05 02:22:13','2024-08-05 02:22:13'),(75,1,33,'蒜香蝦',180,'storage/images/nPPBoW2TkVfohWAFDzPxRHt8RBFQiBW58zQ9HZH1.avif','2024-08-05 10:22:40','2024-08-05 10:22:40','2024-08-05 10:22:40','2024-08-05 10:22:40','2024-08-05 02:22:40','2024-08-05 02:22:40'),(76,1,34,'珍珠奶茶',80,'storage/images/jLWYT3sEh60MKJ9CtR80Tn7MtHs5vGeaEjZGbgFD.avif','2024-08-05 10:23:11','2024-08-05 10:23:11','2024-08-05 10:23:11','2024-08-05 10:23:11','2024-08-05 02:23:11','2024-08-05 02:23:11'),(77,1,34,'紅茶 (冷)',50,'storage/images/Uf9PwtSnVh9KKyX2lXy8JKhV3hH0ZlLrFHQmvHZ0.avif','2024-08-05 10:23:37','2024-08-05 10:23:37','2024-08-05 10:23:37','2024-08-05 10:23:37','2024-08-05 02:23:37','2024-08-05 02:23:37'),(78,1,34,'綠茶 (冷)',50,'storage/images/XAKx8hnGPQlGrqTdtwl7yFhRFEtUZfnvWt2kAifY.avif','2024-08-05 10:24:06','2024-08-05 10:24:06','2024-08-05 10:24:06','2024-08-05 10:24:06','2024-08-05 02:24:06','2024-08-05 02:24:06'),(79,1,34,'烏龍茶 (冷)',50,'storage/images/Fo4ejh9f4HoxE9TXwP9FHARwOBfQ6xnd5vSglSBH.avif','2024-08-05 10:24:33','2024-08-05 10:24:33','2024-08-05 10:24:33','2024-08-05 10:24:33','2024-08-05 02:24:33','2024-08-05 02:24:33'),(80,1,34,'美式咖啡 (熱)',100,'storage/images/zyYVD0h5I4zOwGdIzMAw1KFtvHNVFCmFfA0dnL3R.avif','2024-08-05 10:25:11','2024-08-05 10:25:11','2024-08-05 10:25:11','2024-08-05 10:25:11','2024-08-05 02:25:11','2024-08-05 02:25:11'),(81,1,34,'卡布奇諾 (熱)',120,'storage/images/rqwBD5N9INgtu1TgcvkPRxlYq5M8lf9UlH7J4SKZ.avif','2024-08-05 10:25:36','2024-08-05 10:25:36','2024-08-05 10:25:36','2024-08-05 10:25:36','2024-08-05 02:25:36','2024-08-05 02:25:36'),(82,1,34,'拿鐵 (熱)',130,'storage/images/h3K3V3WtZVPgLUqfhskRh8yRIslgFPvXa4jskL9U.avif','2024-08-05 10:26:05','2024-08-05 10:26:05','2024-08-05 10:26:05','2024-08-05 10:26:05','2024-08-05 02:26:05','2024-08-05 02:26:05'),(83,1,34,'巧克力 (熱)',120,'storage/images/qCBETy9RVH6yL5TrNJ2jkLcvK2rS5V6MK3GMUUnb.avif','2024-08-05 10:26:31','2024-08-05 10:26:31','2024-08-05 10:26:31','2024-08-05 10:26:31','2024-08-05 02:26:31','2024-08-05 02:26:31');
/*!40000 ALTER TABLE `RestItems` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SuitableFor`
--

LOCK TABLES `SuitableFor` WRITE;
/*!40000 ALTER TABLE `SuitableFor` DISABLE KEYS */;
/*!40000 ALTER TABLE `SuitableFor` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','1111@gmail.com','$2y$12$QsqtNmWsqHWPcqHWs95gBeqL2eF4AQSD6oFDfZrfnGiQCn7eZZHhe','青花驕','','04-1234-5678','2024-08-08 13:33:03','2024-08-08 13:35:11'),(10,'admin','','','茶六','','','2024-08-08 13:33:03',NULL),(11,'member','123@gmail.com','$2y$12$uUvibfErP5TTu8x2Ao7TneRJOBWLHiZENBK.aBWUqdLI8SWzkkYDu','王小明','http://localhost/MySwallab/public/storage/avatar/pD7YcF7bVJpwc897OLApg9Czxni8eXZrSSZMav5Q.png','0912000333','2024-08-09 13:47:01',NULL),(12,'member','456@gmail.com','321','李大媽','','0987654321','2024-08-09 15:32:15',NULL),(13,'member','798@gmail.com','6789','王大衛','','0912345666','2024-08-10 16:00:00',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (914,'2024_08_12_000139_create_filtclasses_table',1),(915,'2024_08_12_081414_create_filtlocations_table',1),(916,'2024_08_12_081430_create_filtsectiondemos_table',1),(917,'2024_08_12_081446_create_filtpurposes_table',1),(918,'2024_08_12_081503_create_orderstatuses_table',1),(919,'2024_08_12_081710_create_users_table',1),(920,'2024_08_12_091152_create_members_table',1),(921,'2024_08_12_094048_create_restinfos_table',1),(922,'2024_08_12_103230_create_member_credit_cards_tables',1),(923,'2024_08_12_103953_create_member_notes',1),(924,'2024_08_12_104529_create_member_reviews',1),(925,'2024_08_12_104747_create_notes_comments',1),(926,'2024_08_12_105015_create_rest_comments',1),(927,'2024_08_12_105115_create_notes_favorites',1),(928,'2024_08_12_105130_create_rest_favorites',1),(929,'2024_08_12_105616_create_rest_items',1),(930,'2024_08_12_110016_create_rest_discount',1),(931,'2024_08_12_110231_create_order_infos',1),(932,'2024_08_12_110633_create_order_details',1),(933,'2024_08_12_110910_create_suitable_for',1),(934,'2024_08_12_121356_users_addemail_verified_at',1),(935,'2024_08_12_162648_create_cache_table',1),(936,'2024_08_13_092753_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-17  8:10:47
