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
INSERT INTO `filtclasses` VALUES (1,'火鍋',NULL,NULL),(2,'燒肉',NULL,NULL),(3,'拉麵',NULL,NULL),(4,'居酒屋',NULL,NULL),(5,'甜點',NULL,NULL);
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
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtlocations`
--

LOCK TABLES `filtlocations` WRITE;
/*!40000 ALTER TABLE `filtlocations` DISABLE KEYS */;
INSERT INTO `filtlocations` VALUES (1,'中區',NULL,NULL),(2,'東區',NULL,NULL),(3,'南區',NULL,NULL),(4,'西區',NULL,NULL),(5,'北區',NULL,NULL),(6,'北屯區',NULL,NULL),(7,'西屯區',NULL,NULL),(8,'南屯區',NULL,NULL),(9,'豐原區',NULL,NULL),(10,'大里區',NULL,NULL),(11,'太平區',NULL,NULL),(12,'清水區',NULL,NULL),(13,'沙鹿區',NULL,NULL),(14,'大甲區',NULL,NULL),(15,'東勢區',NULL,NULL),(16,'梧棲區',NULL,NULL),(17,'烏日區',NULL,NULL),(18,'神岡區',NULL,NULL),(19,'大肚區',NULL,NULL),(20,'大雅區',NULL,NULL),(21,'后里區',NULL,NULL),(22,'霧峰區',NULL,NULL),(23,'潭子區',NULL,NULL),(24,'龍井區',NULL,NULL),(25,'外埔區',NULL,NULL),(26,'和平區',NULL,NULL),(27,'石岡區',NULL,NULL),(28,'大安區',NULL,NULL),(29,'新社區',NULL,NULL);
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
INSERT INTO `filtpurposes` VALUES (1,'約會','2024-08-12 13:58:22',NULL),(2,'聚餐','2024-08-12 13:58:22',NULL),(3,'慶生','2024-08-12 13:59:05',NULL),(4,'商務','2024-08-12 13:59:05',NULL),(5,'無障礙','2024-08-12 13:59:05',NULL);
/*!40000 ALTER TABLE `filtpurposes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filtsectiondemos`
--

DROP TABLE IF EXISTS `filtsectiondemos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filtsectiondemos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filtsectiondemos`
--

LOCK TABLES `filtsectiondemos` WRITE;
/*!40000 ALTER TABLE `filtsectiondemos` DISABLE KEYS */;
INSERT INTO `filtsectiondemos` VALUES (30,'多人饗宴','2024-08-05 01:39:34','2024-08-05 01:39:34'),(31,'個人即享餐','2024-08-05 01:41:44','2024-08-05 01:41:44'),(32,'單點 丸子類','2024-08-05 02:09:53','2024-08-05 02:09:53'),(33,'單點 火鍋料','2024-08-05 02:22:14','2024-08-05 02:22:14'),(34,'單點 主食','2024-08-05 06:22:39','2024-08-05 06:22:39'),(35,'單點 主菜','2024-08-05 06:23:43','2024-08-05 06:23:43'),(36,'單點 餃類','2024-08-08 02:51:05','2024-08-08 02:51:05'),(37,'單點 蔬菜類','2024-08-08 02:59:46','2024-08-08 02:59:46');
/*!40000 ALTER TABLE `filtsectiondemos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membercreditcards`
--

DROP TABLE IF EXISTS `membercreditcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membercreditcards` (
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
-- Dumping data for table `membercreditcards`
--

LOCK TABLES `membercreditcards` WRITE;
/*!40000 ALTER TABLE `membercreditcards` DISABLE KEYS */;
/*!40000 ALTER TABLE `membercreditcards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membernotes`
--

DROP TABLE IF EXISTS `membernotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membernotes` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membernotes`
--

