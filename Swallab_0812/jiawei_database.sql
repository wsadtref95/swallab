-- MySQL dump 10.13  Distrib 5.7.24, for osx10.9 (x86_64)
--
-- Host: localhost    Database: jiawei_structure
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
-- Table structure for table `filtclasses`
--

DROP TABLE IF EXISTS `filtclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtclasses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `restclass` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtclasses`
--

LOCK TABLES `filtclasses` WRITE;
/*!40000 ALTER TABLE `filtclasses` DISABLE KEYS */;
REPLACE INTO `filtclasses` VALUES (1,'火鍋',NULL,NULL),(2,'燒肉',NULL,NULL),(3,'拉麵',NULL,NULL),(4,'居酒屋',NULL,NULL),(5,'甜點',NULL,NULL);
/*!40000 ALTER TABLE `filtclasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtlocations`
--

DROP TABLE IF EXISTS `filtlocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtlocations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtlocations`
--

LOCK TABLES `filtlocations` WRITE;
/*!40000 ALTER TABLE `filtlocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtlocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtpurposes`
--

DROP TABLE IF EXISTS `filtpurposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtpurposes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtpurposes`
--

LOCK TABLES `filtpurposes` WRITE;
/*!40000 ALTER TABLE `filtpurposes` DISABLE KEYS */;
/*!40000 ALTER TABLE `filtpurposes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtsectiondemos`
--

DROP TABLE IF EXISTS `filtsectiondemos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtsectiondemos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(128) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtsectiondemos`
--

LOCK TABLES `filtsectiondemos` WRITE;
/*!40000 ALTER TABLE `filtsectiondemos` DISABLE KEYS */;
REPLACE INTO `filtsectiondemos` VALUES (30,'多人饗宴','2024-08-05 09:39:34','2024-08-05 09:39:34'),(31,'個人即享餐','2024-08-05 09:41:44','2024-08-05 09:41:44'),(32,'單點 丸子類','2024-08-05 10:09:53','2024-08-05 10:09:53'),(33,'單點 火鍋料','2024-08-05 10:22:14','2024-08-05 10:22:14'),(34,'單點 主食','2024-08-05 14:22:39','2024-08-05 14:22:39'),(35,'單點 主菜','2024-08-05 14:23:43','2024-08-05 14:23:43'),(36,'單點 餃類','2024-08-08 10:51:05','2024-08-08 10:51:05'),(37,'單點 蔬菜類','2024-08-08 10:59:46','2024-08-08 10:59:46');
/*!40000 ALTER TABLE `filtsectiondemos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membernotes`
--

DROP TABLE IF EXISTS `membernotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membernotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `main_photo` varchar(255) NOT NULL,
  `per_cost` varchar(50) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `visited_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membernotes`
--

LOCK TABLES `membernotes` WRITE;
/*!40000 ALTER TABLE `membernotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `membernotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `sum_tracking` int(11) NOT NULL,
  `sum_fans` int(11) NOT NULL,
  `thr_link` varchar(255) NOT NULL,
  `ins_link` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `o_id` bigint(20) unsigned NOT NULL,
  `item` varchar(255) NOT NULL,
  `item_price` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `o_id` (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
REPLACE INTO `orderdetails` VALUES (2,2,'台灣培根豬 (260g)','370','2','2024-08-08 05:23:52',NULL),(3,2,'花枝蝦漿 (150g)','230','3','2024-08-08 05:23:52',NULL),(4,3,'單點 蔬菜類','180','1','2024-08-09 23:35:52',NULL),(5,3,'個人即享鍋','310','2','2024-08-09 23:35:52',NULL),(6,2,'香菇肉蛋餃 (5個)','160','3',NULL,NULL),(7,4,'雙人饗宴','1200','1','2024-08-08 01:28:39',NULL),(8,4,'香菇丸 (8顆)','130','2','2024-08-08 01:28:39',NULL),(9,4,'美國安格斯牛小排 (200g)','620','1','2024-08-08 01:29:52',NULL),(10,4,'蔬菜拼盤','320','2','2024-08-08 01:29:52',NULL);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderinfos`
--

DROP TABLE IF EXISTS `orderinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderinfos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `o_s_id` bigint(20) unsigned NOT NULL,
  `booking_date` varchar(255) NOT NULL,
  `booking_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `r_id` (`r_id`),
  KEY `o_s_id` (`o_s_id`),
  CONSTRAINT `orderinfos_ibfk_1` FOREIGN KEY (`o_s_id`) REFERENCES `orderstatues` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfos`
--

LOCK TABLES `orderinfos` WRITE;
/*!40000 ALTER TABLE `orderinfos` DISABLE KEYS */;
REPLACE INTO `orderinfos` VALUES (2,1,1,1,'2024-08-08','[\"10\", \"30\"]','2024-08-08 05:23:52','2024-08-10 22:08:27'),(3,2,1,1,'2024-08-11','[\"12\", \"30\"]','2024-08-09 23:34:17','2024-08-10 16:40:14'),(4,3,1,3,'2024-08-08','[\"10\", \"00\"]','2024-08-08 01:26:33','2024-08-13 23:42:27'),(5,3,2,1,'2024-08-14','[\"10\", \"00\"]','2024-08-14 04:08:22',NULL);
/*!40000 ALTER TABLE `orderinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatues`
--

DROP TABLE IF EXISTS `orderstatues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatues`
--

LOCK TABLES `orderstatues` WRITE;
/*!40000 ALTER TABLE `orderstatues` DISABLE KEYS */;
REPLACE INTO `orderstatues` VALUES (1,'unconfirmed','2024-08-08 05:23:52',NULL),(2,'wip','2024-08-09 21:50:10',NULL),(3,'done','2024-08-09 21:50:10',NULL);
/*!40000 ALTER TABLE `orderstatues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restdiscount`
--

DROP TABLE IF EXISTS `restdiscount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restdiscount` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_i_id` smallint(11) NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restdiscount`
--

LOCK TABLES `restdiscount` WRITE;
/*!40000 ALTER TABLE `restdiscount` DISABLE KEYS */;
REPLACE INTO `restdiscount` VALUES (1,32,'200','2024-08-05T00:10','2024-08-05T00:12','2024-08-04 08:10:52','2024-08-04 08:10:52'),(2,32,'200','2024-08-05T00:16','2024-08-05T00:19','2024-08-04 08:16:12','2024-08-04 08:16:12'),(3,31,'300','2024-08-05T10:21','2024-08-05T10:22','2024-08-04 18:20:44','2024-08-04 18:20:44'),(4,33,'100','2024-08-05T10:22','2024-08-05T10:24','2024-08-04 18:22:03','2024-08-04 18:22:03'),(5,34,'3000','2024-08-05T10:25','2024-08-05T10:27','2024-08-04 18:22:03','2024-08-04 18:22:03'),(6,31,'200','2024-08-05T10:32','2024-08-05T10:34','2024-08-04 18:31:16','2024-08-04 18:31:16'),(7,69,'10','2024-08-10T12:04','2024-08-10T12:07','2024-08-09 20:05:07','2024-08-09 20:05:07'),(8,80,'110','2024-08-12T09:18','2024-08-12T09:22','2024-08-11 17:17:09','2024-08-11 17:17:09'),(9,104,'150','2024-08-15T09:35','2024-08-15T09:41','2024-08-14 17:35:05','2024-08-14 17:35:05'),(10,72,'120','2024-08-15T10:25','2024-08-15T10:28','2024-08-14 18:23:37','2024-08-14 18:23:37'),(11,87,'400','2024-08-15T10:49','2024-08-15T10:54','2024-08-14 18:48:52','2024-08-14 18:48:52'),(12,88,'450','2024-08-15T10:52','2024-08-15T10:57','2024-08-14 18:51:19','2024-08-14 18:51:19'),(13,79,'100','2024-08-15T10:53','2024-08-17T10:57','2024-08-14 18:52:49','2024-08-14 18:52:49'),(14,72,'100','2024-08-17T10:00','2024-08-24T11:00','2024-08-14 18:58:30','2024-08-14 18:58:30'),(15,70,'120','2024-08-15T11:02','2024-08-16T11:01','2024-08-14 19:01:28','2024-08-14 19:01:28');
/*!40000 ALTER TABLE `restdiscount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restinfos`
--

DROP TABLE IF EXISTS `restinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restinfos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(6) NOT NULL,
  `f_c_id` smallint(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `avg_price` varchar(255) NOT NULL,
  `weekday` varchar(255) NOT NULL,
  `weekend` varchar(255) NOT NULL,
  `wd_operating` varchar(255) NOT NULL,
  `we_operating` varchar(255) NOT NULL,
  `wd_close_1` varchar(255) NOT NULL,
  `wd_close_2` varchar(255) NOT NULL,
  `we_close_1` varchar(255) NOT NULL,
  `we_close_2` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restinfos`
--

LOCK TABLES `restinfos` WRITE;
/*!40000 ALTER TABLE `restinfos` DISABLE KEYS */;
REPLACE INTO `restinfos` VALUES (1,1,1,'台中市西屯區公益路',1,'600 - 1000','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"24\",\"00\"]','[\"11\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]',NULL,'2024-08-15 00:03:42'),(2,2,1,'',0,'','','','','','','','','',NULL,NULL),(3,3,1,'',0,'','','','','','','','','',NULL,NULL),(4,6,1,'',0,'','','','','','','','','',NULL,NULL),(5,7,2,'',0,'','','','','','','','','',NULL,NULL),(6,8,2,'',0,'','','','','','','','','',NULL,NULL),(7,9,2,'',0,'','','','','','','','','',NULL,NULL),(8,10,2,'',0,'','','','','','','','','',NULL,NULL);
/*!40000 ALTER TABLE `restinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restitems`
--

DROP TABLE IF EXISTS `restitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) NOT NULL,
  `f_s_d_id` smallint(11) NOT NULL,
  `item_name` varchar(128) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class` (`f_s_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restitems`
--

LOCK TABLES `restitems` WRITE;
/*!40000 ALTER TABLE `restitems` DISABLE KEYS */;
REPLACE INTO `restitems` VALUES (63,1,30,'四人饗宴',3200,'storage/images/2lTnRVTSgcV6gTgbolBQXm6th9aCQEit3MjzUZ9L.avif','2024-08-05 09:39:34','2024-08-05 09:39:34'),(64,1,30,'雙人饗宴',1200,'storage/images/MnPMXLWCl6kaT12FlFzVBBJ0jRbfZZd1pc1TPBbs.avif','2024-08-05 09:40:12','2024-08-05 09:40:12'),(65,1,31,'個人即享鍋',310,'storage/images/TCnBQxlxvQp6xk4P9FKm4eFnC8RVjvSuBmakkIbR.avif','2024-08-05 09:41:44','2024-08-05 09:41:44'),(66,1,31,'麻辣粉條鍋',289,'storage/images/jBdqBHmA51SevzGplGYqsFGd8KTJH01RJ7nMQwzW.avif','2024-08-05 09:42:19','2024-08-05 09:42:19'),(67,1,31,'青花驕麻辣燙',180,'storage/images/pS7YtfTAHmNCsruXcg1A7JEjtQoJpXMVjYH20gBM.avif','2024-08-05 09:42:38','2024-08-05 09:42:38'),(68,1,32,'干貝三鮮丸 (6顆)',240,'storage/images/s2tGFUkiuOtQiA3Fo2qxlHRQvVvnj3qm5wohjvAF.avif','2024-08-05 10:09:53','2024-08-05 10:09:53'),(69,1,32,'草蝦丸 (6顆)',130,'storage/images/8bzSSm1BXV2glVtDxaMuWYvBPASma9gBCeild1ho.avif','2024-08-05 10:18:34','2024-08-05 10:18:34'),(70,1,32,'花枝丸 (6顆)',130,'storage/images/VLPe0tuERHaDSmxmcloIKPwT2tSNTIIAu2kKl90v.avif','2024-08-05 10:19:37','2024-08-05 10:19:37'),(71,1,32,'貢丸 (8顆)',110,'storage/images/63HbQAAopiro3hGyyqitSNTA3YHtHwWZZsPNTKqN.avif','2024-08-05 10:20:34','2024-08-05 10:20:34'),(72,1,32,'香菇丸 (8顆)',130,'storage/images/ieA6dCgVqWq6tOX4vztrQKWXx25Gh8id3tL9CKWI.avif','2024-08-05 10:20:52','2024-08-05 10:20:52'),(73,1,32,'芋頭貢丸 (6顆)',150,'storage/images/ZENrhbtILheMfTqppoOdVlBkD9Gt9tcd4ihnUyXt.avif','2024-08-05 10:21:10','2024-08-05 10:21:10'),(74,1,32,'台灣牛肉丸(6顆)',210,'storage/images/Z6wg6oGxf4mJYM14EmUm7azVH7lbqsXULOTWK70f.avif','2024-08-05 10:21:28','2024-08-05 14:05:44'),(77,1,33,'花枝蝦漿 (150g)',230,'storage/images/rLPBEj95INhqHdYknpNrHEk4DeOaSqQ7bMbgdO36.avif','2024-08-05 14:06:39','2024-08-05 14:06:39'),(78,1,33,'飛魚卵福袋 (6顆)',150,'storage/images/ASCmbbdeGrkae0NHOpRLlEkJN0W7N5eTAL0bahc6.avif','2024-08-05 14:07:26','2024-08-05 14:07:26'),(79,1,33,'黃金魚蛋 (10顆)',110,'storage/images/cN0ZimU46sHTM8vMi6Q9ayBWiXR7KingUFOHEhlW.avif','2024-08-05 14:09:49','2024-08-05 14:09:49'),(80,1,33,'魚包蛋 (8顆)',130,'storage/images/xcWjF0HbWb7795LFwNID9QXIyc9bykrgeRqOxDX2.avif','2024-08-05 14:14:07','2024-08-05 14:14:07'),(81,1,33,'甜不辣 (6個)',100,'storage/images/80tFhMKdron7CHKSfUxVhyk42AbcPZwFsQoqGtIY.avif','2024-08-05 14:15:01','2024-08-05 14:15:01'),(82,1,33,'炸豆皮 (65g)（非基改）',100,'storage/images/UfOOgNrBXzrKjJMDq213Z5sqNDkMI19ZPgRTFO6m.avif','2024-08-05 14:21:50','2024-08-05 14:21:50'),(83,1,34,'科學麵',30,'storage/images/qY5o0cDVerYK1rYvJWAS3rdX1gu0Y7DSYnTawcGt.avif','2024-08-05 14:22:39','2024-08-05 14:22:39'),(84,1,34,'白飯',20,'storage/images/YnFnHF9SRXPG9Y2RYXqeTD6kbdZTzvUncZArdiDm.avif','2024-08-05 14:22:57','2024-08-05 14:22:57'),(85,1,35,'美國安格斯牛小排 (200g)',620,'storage/images/gd0N00ArfXKsNY2DliNoLbyEccDWEpS3kxug0t00.avif','2024-08-05 14:23:43','2024-08-05 14:23:43'),(86,1,35,'美國翼板牛 (220g)',550,'storage/images/n3vbFTAIodssYLYuD5Ztd5xcMlrhRNfB8QzrIIxJ.avif','2024-08-05 14:24:02','2024-08-05 14:24:02'),(87,1,35,'美國牛五花 (220g)',470,'storage/images/VPOXyc3GdZZf9Dgd8fOVGKN9Y5kTRc7NYbe0lDd5.avif','2024-08-05 14:24:25','2024-08-05 14:24:25'),(88,1,35,'澳洲牛梅花心 (220g)',485,'storage/images/pmGJm2EpoZFYXj8qo84159kLnrgwhzpgmvZ1Qqpm.avif','2024-08-05 14:24:42','2024-08-05 14:24:42'),(89,1,35,'台灣牛胸肉(200g)',450,'storage/images/R0yYdt0tHaxzJuWZUHcC4zExspfloEjcSaPQoqiK.avif','2024-08-05 14:24:59','2024-08-05 14:24:59'),(90,1,35,'台灣松阪豬 (200g)',390,'storage/images/TMpZP5EA67NTfDMrM14C5pC3cQR0Su6GeDGbOFZT.avif','2024-08-05 14:25:14','2024-08-05 14:25:14'),(91,1,35,'台灣特選梅花豬 (260g)',370,'storage/images/jwzfB7U4DnAIcENXOMpo55UZlYXBVgZz5E7VQw5k.avif','2024-08-05 14:25:29','2024-08-05 14:25:29'),(92,1,35,'台灣培根豬 (260g)',370,'storage/images/XJXBqMiKnmKAJaaPGbVM0YbMW6oTPiupmN0EKsGE.avif','2024-08-05 14:25:45','2024-08-05 14:25:45'),(93,1,36,'水晶餃 (8個)',90,'storage/images/FIAdGHHATk58LDt10hRYigA3CnLKEhOBu9RCZMra.avif','2024-08-08 10:51:05','2024-08-08 10:51:05'),(94,1,36,'魚餃 (10入)',100,'storage/images/1SfzvOLxGltESXmqO5exx5CviNtObeoKs6XjdeiB.avif','2024-08-08 10:56:24','2024-08-08 10:56:24'),(95,1,36,'香菇肉蛋餃 (5個)',160,'storage/images/Tl460KDXsqhjOSy43rzO1elw7d201QuUHaVop49d.avif','2024-08-08 10:56:46','2024-08-08 10:56:46'),(97,1,36,'福州燕餃 (8條)',160,'storage/images/K1wwHAZqtLkDfSskGQ2HrL7A1NAaCSw9T7FrJSDN.avif','2024-08-08 10:57:44','2024-08-08 10:57:44'),(98,1,37,'蔬菜拼盤',320,'storage/images/RZyTNRGMVc7UJdMOjJAHXBqVCw2cnbeaeiJwfbWo.avif','2024-08-08 10:59:46','2024-08-08 10:59:46'),(99,1,37,'大白菜',140,'storage/images/EgyLvzgNeyTlXpzb6TQJdrwG8FBhxPna7wJuu2vh.avif','2024-08-08 11:00:03','2024-08-08 11:00:03'),(104,1,37,'高麗菜',160,'storage/images/iAHGZffph4YylNrreZkM7m2x6kdOWIMVXJTDLF2J.avif','2024-08-10 23:08:51','2024-08-10 23:08:51'),(105,1,37,'水蓮',180,'storage/images/BEUWCTJrjoTBqCa65JjyrmFjO5ZSb95oSAdetquB.avif','2024-08-10 23:09:40','2024-08-10 23:09:40'),(106,1,37,'香菇',180,'storage/images/LHlukslDQn9MGB2CLMY2ucJOrFBJUDgVdaffE06J.avif','2024-08-10 23:10:50','2024-08-10 23:10:50'),(108,1,37,'玉米筍',150,'storage/images/dtS12NIFfOSAtmFwpqX2O5HSnQygU2LhRICW5YRk.avif','2024-08-14 11:29:31','2024-08-14 22:28:36');
/*!40000 ALTER TABLE `restitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suitablefor`
--

DROP TABLE IF EXISTS `suitablefor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suitablefor` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_id` bigint(20) unsigned NOT NULL,
  `f_p_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `suitablefor_r_id_foreign` (`r_id`),
  KEY `suitablefor_f_p_id_foreign` (`f_p_id`),
  CONSTRAINT `suitablefor_f_p_id_foreign` FOREIGN KEY (`f_p_id`) REFERENCES `filtpurposes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `suitablefor_r_id_foreign` FOREIGN KEY (`r_id`) REFERENCES `restinfos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suitablefor`
--

LOCK TABLES `suitablefor` WRITE;
/*!40000 ALTER TABLE `suitablefor` DISABLE KEYS */;
/*!40000 ALTER TABLE `suitablefor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` VALUES (1,'admin','1111@gmail.com','$2y$12$QsqtNmWsqHWPcqHWs95gBeqL2eF4AQSD6oFDfZrfnGiQCn7eZZHhe','青花驕','','04-1234-5678','2024-08-08 21:33:03','2024-08-08 21:35:11'),(2,'admin','','1234','小胖鮮鍋','','','2024-08-08 21:40:31',NULL),(3,'admin','','','月暮藏涮涮鍋','','','2024-08-08 21:40:31',NULL),(6,'admin','','1234','劉家酸白菜肉鍋','','','2024-08-08 21:33:03',NULL),(7,'admin','','1234','三山燒肉','','','2024-08-08 21:33:03',NULL),(8,'admin','','','老乾杯','','','2024-08-08 21:33:03',NULL),(9,'admin','','','森森燒肉','','','2024-08-08 21:33:03',NULL),(10,'admin','','','茶六','','','2024-08-08 21:33:03',NULL),(11,'member','123@gmail.com','$2y$12$uUvibfErP5TTu8x2Ao7TneRJOBWLHiZENBK.aBWUqdLI8SWzkkYDu','王小明','http://localhost/MySwallab/public/storage/avatar/pD7YcF7bVJpwc897OLApg9Czxni8eXZrSSZMav5Q.png','0912000333','2024-08-09 21:47:01',NULL),(12,'member','456@gmail.com','321','李大媽','','0987654321','2024-08-09 23:32:15',NULL),(13,'member','798@gmail.com','6789','王大衛','','0912345666','2024-08-11 01:23:47',NULL),(15,'member','123@gmail','$2y$12$.J35Y3eUFmObHVspMGVLzeu0lEbyUuHIWClJbNjPI4JrzEsZ/fnoa','Tom','http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=myswallab&table=users','0999876543','2024-08-12 16:29:13','2024-08-12 16:29:13'),(19,'member','1233@gmail','$2y$12$QsqtNmWsqHWPcqHWs95gBeqL2eF4AQSD6oFDfZrfnGiQCn7eZZHhe','David','http://localhost/MySwallab/public/storage/avatar/SrcrNSBhea6I8WPMi6lk1JIuoHyN6ei8BPtMcMHc.png','098765645321','2024-08-13 09:23:12','2024-08-13 09:23:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-17  6:38:23