LOCK TABLES `membernotes` WRITE;
/*!40000 ALTER TABLE `membernotes` DISABLE KEYS */;
INSERT INTO `membernotes` VALUES (9,1,1,'【台中】青花驕麻辣鍋(崇德店)王品集團麻辣鍋、酸菜白肉鍋火鍋餐廳 牛三拼盛宴比臉大氣勢十足','http://localhost/MySwallab/public/storage/titleImages/NEyg2gkCaRpebmscc7RxJJDgQmPpb2i4sOC6yWh2.jpg','800 - 1000','<p>青花驕麻辣鍋是王品集團推出的麻辣鍋品牌餐廳，麻辣湯頭加入重慶的九葉青花椒熬煮，鮮麻香醇，非常吸引我。想不到幫同事的慶生聚餐，壽星就選定青花驕麻辣鍋崇德店，當餐廳人選丟出來的時候，我完全是舉雙手雙腳同意的啊?‍♀️預訂好日期後，大家一起騎車前往青花驕麻辣鍋報到！</p><p>▼青花驕麻辣鍋台中崇德店位於崇德路三段與崇德九路交叉口，附近美食還有奧樂美特、很牛炭燒牛排、森森燒肉、拾七石頭火鍋、八豆食府、本格和牛燒肉放題、尚牛二館…等，完全是個美食餐廳聚集地。</p><figure class=\"image\"><img src=\"http://localhost/MySwallab/public/storage/uploads/66bf72802400b_青花驕-食記.jpg\"></figure><p>▼青花椒麻辣鍋，湯頭喝起來微麻帶辣、香醇順口，不過可能是我嘴鈍，覺得重慶江津九葉青花椒的層次香氣不明顯，好喝但不特別。而鍋底的鴨血滑嫩、豆腐孔洞不算多但有入味好吃。</p>','2024-08-12T23:35',NULL,'2024-08-17 07:59:07','2024-08-17 07:59:07',NULL,NULL,'2024-08-15 23:39:39','2024-08-15 23:39:39');
/*!40000 ALTER TABLE `membernotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberreviews`
--

DROP TABLE IF EXISTS `memberreviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberreviews` (
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
-- Dumping data for table `memberreviews`
--

LOCK TABLES `memberreviews` WRITE;
/*!40000 ALTER TABLE `memberreviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberreviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,11,10,0,NULL,NULL,NULL,NULL,'2024-08-17 07:59:06','2024-08-17 07:59:06',NULL,NULL,NULL,NULL),(2,12,0,0,NULL,NULL,NULL,NULL,'2024-08-17 07:59:06','2024-08-17 07:59:06',NULL,NULL,NULL,NULL),(3,13,0,0,NULL,NULL,NULL,NULL,'2024-08-17 07:59:06','2024-08-17 07:59:06',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
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
-- Table structure for table `notescomments`
--

DROP TABLE IF EXISTS `notescomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notescomments` (
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
-- Dumping data for table `notescomments`
--

LOCK TABLES `notescomments` WRITE;
/*!40000 ALTER TABLE `notescomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `notescomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notesfavorites`
--

DROP TABLE IF EXISTS `notesfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notesfavorites` (
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
-- Dumping data for table `notesfavorites`
--

LOCK TABLES `notesfavorites` WRITE;
/*!40000 ALTER TABLE `notesfavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `notesfavorites` ENABLE KEYS */;
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
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (2,2,'台灣培根豬 (260g)',370,2,'2024-08-08','05:23:52',NULL,NULL,'2024-08-07 21:23:52','2024-08-07 21:23:52'),(3,2,'花枝蝦漿 (150g)',230,3,'2024-08-08','05:23:52',NULL,NULL,'2024-08-07 21:23:52','2024-08-07 21:23:52'),(4,3,'單點 蔬菜類',180,1,'2024-08-09','23:35:52',NULL,NULL,'2024-08-09 15:35:52','2024-08-07 21:23:52'),(5,3,'個人即享鍋',310,2,'2024-08-09','23:35:52',NULL,NULL,'2024-08-09 15:35:52','2024-08-07 21:23:52'),(6,2,'香菇肉蛋餃 (5個)',160,3,'2024-08-08','05:23:52',NULL,NULL,'2024-08-07 21:23:52','2024-08-07 21:23:52'),(7,4,'雙人饗宴',1200,1,'2024-08-08','01:28:39',NULL,NULL,'2024-08-07 17:28:39','2024-08-07 21:23:52'),(8,4,'香菇丸 (8顆)',130,2,'2024-08-08','01:28:39',NULL,NULL,'2024-08-07 17:28:39','2024-08-07 21:23:52'),(9,4,'美國安格斯牛小排 (200g)',620,1,'2024-08-08','01:29:52',NULL,NULL,'2024-08-07 17:29:52','2024-08-07 21:23:52'),(10,4,'蔬菜拼盤',320,2,'2024-08-08','01:29:52',NULL,NULL,'2024-08-07 17:29:52','2024-08-07 21:23:52');
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
-- Dumping data for table `orderinfos`
--

LOCK TABLES `orderinfos` WRITE;
/*!40000 ALTER TABLE `orderinfos` DISABLE KEYS */;
INSERT INTO `orderinfos` VALUES (2,1,1,1,1,'2024-08-08','[\"10\", \"30\"]','','','','','2024-08-07 21:23:52','2024-08-10 14:08:27'),(3,2,1,1,1,'2024-08-11','[\"12\", \"30\"]','','','','','2024-08-09 15:34:17','2024-08-10 08:40:14'),(4,3,1,3,0,'2024-08-08','[\"10\", \"00\"]','','','','','2024-08-07 17:26:33','2024-08-13 15:42:27'),(5,3,2,1,1,'2024-08-14','[\"10\", \"00\"]','','','','','2024-08-13 20:08:22',NULL);
/*!40000 ALTER TABLE `orderinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatuses`
--

DROP TABLE IF EXISTS `orderstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatuses`
--

LOCK TABLES `orderstatuses` WRITE;
/*!40000 ALTER TABLE `orderstatuses` DISABLE KEYS */;
INSERT INTO `orderstatuses` VALUES (1,'unconfirmed','2024-08-07 21:23:52',NULL),(2,'wip','2024-08-09 13:50:10',NULL),(3,'done','2024-08-09 13:50:10',NULL);
/*!40000 ALTER TABLE `orderstatuses` ENABLE KEYS */;
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

--
-- Table structure for table `restcomments`
--

DROP TABLE IF EXISTS `restcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restcomments` (
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
-- Dumping data for table `restcomments`
--

LOCK TABLES `restcomments` WRITE;
/*!40000 ALTER TABLE `restcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `restcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restdiscount`
--

DROP TABLE IF EXISTS `restdiscount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restdiscount` (
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
-- Dumping data for table `restdiscount`
--

LOCK TABLES `restdiscount` WRITE;
/*!40000 ALTER TABLE `restdiscount` DISABLE KEYS */;
INSERT INTO `restdiscount` VALUES (1,32,'200','2024-08-05T00:10','2024-08-05T00:12','2024-08-04 00:10:52','2024-08-04 00:10:52'),(2,32,'200','2024-08-05T00:16','2024-08-05T00:19','2024-08-04 00:16:12','2024-08-04 00:16:12'),(3,31,'300','2024-08-05T10:21','2024-08-05T10:22','2024-08-04 10:20:44','2024-08-04 10:20:44'),(4,33,'100','2024-08-05T10:22','2024-08-05T10:24','2024-08-04 10:22:03','2024-08-04 10:22:03'),(5,34,'3000','2024-08-05T10:25','2024-08-05T10:27','2024-08-04 10:22:03','2024-08-04 10:22:03'),(6,31,'200','2024-08-05T10:32','2024-08-05T10:34','2024-08-04 10:31:16','2024-08-04 10:31:16'),(7,69,'10','2024-08-10T12:04','2024-08-10T12:07','2024-08-09 12:05:07','2024-08-09 12:05:07'),(8,80,'110','2024-08-12T09:18','2024-08-12T09:22','2024-08-11 09:17:09','2024-08-11 09:17:09'),(9,104,'150','2024-08-15T09:35','2024-08-15T09:41','2024-08-14 09:35:05','2024-08-14 09:35:05'),(10,72,'120','2024-08-15T10:25','2024-08-15T10:28','2024-08-14 10:23:37','2024-08-14 10:23:37'),(11,87,'400','2024-08-15T10:49','2024-08-15T10:54','2024-08-14 10:48:52','2024-08-14 10:48:52'),(12,88,'450','2024-08-15T10:52','2024-08-15T10:57','2024-08-14 10:51:19','2024-08-14 10:51:19'),(13,79,'100','2024-08-15T10:53','2024-08-17T10:57','2024-08-14 10:52:49','2024-08-14 10:52:49'),(14,72,'100','2024-08-17T10:00','2024-08-24T11:00','2024-08-14 10:58:30','2024-08-14 10:58:30'),(15,70,'120','2024-08-15T11:02','2024-08-16T11:01','2024-08-14 11:01:28','2024-08-14 11:01:28');
/*!40000 ALTER TABLE `restdiscount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restfavorites`
--

DROP TABLE IF EXISTS `restfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restfavorites` (
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
-- Dumping data for table `restfavorites`
--

LOCK TABLES `restfavorites` WRITE;
/*!40000 ALTER TABLE `restfavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `restfavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restinfos`
--

DROP TABLE IF EXISTS `restinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restinfos` (
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
-- Dumping data for table `restinfos`
--

LOCK TABLES `restinfos` WRITE;
/*!40000 ALTER TABLE `restinfos` DISABLE KEYS */;
INSERT INTO `restinfos` VALUES (1,1,1,1,'台中市西屯區公益路',1,'600 - 1000','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"24\",\"00\"]','[\"11\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(2,2,1,2,'台中市北區三民路',1,'300 - 600','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"00\",\"22\",\"00\"]','[\"11\",\"30\",\"23\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(3,3,1,1,'台中市南區建國北路',1,'400 - 800','href','[\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"12\",\"00\",\"23\",\"00\"]','[\"11\",\"30\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(4,6,1,1,'台中市西區精誠路',1,'500 - 900','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"22\",\"30\"]','[\"11\",\"00\",\"23\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(5,7,2,1,'台中市北屯區文心路',1,'700 - 1200','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"12\",\"00\",\"24\",\"00\"]','[\"12\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(6,8,2,1,'台中市南屯區向上路',1,'800 - 1500','href','[\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\"]','[\"sunday\"]','[\"17\",\"00\",\"24\",\"00\"]','[\"12\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(7,9,2,1,'台中市西屯區河南路',1,'600 - 1100','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"30\",\"23\",\"30\"]','[\"11\",\"00\",\"24\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42'),(8,10,2,1,'台中市北區三民路',1,'500 - 1000','href','[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]','[\"saturday\",\"sunday\"]','[\"11\",\"00\",\"22\",\"00\"]','[\"11\",\"30\",\"23\",\"00\"]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','[null,null,null,null]','2024-08-15 00:03:42','2024-08-15 00:03:42',NULL,NULL,'2024-08-14 16:03:42','2024-08-14 16:03:42');
/*!40000 ALTER TABLE `restinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restitems`
--

DROP TABLE IF EXISTS `restitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restitems` (
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restitems`
--

LOCK TABLES `restitems` WRITE;
/*!40000 ALTER TABLE `restitems` DISABLE KEYS */;
INSERT INTO `restitems` VALUES (63,1,30,'四人饗宴',3200,'storage/images/2lTnRVTSgcV6gTgbolBQXm6th9aCQEit3MjzUZ9L.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 17:39:34','2024-08-05 17:39:34'),(64,1,30,'雙人饗宴',1200,'storage/images/MnPMXLWCl6kaT12FlFzVBBJ0jRbfZZd1pc1TPBbs.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 17:40:12','2024-08-05 17:40:12'),(65,1,31,'個人即享鍋',310,'storage/images/TCnBQxlxvQp6xk4P9FKm4eFnC8RVjvSuBmakkIbR.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 17:41:44','2024-08-05 17:41:44'),(66,1,31,'麻辣粉條鍋',289,'storage/images/jBdqBHmA51SevzGplGYqsFGd8KTJH01RJ7nMQwzW.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 17:42:19','2024-08-05 17:42:19'),(67,1,31,'青花驕麻辣燙',180,'storage/images/pS7YtfTAHmNCsruXcg1A7JEjtQoJpXMVjYH20gBM.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 17:42:38','2024-08-05 17:42:38'),(68,1,32,'干貝三鮮丸 (6顆)',240,'storage/images/s2tGFUkiuOtQiA3Fo2qxlHRQvVvnj3qm5wohjvAF.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:09:53','2024-08-05 18:09:53'),(69,1,32,'草蝦丸 (6顆)',130,'storage/images/8bzSSm1BXV2glVtDxaMuWYvBPASma9gBCeild1ho.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:18:34','2024-08-05 18:18:34'),(70,1,32,'花枝丸 (6顆)',130,'storage/images/VLPe0tuERHaDSmxmcloIKPwT2tSNTIIAu2kKl90v.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:19:37','2024-08-05 18:19:37'),(71,1,32,'貢丸 (8顆)',110,'storage/images/63HbQAAopiro3hGyyqitSNTA3YHtHwWZZsPNTKqN.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:20:34','2024-08-05 18:20:34'),(72,1,32,'香菇丸 (8顆)',130,'storage/images/ieA6dCgVqWq6tOX4vztrQKWXx25Gh8id3tL9CKWI.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:20:52','2024-08-05 18:20:52'),(73,1,32,'芋頭貢丸 (6顆)',150,'storage/images/ZENrhbtILheMfTqppoOdVlBkD9Gt9tcd4ihnUyXt.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:21:10','2024-08-05 18:21:10'),(74,1,32,'台灣牛肉丸(6顆)',210,'storage/images/Z6wg6oGxf4mJYM14EmUm7azVH7lbqsXULOTWK70f.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 18:21:28','2024-08-05 22:05:44'),(77,1,33,'花枝蝦漿 (150g)',230,'storage/images/rLPBEj95INhqHdYknpNrHEk4DeOaSqQ7bMbgdO36.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:06:39','2024-08-05 22:06:39'),(78,1,33,'飛魚卵福袋 (6顆)',150,'storage/images/ASCmbbdeGrkae0NHOpRLlEkJN0W7N5eTAL0bahc6.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:07:26','2024-08-05 22:07:26'),(79,1,33,'黃金魚蛋 (10顆)',110,'storage/images/cN0ZimU46sHTM8vMi6Q9ayBWiXR7KingUFOHEhlW.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:09:49','2024-08-05 22:09:49'),(80,1,33,'魚包蛋 (8顆)',130,'storage/images/xcWjF0HbWb7795LFwNID9QXIyc9bykrgeRqOxDX2.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:14:07','2024-08-05 22:14:07'),(81,1,33,'甜不辣 (6個)',100,'storage/images/80tFhMKdron7CHKSfUxVhyk42AbcPZwFsQoqGtIY.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:15:01','2024-08-05 22:15:01'),(82,1,33,'炸豆皮 (65g)（非基改）',100,'storage/images/UfOOgNrBXzrKjJMDq213Z5sqNDkMI19ZPgRTFO6m.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:21:50','2024-08-05 22:21:50'),(83,1,34,'科學麵',30,'storage/images/qY5o0cDVerYK1rYvJWAS3rdX1gu0Y7DSYnTawcGt.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:22:39','2024-08-05 22:22:39'),(84,1,34,'白飯',20,'storage/images/YnFnHF9SRXPG9Y2RYXqeTD6kbdZTzvUncZArdiDm.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:22:57','2024-08-05 22:22:57'),(85,1,35,'美國安格斯牛小排 (200g)',620,'storage/images/gd0N00ArfXKsNY2DliNoLbyEccDWEpS3kxug0t00.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:23:43','2024-08-05 22:23:43'),(86,1,35,'美國翼板牛 (220g)',550,'storage/images/n3vbFTAIodssYLYuD5Ztd5xcMlrhRNfB8QzrIIxJ.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:24:02','2024-08-05 22:24:02'),(87,1,35,'美國牛五花 (220g)',470,'storage/images/VPOXyc3GdZZf9Dgd8fOVGKN9Y5kTRc7NYbe0lDd5.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:24:25','2024-08-05 22:24:25'),(88,1,35,'澳洲牛梅花心 (220g)',485,'storage/images/pmGJm2EpoZFYXj8qo84159kLnrgwhzpgmvZ1Qqpm.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:24:42','2024-08-05 22:24:42'),(89,1,35,'台灣牛胸肉(200g)',450,'storage/images/R0yYdt0tHaxzJuWZUHcC4zExspfloEjcSaPQoqiK.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:24:59','2024-08-05 22:24:59'),(90,1,35,'台灣松阪豬 (200g)',390,'storage/images/TMpZP5EA67NTfDMrM14C5pC3cQR0Su6GeDGbOFZT.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:25:14','2024-08-05 22:25:14'),(91,1,35,'台灣特選梅花豬 (260g)',370,'storage/images/jwzfB7U4DnAIcENXOMpo55UZlYXBVgZz5E7VQw5k.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:25:29','2024-08-05 22:25:29'),(92,1,35,'台灣培根豬 (260g)',370,'storage/images/XJXBqMiKnmKAJaaPGbVM0YbMW6oTPiupmN0EKsGE.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-05 22:25:45','2024-08-05 22:25:45'),(93,1,36,'水晶餃 (8個)',90,'storage/images/FIAdGHHATk58LDt10hRYigA3CnLKEhOBu9RCZMra.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-08 18:51:05','2024-08-08 18:51:05'),(94,1,36,'魚餃 (10入)',100,'storage/images/1SfzvOLxGltESXmqO5exx5CviNtObeoKs6XjdeiB.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-08 18:56:24','2024-08-08 18:56:24'),(95,1,36,'香菇肉蛋餃 (5個)',160,'storage/images/Tl460KDXsqhjOSy43rzO1elw7d201QuUHaVop49d.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-08 18:56:46','2024-08-08 18:56:46'),(97,1,36,'福州燕餃 (8條)',160,'storage/images/K1wwHAZqtLkDfSskGQ2HrL7A1NAaCSw9T7FrJSDN.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-08 18:57:44','2024-08-08 18:57:44'),(98,1,37,'蔬菜拼盤',320,'storage/images/RZyTNRGMVc7UJdMOjJAHXBqVCw2cnbeaeiJwfbWo.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-08 18:59:46','2024-08-08 18:59:46'),(99,1,37,'大白菜',140,'storage/images/EgyLvzgNeyTlXpzb6TQJdrwG8FBhxPna7wJuu2vh.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-08 19:00:03','2024-08-08 19:00:03'),(104,1,37,'高麗菜',160,'storage/images/iAHGZffph4YylNrreZkM7m2x6kdOWIMVXJTDLF2J.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-11 07:08:51','2024-08-11 07:08:51'),(105,1,37,'水蓮',180,'storage/images/BEUWCTJrjoTBqCa65JjyrmFjO5ZSb95oSAdetquB.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-11 07:09:40','2024-08-11 07:09:40'),(106,1,37,'香菇',180,'storage/images/LHlukslDQn9MGB2CLMY2ucJOrFBJUDgVdaffE06J.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-11 07:10:50','2024-08-11 07:10:50'),(108,1,37,'玉米筍',150,'storage/images/dtS12NIFfOSAtmFwpqX2O5HSnQygU2LhRICW5YRk.avif','2024-08-17 07:59:08','2024-08-17 07:59:08',NULL,NULL,'2024-08-14 19:29:31','2024-08-15 06:28:36');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suitablefor`
--

LOCK TABLES `suitablefor` WRITE;
/*!40000 ALTER TABLE `suitablefor` DISABLE KEYS */;
INSERT INTO `suitablefor` VALUES (26,1,1,'2024-08-14 22:02:42','2024-08-14 22:02:42'),(27,1,2,'2024-08-14 22:02:42','2024-08-14 22:02:42'),(28,1,3,'2024-08-14 22:02:42','2024-08-14 22:02:42');
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
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','1111@gmail.com','$2y$12$QsqtNmWsqHWPcqHWs95gBeqL2eF4AQSD6oFDfZrfnGiQCn7eZZHhe','青花驕','','04-1234-5678','2024-08-08 13:33:03','2024-08-08 13:35:11'),(10,'admin','','','茶六','','','2024-08-08 13:33:03',NULL),(11,'member','123@gmail.com','$2y$12$uUvibfErP5TTu8x2Ao7TneRJOBWLHiZENBK.aBWUqdLI8SWzkkYDu','王小明','http://localhost/MySwallab/public/storage/avatar/pD7YcF7bVJpwc897OLApg9Czxni8eXZrSSZMav5Q.png','0912000333','2024-08-09 13:47:01',NULL),(12,'member','456@gmail.com','321','李大媽','','0987654321','2024-08-09 15:32:15',NULL),(13,'member','798@gmail.com','6789','王大衛','','0912345666','2024-08-10 16:00:00',NULL);
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

-- Dump completed on 2024-08-18  7:38:32
