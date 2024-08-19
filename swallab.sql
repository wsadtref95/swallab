-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-19 10:22:13
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `swallab`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `filtclasses`
--

CREATE TABLE `filtclasses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restclass` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `filtclasses`
--

INSERT INTO `filtclasses` (`id`, `restclass`, `created_at`, `updated_at`) VALUES
(1, '火鍋', NULL, NULL),
(2, '燒肉', NULL, NULL),
(3, '拉麵', NULL, NULL),
(4, '居酒屋', NULL, NULL),
(5, '甜點', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `filtlocations`
--

CREATE TABLE `filtlocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `filtpurposes`
--

CREATE TABLE `filtpurposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `filtpurposes`
--

INSERT INTO `filtpurposes` (`id`, `purpose`, `created_at`, `updated_at`) VALUES
(1, '約會', '2024-08-12 13:58:22', NULL),
(2, '聚餐', '2024-08-12 13:58:22', NULL),
(3, '慶生', '2024-08-12 13:59:05', NULL),
(4, '商務', '2024-08-12 13:59:05', NULL),
(5, '無障礙', '2024-08-12 13:59:05', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `filtsectiondemos`
--

CREATE TABLE `filtsectiondemos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `filtsectiondemos`
--

INSERT INTO `filtsectiondemos` (`id`, `section`, `created_at`, `updated_at`) VALUES
(30, '多人饗宴', '2024-08-05 01:39:34', '2024-08-05 01:39:34'),
(31, '個人即享餐', '2024-08-05 01:41:44', '2024-08-05 01:41:44'),
(32, '單點 丸子類', '2024-08-05 02:09:53', '2024-08-05 02:09:53'),
(33, '單點 火鍋料', '2024-08-05 02:22:14', '2024-08-05 02:22:14'),
(34, '單點 主食', '2024-08-05 06:22:39', '2024-08-05 06:22:39'),
(35, '單點 主菜', '2024-08-05 06:23:43', '2024-08-05 06:23:43'),
(36, '單點 餃類', '2024-08-08 02:51:05', '2024-08-08 02:51:05'),
(37, '單點 蔬菜類', '2024-08-08 02:59:46', '2024-08-08 02:59:46');

-- --------------------------------------------------------

--
-- 資料表結構 `membercreditcards`
--

CREATE TABLE `membercreditcards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `infos` varchar(255) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `membernotes`
--

CREATE TABLE `membernotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `membernotes`
--

INSERT INTO `membernotes` (`id`, `m_id`, `r_id`, `title`, `main_photo`, `per_cost`, `content`, `visited_date`, `count`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(9, 1, 1, '【台中】青花驕麻辣鍋(崇德店)王品集團麻辣鍋、酸菜白肉鍋火鍋餐廳 牛三拼盛宴比臉大氣勢十足', 'http://localhost/MySwallab/public/storage/titleImages/NEyg2gkCaRpebmscc7RxJJDgQmPpb2i4sOC6yWh2.jpg', '800 - 1000', '<p>青花驕麻辣鍋是王品集團推出的麻辣鍋品牌餐廳，麻辣湯頭加入重慶的九葉青花椒熬煮，鮮麻香醇，非常吸引我。想不到幫同事的慶生聚餐，壽星就選定青花驕麻辣鍋崇德店，當餐廳人選丟出來的時候，我完全是舉雙手雙腳同意的啊🙋‍♀️預訂好日期後，大家一起騎車前往青花驕麻辣鍋報到！</p><p>▼青花驕麻辣鍋台中崇德店位於崇德路三段與崇德九路交叉口，附近美食還有奧樂美特、很牛炭燒牛排、森森燒肉、拾七石頭火鍋、八豆食府、本格和牛燒肉放題、尚牛二館…等，完全是個美食餐廳聚集地。</p><figure class=\"image\"><img src=\"http://localhost/MySwallab/public/storage/uploads/66bf72802400b_青花驕-食記.jpg\"></figure><p>▼青花椒麻辣鍋，湯頭喝起來微麻帶辣、香醇順口，不過可能是我嘴鈍，覺得重慶江津九葉青花椒的層次香氣不明顯，好喝但不特別。而鍋底的鴨血滑嫩、豆腐孔洞不算多但有入味好吃。</p>', '2024-08-12T23:35', NULL, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-15 23:39:39', '2024-08-15 23:39:39'),
(10, 1, 1, '【台中】青花驕麻辣鍋(崇德店)王品集團麻辣鍋、酸菜白肉鍋火鍋餐廳 牛三拼盛宴比臉大氣勢十足', 'http://localhost/MySwallab/public/storage/titleImages/10.jpg', '600~900元', '<p class=\"mb-5\" >\n                        青花驕麻辣鍋是王品集團推出的麻辣鍋品牌餐廳，麻辣湯頭加入重慶的九葉青花椒熬煮，鮮麻香醇，非常吸引我。想不到幫同事的慶生聚餐，壽星就選定青花驕麻辣鍋崇德店，當餐廳人選丟出來的時候，我完全是舉雙手雙腳同意的啊🙋‍♀️預訂好日期後，大家一起騎車前往青花驕麻辣鍋報到！\n                    </p>\n                    <p class=\"mb-3\" >\n                        ▼青花驕麻辣鍋台中崇德店位於崇德路三段與崇德九路交叉口，附近美食還有奧樂美特、很牛炭燒牛排、森森燒肉、拾七石頭火鍋、八豆食府、本格和牛燒肉放題、尚牛二館…等，完全是個美食餐廳聚集地。\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_1.webp\" alt=\"\" class=\"mb-5\"/>\n                    <p class=\"mb-3\" >\n                        ▼青花椒麻辣鍋，湯頭喝起來微麻帶辣、香醇順口，不過可能是我嘴鈍，覺得重慶江津九葉青花椒的層次香氣不明顯，好喝但不特別。而鍋底的鴨血滑嫩、豆腐孔洞不算多但有入味好吃。\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_spicyhotpot.jpg\" alt=\"\" class=\"mb-5\"/ >\n                    <p class=\"mb-3\" >\n                        ▼青花椒麻口水雞，椒麻醬香氣十足，雞肉也蠻嫩的，好吃。\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_chicken.jpg\" alt=\"\" class=\"mb-5\"/>\n                    <p class=\"mb-3\" >\n                        ▼牛三拼盛宴(牛小排、雪花牛、牛梅花)，我最喜歡油脂分布均勻的牛小排，在熱湯裡輕涮至粉紅色就可以吃啦，香軟嫩口！\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_beef.jpg\" alt=\"\" class=\"mb-5\"/>\n                    <p class=\"mb-3\" >\n                        ▼仙氣海宴，這整盤~我只吃到了干貝，煮熟後軟彈帶嫩，不錯吃。\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_seafood.jpg\" alt=\"\" class=\"mb-5\"/>\n                    <p class=\"mb-3\">\n                        ▼鮮蝦滑、墨魚滑，鮮蝦滑吃得到蝦肉、墨魚滑也吃得到細小墨魚肉，蠻實在的。\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_shrimp.jpg\" alt=\"\" class=\"mb-5\"/>\n                    <p class=\"mb-3\" >\n                        ▼甜點冰糖銀耳，裡頭除了細細的銀耳還有枸杞，冰甜好喝，只有一小杯不夠啊~\n                    </p>\n                    <img src=\"../images/foodnotes_demo/qhj_dessert.jpg\" alt=\"\" class=\"mb-5\"/>\n<article>\n                        <h5>青花驕麻辣鍋 台中崇德店</h5>\n                        <p>均消：<span>600</span>~<span>900</span>元</p>\n                        <p>電話：<span>04-2422-3286</span></p>\n                        <p>地址：<span>台中市北屯區崇德路三段189號</span></p>\n                        <p>營業時間：<span>11:00</span>~<span>1:00</span></p>\n                    </article>', '2024-08-01 12:30:07', 202489, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-09 23:20:13', NULL),
(11, 1, 22, '全程專人代烤壽星優惠95折，KODO和牛燒肉', 'http://localhost/MySwallab/public/storage/titleImages/2.png', NULL, '', '', 202377, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-30 23:28:50', NULL),
(12, 1, 58, '甜點秘境「貳林工作室」，必嚐ig爆紅「芋泥抹茶戚風三明治」超美味又超好拍！', 'http://localhost/MySwallab/public/storage/titleImages/12.jpg', NULL, '', '', 202203, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-10 23:28:50', NULL),
(13, 1, 27, '懸日拉麵｜以水果入湯頭，主打新潮系的精緻創意拉麵店', 'http://localhost/MySwallab/public/storage/titleImages/13.jpg', NULL, '', '', 202189, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-03 23:31:06', NULL),
(14, 1, 37, '【台中食記】西區近科博館老宅改建〔 小麥所居酒屋 〕台日結合創意料理，高人氣聚餐地點，深夜食堂好所在。', 'http://localhost/MySwallab/public/storage/titleImages/14.jpg', NULL, '', '', 201989, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-04 23:31:06', NULL),
(15, 1, 23, '【台中-南屯區】燒肉風間｜套餐份量超多，桌邊服務超讚的啦', 'http://localhost/MySwallab/public/storage/titleImages/15.jpeg', NULL, '', '', 202256, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-10 23:32:34', NULL),
(16, 1, 32, 'La麺Knock Out│由日本人主廚坐鎮，以濃郁蝦濃湯為基底再加松露的拉麵超特別', 'http://localhost/MySwallab/public/storage/titleImages/16.jpg', NULL, '', '', 202189, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-03 23:32:34', NULL),
(17, 1, 3, '【台中西區】肉多多火鍋（台中廣三店）CP值超高的平價吃到飽火鍋 會員免費送肉 肉量超大方 台中最強火鍋推薦 好吃的個人小火鍋/石頭鍋/酸菜鍋 SOGO美食餐廳', 'http://localhost/MySwallab/public/storage/titleImages/17.png', NULL, '', '', 202076, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-30 23:33:59', NULL),
(18, 1, 36, '【台中 拉麵】MEN monster 挺有意思的香料拉麵，味道濃郁但口感清爽充滿衝突的特色拉麵', 'http://localhost/MySwallab/public/storage/titleImages/18.jpg', NULL, '', '', 202138, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-17 23:40:11', NULL),
(19, 1, 57, '台中西區│離域Cafe-老宅咖啡館，多了新品千層酥的選擇，審計新村附近甜點咖啡美食推薦', 'http://localhost/MySwallab/public/storage/titleImages/19.jpg', NULL, '', '', 202010, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-09 23:40:11', NULL),
(20, 1, 5, '月暮藏涮涮鍋 |台中西屯活體海鮮、日本和牛，浮誇貴氣裝潢+個人火鍋套餐499元起', 'http://localhost/MySwallab/public/storage/titleImages/20.jpg', NULL, '', '', 201956, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-02 23:42:40', NULL),
(21, 1, 61, '【台中甜點推薦】Overture序曲 千層蛋糕水果蛋糕IG網美人氣名店！', 'http://localhost/MySwallab/public/storage/titleImages/21.jpg', NULL, '', '', 201907, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-02 23:42:40', NULL),
(22, 1, 9, '台中火鍋-湯棧 公益店，麻油雞鍋、剝皮辣椒鍋 營業到凌晨二點冷冬宵夜首選', 'http://localhost/MySwallab/public/storage/titleImages/22.jpeg', NULL, '', '', 201896, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-17 23:43:38', '0000-00-00 00:00:00'),
(23, 1, 3, '嗑肉石鍋美術店 百樣自助吧吃到飽。北高雄首間嗑肉石鍋二代店', 'http://localhost/MySwallab/public/storage/titleImages/23.jpeg', NULL, '', '', 201850, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, NULL, NULL),
(24, 1, 11, '偈亭泡菜鍋| 台中超狂小火鍋，火鍋配料多到滿出來', 'http://localhost/MySwallab/public/storage/titleImages/24.jpg', NULL, '', '', 201803, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-10 23:44:39', NULL),
(25, 1, 7, '有火鍋|台中南屯火鍋美食，麻辣湯居然可喝又不加牛油', 'http://localhost/MySwallab/public/storage/titleImages/25.jpg', NULL, '', '', 201796, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-06-10 23:44:39', NULL),
(26, 1, 4, '雲雀集團-涮乃葉日式涮涮鍋來基隆展店囉。火鍋吃到飽。雙和牛、海鮮吃到飽', 'http://localhost/MySwallab/public/storage/titleImages/26.png', NULL, '', '', 201768, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-13 23:58:21', NULL),
(27, 1, 5, '漂亮火鍋 |台中火鍋吃到飽，20多種豐富海鮮、8款肉品吃到飽，哈根達斯、星巴', 'http://localhost/MySwallab/public/storage/titleImages/27.jpg', NULL, '', '', 201733, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-14 23:58:21', NULL),
(28, 1, 8, '台中｜良食煮意有機鍋物：養生者天堂！有機葉菜無限續加的吃到飽火鍋！', 'http://localhost/MySwallab/public/storage/titleImages/28.jpeg', NULL, '', '', 201705, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:09:53', NULL),
(29, 1, 9, '[台中北屯區]蔬菜飲料自助吧吃到飽－鍋食主艺', 'http://localhost/MySwallab/public/storage/titleImages/29.jpg', NULL, '', '', 201696, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-16 00:09:53', NULL),
(30, 1, 7, '鼎王麻辣鍋公益店，台中老字號麻辣鍋店，麻辣鴨血豆腐無限續', 'http://localhost/MySwallab/public/storage/titleImages/30.jpg', NULL, '', '', 201655, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:10:50', NULL),
(31, 1, 24, '訂位很容易爆滿的知名台中燒肉店，屋馬菜單怎麼點才划算', 'http://localhost/MySwallab/public/storage/titleImages/31.jpg', NULL, '', '', 201889, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-15 00:10:50', NULL),
(32, 1, 14, '山鯨燒肉漢口店．一秒飛日本用餐還可以體驗穿和服拍美照！', 'http://localhost/MySwallab/public/storage/titleImages//32.png', NULL, '', '', 201855, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-09 00:11:49', NULL),
(33, 1, 17, '台中日式燒肉推薦：川原痴，不需要動手！專業代烤好滋味', 'http://localhost/MySwallab/public/storage/titleImages/33.jpeg', NULL, '', '', 201832, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, NULL, NULL),
(34, 1, 21, '森森燒肉-洲際店 雙人套餐家自助吧無限量吃到飽，限時120分鐘', 'http://localhost/MySwallab/public/storage/titleImages/34.jpg', NULL, '', '', 201797, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-10 00:16:43', NULL),
(35, 1, 20, '燒肉Smile－個人燒肉、生菜沙拉自助飲料吧', 'http://localhost/MySwallab/public/storage/titleImages/35.png', NULL, '', '', 201781, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-02 00:16:43', NULL),
(36, 1, 20, '碳佐麻里精品燒肉｜燒肉界南霸天，無用餐時間限制', 'http://localhost/MySwallab/public/storage/titleImages/36.jpeg', NULL, '', '', 201754, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:17:51', NULL),
(37, 1, 20, '【紅巢燒肉工房】吃燒烤全程服務生代烤等吃就好～', 'http://localhost/MySwallab/public/storage/titleImages/37.jpeg', NULL, '', '', 201732, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:17:51', NULL),
(38, 1, 16, '[台中] 專人剝蝦 老井極上燒肉 美村店 台中在地人推薦必吃 台中高級燒肉|銷魂A5和牛 雞湯冰沙無限續|老井訂位 |桌邊服務烤海鮮 和牛| 1公分超厚切牛舌', 'http://localhost/MySwallab/public/storage/titleImages/38.jpeg', NULL, '', '', 201711, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-03 00:18:46', NULL),
(39, 1, 20, '台中南屯||肉肉燒肉，單人用餐經濟實惠，雙人套餐高貴不貴!', 'http://localhost/MySwallab/public/storage/titleImages/39.jpeg', NULL, '', '', 201678, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:18:46', NULL),
(40, 1, 20, '胡同燒肉-燒肉食材新鮮就是王道，還有專人代烤、貼心解說服務，讓人怎能不愛呢。', 'http://localhost/MySwallab/public/storage/titleImages/40.jpg', NULL, '', '', 201655, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-08 00:28:07', NULL),
(41, 1, 30, '伊禾白湯｜宛如在吃板前料理的醇厚牛白湯拉麵', 'http://localhost/MySwallab/public/storage/titleImages/41.jpg', NULL, '', '', 201854, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-03 00:28:07', NULL),
(42, 1, 30, '拉麵王者 濃郁好吃的家系拉麵 不用排隊就可以享受一碗熱騰騰的日式拉麵', 'http://localhost/MySwallab/public/storage/titleImages/42.jpg', NULL, '', '', 201832, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-07 00:33:33', NULL),
(43, 1, 30, '不開晚上也不開六日，只有平日吃得到，雞湯濃醇肉超軟．宋囍拉麵', 'http://localhost/MySwallab/public/storage/titleImages/43.jpg', NULL, '', '', 201801, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-17 00:33:33', NULL),
(44, 1, 30, '山嵐拉麵安通溫泉店｜安通溫泉飯店內．精緻日式庭院景觀．泡湯後來碗拉麵吧!', 'http://localhost/MySwallab/public/storage/titleImages/44.jpg', NULL, '', '', 201791, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:42:03', NULL),
(45, 1, 30, '創作拉麵 悠然｜淡麗系拉麵的指標性名店！用多元食材創造新穎日式口味', 'http://localhost/MySwallab/public/storage/titleImages/45.jpg', NULL, '', '', 201774, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-03 00:42:03', NULL),
(46, 1, 30, '福屋｜超強素食拉麵，醇厚湯頭有著不輸葷食的鮮美風味', 'http://localhost/MySwallab/public/storage/titleImages/46.jpg', NULL, '', '', 201721, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:43:37', NULL),
(47, 1, 30, '金晴川拉麵，濃郁湯頭搭配超大塊叉燒', 'http://localhost/MySwallab/public/storage/titleImages/47.jpg', NULL, '', '', 201710, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-05 00:43:37', NULL),
(48, 1, 30, '麵處佐藤北海道拉麵，台灣台中西區，香濃開胃帶廣辣味噌拉麵', 'http://localhost/MySwallab/public/storage/titleImages/48.jpg', NULL, '', '', 201698, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-05 00:44:29', NULL),
(49, 1, 30, '台中霧峰日式拉麵店～麵屋黑心，以雞白湯與雞清湯為主打，辣肉丁烤飯有特色！', 'http://localhost/MySwallab/public/storage/titleImages/49.jpg', NULL, '', '', 201615, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-12 00:44:29', NULL),
(50, 1, 37, '十八魂手串燒烤 逢甲平價串燒居酒屋 烤功紮實 營業到半夜', 'http://localhost/MySwallab/public/storage/titleImages/50.jpg', NULL, '', '', 201876, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-05 00:45:11', NULL),
(51, 1, 41, '【台中居酒屋】容燒居酒屋 寵物友善餐廳推薦！還有狗狗專屬串燒好狗命炒飯', 'http://localhost/MySwallab/public/storage/titleImages/51.jpg', NULL, '', '', 201832, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-12 00:45:11', NULL),
(52, 1, 44, '台中高人氣日式居酒屋｜將軍府勤美店，大啖比手掌大的大生蠔、串燒、特色清酒，菜單完全無雷絕對讓人再回訪！！', 'http://localhost/MySwallab/public/storage/titleImages/52.jpg', NULL, '', '', 201797, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-06 00:46:04', NULL),
(53, 1, 39, '我流精緻烤物│營業到凌晨二點的吃宵夜看球賽好去處，套餐新上市讓點餐更方便，對面就有免費特約停車場喔～', 'http://localhost/MySwallab/public/storage/titleImages/53.jpeg', NULL, '', '', 201763, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-31 00:46:04', NULL),
(54, 1, 40, '【台中北區】拿手串日式串燒居酒屋－招牌烤肉串與熱炒應有盡有，朋友聚會與下班小酌聊天的好所在！', 'http://localhost/MySwallab/public/storage/titleImages/54.jpg', NULL, '', '', 201745, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:47:42', NULL),
(55, 1, 46, '【台中北屯。美食】『港町十三番地-太原店』老字號居酒屋！營業到凌晨的宵夜聚餐好去處！', 'http://localhost/MySwallab/public/storage/titleImages/55.png', NULL, '', '', 201712, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-22 00:47:42', NULL),
(56, 1, 47, '「激旨燒き鳥GEKIUMA YAKITORI 台灣總店」逢甲夜市人氣串燒店推出外帶優惠', 'http://localhost/MySwallab/public/storage/titleImages/56.jpg', NULL, '', '', 201688, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-10 00:48:28', NULL),
(57, 1, 48, '織田信長串燒、酒場-西屯本舖│台中深夜美食推薦！日式居酒屋，串燒好吃，品項超多，宵夜最佳首選～', 'http://localhost/MySwallab/public/storage/titleImages/57.jpg', NULL, '', '', 201645, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-03 00:48:28', NULL),
(58, 1, 43, '台中美食║北區║草津田居酒屋║台中北區深夜食堂', 'http://localhost/MySwallab/public/storage/titleImages/58.jpg', NULL, '', '', 201611, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-22 00:49:15', NULL),
(59, 1, 40, '虎川千代居酒屋|台中居酒屋推薦中國醫日式老宅網評滿分!聚餐宵夜慶生老闆送很大', 'http://localhost/MySwallab/public/storage/titleImages/59.jpg', NULL, '', '', 201589, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:49:15', NULL),
(60, 1, 45, '鳥忠とりちゅう：台中西區美食-鄰近草悟道的深夜食堂日式居酒屋，必點尚青的海鮮料理！', 'http://localhost/MySwallab/public/storage/titleImages/60.jpg', NULL, '', '', 201543, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-06 00:50:08', NULL),
(61, 1, 50, 'J.W. Cafe｜網路爆紅的貓掌印布丁就是這間！每日限量供應', 'http://localhost/MySwallab/public/storage/titleImages/61.jpeg', NULL, '', '', 201879, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 00:50:08', NULL),
(62, 1, 50, '人氣咖啡「Ten Thousand Coffee」插旗台中！純白基地打造海島度假概念店', 'http://localhost/MySwallab/public/storage/titleImages/62.jpeg', NULL, '', '', 201834, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-09 00:52:17', NULL),
(63, 1, 50, '二月森甜點工作室｜台中人氣法式手工餅乾甜點專賣', 'http://localhost/MySwallab/public/storage/titleImages/63.webp', NULL, '', '', 201802, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-10 00:52:17', NULL),
(64, 1, 50, '偷偷toutou | 台中超浮誇甜點16宮格乾冰塔', 'http://localhost/MySwallab/public/storage/titleImages/64.jpeg', NULL, '', '', 201787, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-10 03:53:06', NULL),
(65, 1, 50, '克莉斯塔｜多達10多種鹹甜口味，最推焦糖佐海鹽蛋塔', 'http://localhost/MySwallab/public/storage/titleImages/65.jpeg', NULL, '', '', 201741, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-04 03:53:06', NULL),
(66, 1, 50, 'LOWCA勞咖| 台中炸饅頭早午餐還有超邪惡的台版蜜糖吐司', 'http://localhost/MySwallab/public/storage/titleImages/66.jpeg', NULL, '', '', 201708, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-13 03:54:01', NULL),
(67, 1, 50, '【台中西屯美食】查壹茶Charlie Tea & Coffee，神等級好吃流心感巴斯克蛋糕、爆漿抹茶鬆餅，中科商圈美食，台中甜點推薦，巴斯克乳酪蛋糕推薦', 'http://localhost/MySwallab/public/storage/titleImages/67.jpg', NULL, '', '', 201689, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, NULL, NULL),
(68, 1, 50, '綠町抹茶專門店-巷弄裡的抹茶專賣店，使用丸久小山園抹茶粉製作，抹茶控必收藏', 'http://localhost/MySwallab/public/storage/titleImages/68.jpg', NULL, '', '', 201664, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-03 03:54:41', NULL),
(69, 1, 50, '蒔初甜點五權店:清新可愛綠葡萄戚風蛋糕', 'http://localhost/MySwallab/public/storage/titleImages/69.jpg', NULL, '', '', 201622, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-05 03:54:41', NULL),
(70, 1, 4, '台中 | 昭日堂燒肉鍋煮－近IKEA高CP值火鍋店，自助吧超多選擇讓你吃到飽', 'http://localhost/MySwallab/public/storage/titleImages/70.jpg', NULL, '', '', 15005, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-17 03:55:29', NULL),
(71, 1, 4, '台中｜森饗鍋物：絕美森林系火鍋店！人氣必點胡椒豬肚、川香酸菜魚', 'http://localhost/MySwallab/public/storage/titleImages/71.jpg', NULL, '', '', 52799, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-07 03:55:29', NULL),
(72, 1, 4, '久違石頭火鍋｜台中超美復古鳥籠火鍋餐廳，不但有火烤兩吃，還有鮮蔬鍋料吃到飽！現在加購龍蝦不用100元！', 'http://localhost/MySwallab/public/storage/titleImages/72.jpg', NULL, '', '', 36749, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-14 03:56:44', NULL),
(73, 1, 187, '俺達の肉屋 | 台中日本和牛燒肉專賣店，台中米其林指南一星推薦。台中燒肉推薦', 'http://localhost/MySwallab/public/storage/titleImages/73.jpg', NULL, '', '', 36478, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-15 03:56:44', NULL),
(74, 1, 20, '茶六燒肉堂公益店｜台中必吃燒肉，超難訂位的茶六，雙人和牛套餐好吃，有包廂營業到半夜2點', 'http://localhost/MySwallab/public/storage/titleImages/74.jpg', NULL, '', '', 12397, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-10 03:57:33', NULL),
(75, 1, 26, '【台中】山下公園 ラーメン 第六市場，常常需要排隊的拉麵店', 'http://localhost/MySwallab/public/storage/titleImages/75.jpg', NULL, '', '', 36972, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-14 04:12:50', NULL),
(76, 1, 36, '「月樽拉麵精誠店」台中深夜食堂！柚見花香蝦湯拉麵、炙牛肉魂叉燒泡飯味道好驚艷！', 'http://localhost/MySwallab/public/storage/titleImages/76.jpg', NULL, '', '', 36478, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-09 03:58:15', NULL),
(77, 1, 29, '牛庵拉麵｜台中拉麵推薦，狸匠系列咖哩牛骨拉麵，超濃郁咖哩飯吃到飽，唐揚雞必點', 'http://localhost/MySwallab/public/storage/titleImages/77.jpg', NULL, '', '', 31452, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-12 03:58:15', NULL),
(78, 1, 40, '六月螢火｜台中深夜食堂，日料串燒結合調酒，時髦現代居酒屋，消費超平價', 'http://localhost/MySwallab/public/storage/titleImages/78.jpg', NULL, '', '', 78422, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-14 03:59:02', NULL),
(79, 1, 40, '太原夜市人氣串燒”吾曹炭燒專門”開店囉！！40種以上創意串燒+獨門醬料，日式關東煮暖暖吃超滿足(寵物友善餐)', 'http://localhost/MySwallab/public/storage/titleImages/79.jpg', NULL, '', '', 45782, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-16 03:59:02', NULL),
(80, 1, 40, '【灸居｜台中 北屯區居酒屋】 無低消 高cp值 寵物友善串燒居酒屋 串物價格40元起', 'http://localhost/MySwallab/public/storage/titleImages/80.jpg', NULL, '', '', 41278, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-10 03:59:59', NULL),
(81, 1, 58, '若草．台中模範街神秘甜點店，水果千層、焦糖布丁大推', 'http://localhost/MySwallab/public/storage/titleImages/81.jpg', NULL, '', '', 45731, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-14 03:59:59', NULL),
(82, 1, 53, '台中西區 日日鬆餅 平價舒芙蕾鬆餅 審計新村必吃美食', 'http://localhost/MySwallab/public/storage/titleImages/82.jpg', NULL, '', '', 41783, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-10 04:00:57', NULL),
(83, 1, 50, '台中北區 可可庫奇甜點工坊 到中友一中商圈逛街、用餐後的甜點午茶好選擇', 'http://localhost/MySwallab/public/storage/titleImages/83.jpg', NULL, '', '', 75682, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-12 04:00:57', NULL),
(84, 1, 20, '俺達の肉屋 | 台中日本和牛燒肉專賣店，台中米其林指南一星推薦。台中燒肉推薦', '', NULL, '', '', 36478, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-15 04:14:33', NULL),
(85, 1, 29, 'ojsdfipjspdfpijsjf', 'http://localhost/MySwallab/public/storage/titleImages/gFyK3eeTbpEmloyV4zbgA2BMDYZAyEbN1g2Ov0Ov.webp', '500 - 600', '<p>ererw<img src=\"http://localhost/MySwallab/public/storage/uploads/66c2a4743831f_老乾杯.webp\"></p>', '2024-08-19T09:42', NULL, '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-18 17:48:39', '2024-08-18 17:48:39');

-- --------------------------------------------------------

--
-- 資料表結構 `memberreviews`
--

CREATE TABLE `memberreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `memberreviews`
--

INSERT INTO `memberreviews` (`id`, `m_id`, `r_id`, `score`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(2, 1, 2, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(3, 1, 3, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(4, 1, 4, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(5, 1, 5, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(6, 1, 6, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(7, 1, 7, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(8, 1, 8, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(9, 1, 9, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(10, 1, 10, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(11, 1, 11, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(12, 1, 12, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(13, 1, 13, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(14, 1, 14, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(15, 1, 15, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(16, 1, 16, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(17, 1, 17, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(18, 1, 18, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(19, 1, 19, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(20, 1, 20, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(21, 1, 21, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(22, 1, 22, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(23, 1, 23, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(24, 1, 24, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(25, 1, 25, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(26, 1, 26, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(27, 1, 27, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(28, 1, 28, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(29, 1, 29, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(30, 1, 30, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(31, 1, 31, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(32, 1, 32, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(33, 1, 33, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(34, 1, 34, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(35, 1, 35, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(36, 1, 36, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(37, 1, 37, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(38, 1, 38, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(39, 1, 39, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(40, 1, 40, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(41, 1, 41, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(42, 1, 42, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(43, 1, 43, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(44, 1, 44, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(45, 1, 45, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(46, 1, 46, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(47, 1, 47, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(48, 1, 48, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(49, 1, 49, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(50, 1, 50, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(51, 1, 51, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(52, 1, 52, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(53, 1, 53, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(54, 1, 54, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(55, 1, 55, 2, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(56, 1, 56, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(57, 1, 57, 3, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(58, 1, 58, 1, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(59, 1, 59, 4, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL),
(60, 1, 60, 5, '2024-08-17 18:44:07', '2024-08-17 18:44:07', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`id`, `user_id`, `sum_tracking`, `sum_fans`, `thr_link`, `ins_link`, `fb_link`, `bio`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(1, 11, 10, 0, NULL, NULL, NULL, NULL, '2024-08-17 07:59:06', '2024-08-17 07:59:06', NULL, NULL, NULL, NULL),
(2, 12, 0, 0, NULL, NULL, NULL, NULL, '2024-08-17 07:59:06', '2024-08-17 07:59:06', NULL, NULL, NULL, NULL),
(3, 13, 0, 0, NULL, NULL, NULL, NULL, '2024-08-17 07:59:06', '2024-08-17 07:59:06', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(914, '2024_08_12_000139_create_filtclasses_table', 1),
(915, '2024_08_12_081414_create_filtlocations_table', 1),
(916, '2024_08_12_081430_create_filtsectiondemos_table', 1),
(917, '2024_08_12_081446_create_filtpurposes_table', 1),
(918, '2024_08_12_081503_create_orderstatuses_table', 1),
(919, '2024_08_12_081710_create_users_table', 1),
(920, '2024_08_12_091152_create_members_table', 1),
(921, '2024_08_12_094048_create_restinfos_table', 1),
(922, '2024_08_12_103230_create_member_credit_cards_tables', 1),
(923, '2024_08_12_103953_create_member_notes', 1),
(924, '2024_08_12_104529_create_member_reviews', 1),
(925, '2024_08_12_104747_create_notes_comments', 1),
(926, '2024_08_12_105015_create_rest_comments', 1),
(927, '2024_08_12_105115_create_notes_favorites', 1),
(928, '2024_08_12_105130_create_rest_favorites', 1),
(929, '2024_08_12_105616_create_rest_items', 1),
(930, '2024_08_12_110016_create_rest_discount', 1),
(931, '2024_08_12_110231_create_order_infos', 1),
(932, '2024_08_12_110633_create_order_details', 1),
(933, '2024_08_12_110910_create_suitable_for', 1),
(934, '2024_08_12_121356_users_addemail_verified_at', 1),
(935, '2024_08_12_162648_create_cache_table', 1),
(936, '2024_08_13_092753_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `notescomments`
--

CREATE TABLE `notescomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `m_n_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `notescomments`
--

INSERT INTO `notescomments` (`id`, `m_id`, `m_n_id`, `content`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '青花驕的火鍋非常美味，湯底濃郁，尤其是他們的招牌麻辣鍋，香辣可口，讓人一吃成主顧！', '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-24 04:33:57', NULL),
(2, 2, 10, '第一次嘗試青花驕火鍋，肉質新鮮，菜品選擇豐富。服務也很周到，下次還會再來！', '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-07-31 04:33:57', NULL),
(3, 3, 10, '火鍋的湯底選擇很多，最喜歡他們的鮮蔬鍋，清淡又營養。價格實惠，適合家庭聚餐。', '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, '2024-08-02 04:36:05', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `notesfavorites`
--

CREATE TABLE `notesfavorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `m_n_id` bigint(20) UNSIGNED NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `o_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `o_id`, `item_name`, `item_price`, `item_qty`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(2, 2, '台灣培根豬 (260g)', 370, 2, '2024-08-08', '05:23:52', NULL, NULL, '2024-08-07 21:23:52', '2024-08-07 21:23:52'),
(3, 2, '花枝蝦漿 (150g)', 230, 3, '2024-08-08', '05:23:52', NULL, NULL, '2024-08-07 21:23:52', '2024-08-07 21:23:52'),
(4, 3, '單點 蔬菜類', 180, 1, '2024-08-09', '23:35:52', NULL, NULL, '2024-08-09 15:35:52', '2024-08-07 21:23:52'),
(5, 3, '個人即享鍋', 310, 2, '2024-08-09', '23:35:52', NULL, NULL, '2024-08-09 15:35:52', '2024-08-07 21:23:52'),
(6, 2, '香菇肉蛋餃 (5個)', 160, 3, '2024-08-08', '05:23:52', NULL, NULL, '2024-08-07 21:23:52', '2024-08-07 21:23:52'),
(7, 4, '雙人饗宴', 1200, 1, '2024-08-08', '01:28:39', NULL, NULL, '2024-08-07 17:28:39', '2024-08-07 21:23:52'),
(8, 4, '香菇丸 (8顆)', 130, 2, '2024-08-08', '01:28:39', NULL, NULL, '2024-08-07 17:28:39', '2024-08-07 21:23:52'),
(9, 4, '美國安格斯牛小排 (200g)', 620, 1, '2024-08-08', '01:29:52', NULL, NULL, '2024-08-07 17:29:52', '2024-08-07 21:23:52'),
(10, 4, '蔬菜拼盤', 320, 2, '2024-08-08', '01:29:52', NULL, NULL, '2024-08-07 17:29:52', '2024-08-07 21:23:52');

-- --------------------------------------------------------

--
-- 資料表結構 `orderinfos`
--

CREATE TABLE `orderinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `o_s_id` bigint(20) UNSIGNED NOT NULL,
  `utensils` tinyint(1) NOT NULL,
  `booking_date` varchar(255) NOT NULL,
  `booking_time` varchar(255) NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orderinfos`
--

INSERT INTO `orderinfos` (`id`, `m_id`, `r_id`, `o_s_id`, `utensils`, `booking_date`, `booking_time`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, '2024-08-08', '[\"10\", \"30\"]', '', '', '', '', '2024-08-07 21:23:52', '2024-08-10 14:08:27'),
(3, 2, 1, 1, 1, '2024-08-11', '[\"12\", \"30\"]', '', '', '', '', '2024-08-09 15:34:17', '2024-08-10 08:40:14'),
(4, 3, 1, 3, 0, '2024-08-08', '[\"10\", \"00\"]', '', '', '', '', '2024-08-07 17:26:33', '2024-08-13 15:42:27'),
(5, 3, 2, 1, 1, '2024-08-14', '[\"10\", \"00\"]', '', '', '', '', '2024-08-13 20:08:22', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orderstatuses`
--

INSERT INTO `orderstatuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'unconfirmed', '2024-08-07 21:23:52', NULL),
(2, 'wip', '2024-08-09 13:50:10', NULL),
(3, 'done', '2024-08-09 13:50:10', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Users', 1, 'auth_token', '4ad65d99c655e801e92ba3f4acea378cbc81726ccb82715246dc78dcb76d680d', '[\"*\"]', NULL, NULL, '2024-08-16 22:10:45', '2024-08-16 22:10:45'),
(2, 'App\\Models\\Users', 1, 'auth_token', '9a6d8993651cdc25701783b20385c6d0e5e2a988e03f50e60d616821b3eeca1d', '[\"*\"]', NULL, NULL, '2024-08-16 22:19:24', '2024-08-16 22:19:24'),
(3, 'App\\Models\\Users', 1, 'auth_token', '2befa5bfa52440665ee0805c7902129e53a78f2d6cf465a4ae213de76f37fa83', '[\"*\"]', NULL, NULL, '2024-08-16 22:19:25', '2024-08-16 22:19:25'),
(4, 'App\\Models\\Users', 1, 'auth_token', '63693ed87199b58203870c744c10c9b2112e200d62d3b68b5904e4160b0ac1e6', '[\"*\"]', NULL, NULL, '2024-08-17 02:17:33', '2024-08-17 02:17:33');

-- --------------------------------------------------------

--
-- 資料表結構 `restcomments`
--

CREATE TABLE `restcomments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `restcomments`
--

INSERT INTO `restcomments` (`id`, `m_id`, `r_id`, `content`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '好吃！', '2024-08-17 07:59:07', '2024-08-17 07:59:07', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `restdiscount`
--

CREATE TABLE `restdiscount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_i_id` bigint(20) UNSIGNED NOT NULL,
  `discount_price` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `end_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `restdiscount`
--

INSERT INTO `restdiscount` (`id`, `r_i_id`, `discount_price`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 32, '200', '2024-08-05T00:10', '2024-08-05T00:12', '2024-08-04 00:10:52', '2024-08-04 00:10:52'),
(2, 32, '200', '2024-08-05T00:16', '2024-08-05T00:19', '2024-08-04 00:16:12', '2024-08-04 00:16:12'),
(3, 31, '300', '2024-08-05T10:21', '2024-08-05T10:22', '2024-08-04 10:20:44', '2024-08-04 10:20:44'),
(4, 33, '100', '2024-08-05T10:22', '2024-08-05T10:24', '2024-08-04 10:22:03', '2024-08-04 10:22:03'),
(5, 34, '3000', '2024-08-05T10:25', '2024-08-05T10:27', '2024-08-04 10:22:03', '2024-08-04 10:22:03'),
(6, 31, '200', '2024-08-05T10:32', '2024-08-05T10:34', '2024-08-04 10:31:16', '2024-08-04 10:31:16'),
(7, 69, '100', '2024-08-10T12:04', '2024-08-10T12:07', '2024-08-09 12:05:07', '2024-08-09 12:05:07'),
(8, 80, '110', '2024-08-12T09:18', '2024-08-12T09:22', '2024-08-11 09:17:09', '2024-08-11 09:17:09'),
(9, 104, '150', '2024-08-15T09:35', '2024-08-15T09:41', '2024-08-14 09:35:05', '2024-08-14 09:35:05'),
(10, 72, '120', '2024-08-15T10:25', '2024-08-15T10:28', '2024-08-14 10:23:37', '2024-08-14 10:23:37'),
(11, 87, '400', '2024-08-15T10:49', '2024-08-15T10:54', '2024-08-14 10:48:52', '2024-08-14 10:48:52'),
(12, 88, '450', '2024-08-15T10:52', '2024-08-15T10:57', '2024-08-14 10:51:19', '2024-08-14 10:51:19'),
(13, 79, '100', '2024-08-15T10:53', '2024-08-17T10:57', '2024-08-14 10:52:49', '2024-08-14 10:52:49'),
(14, 72, '100', '2024-08-17T10:00', '2024-08-24T11:00', '2024-08-14 10:58:30', '2024-08-14 10:58:30'),
(15, 70, '120', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 11:01:28', '2024-08-14 11:01:28'),
(16, 131, '700', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(17, 131, '700', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(18, 130, '500', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(19, 124, '400', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(20, 132, '100', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(21, 122, '235', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(22, 121, '150', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(23, 117, '600', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(24, 111, '1350', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(25, 116, '80', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(26, 123, '260', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(27, 128, '230', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(28, 127, '160', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(29, 118, '190', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(30, 126, '115', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(31, 109, '260', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(32, 120, '80', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(33, 119, '120', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(34, 115, '120', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(35, 114, '60', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(36, 110, '125', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(37, 113, '55', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(38, 112, '165', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(39, 129, '130', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(40, 125, '180', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28'),
(41, 133, '180', '2024-08-15T11:02', '2024-08-16T11:01', '2024-08-14 03:01:28', '2024-08-14 03:01:28');

-- --------------------------------------------------------

--
-- 資料表結構 `restfavorites`
--

CREATE TABLE `restfavorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:07',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `restinfos`
--

CREATE TABLE `restinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `f_c_id` bigint(20) UNSIGNED NOT NULL,
  `f_l_id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `restinfos`
--

INSERT INTO `restinfos` (`id`, `user_id`, `f_c_id`, `f_l_id`, `address`, `status`, `avg_price`, `href`, `weekday`, `weekend`, `wd_operating`, `we_operating`, `wd_close_1`, `wd_close_2`, `we_close_1`, `we_close_2`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '台中市西屯區公益路', 1, '600 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"30\",\"24\",\"00\"]', '[\"11\",\"00\",\"24\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(2, 14, 1, 2, '台中市北區三民路', 1, '300 - 600', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(3, 15, 1, 1, '台中市南區建國北路', 1, '400 - 800', 'href', '[\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"12\",\"00\",\"23\",\"00\"]', '[\"11\",\"30\",\"24\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(4, 16, 1, 1, '台中市西區精誠路', 1, '500 - 900', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"30\",\"22\",\"30\"]', '[\"11\",\"00\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(5, 17, 2, 1, '台中市北屯區文心路', 1, '700 - 1200', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"12\",\"00\",\"24\",\"00\"]', '[\"12\",\"00\",\"24\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(6, 18, 2, 1, '台中市南屯區向上路', 1, '800 - 1500', 'href', '[\"tuesday\",\"wednesday\",\"thursday\",\"friday\",\"saturday\"]', '[\"sunday\"]', '[\"17\",\"00\",\"24\",\"00\"]', '[\"12\",\"00\",\"24\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(7, 19, 2, 1, '台中市西屯區河南路', 1, '600 - 1100', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"30\",\"23\",\"30\"]', '[\"11\",\"00\",\"24\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(8, 20, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 16:03:42', '2024-08-14 16:03:42'),
(9, 21, 1, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(10, 22, 1, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(11, 23, 1, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(12, 24, 1, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(13, 25, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(14, 26, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(15, 27, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(16, 28, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(17, 29, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(18, 30, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(19, 31, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(20, 32, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(21, 33, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(22, 34, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(23, 35, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(24, 36, 2, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(25, 37, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(26, 38, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(27, 39, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(28, 40, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(29, 41, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(30, 42, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(31, 43, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(32, 44, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(33, 45, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(34, 46, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(35, 47, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(36, 48, 3, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(37, 49, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(38, 50, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(39, 51, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(40, 52, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(41, 53, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(42, 54, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(43, 55, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(44, 56, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(45, 57, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(46, 58, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(47, 59, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(48, 60, 4, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(49, 61, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(50, 62, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(51, 63, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(52, 64, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(53, 65, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(54, 66, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(55, 67, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(56, 68, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(57, 69, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(58, 70, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(59, 71, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(60, 72, 5, 1, '台中市北區三民路', 1, '500 - 1000', 'href', '[\"monday\",\"tuesday\",\"wednesday\",\"thursday\",\"friday\"]', '[\"saturday\",\"sunday\"]', '[\"11\",\"00\",\"22\",\"00\"]', '[\"11\",\"30\",\"23\",\"00\"]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '[null,null,null,null]', '2024-08-15 00:03:42', '2024-08-15 00:03:42', NULL, NULL, '2024-08-14 08:03:42', '2024-08-14 08:03:42'),
(61, 73, 5, 1, '台中市北屯區太原路三段150巷8弄17號', 0, '200 - 400', '', '沒有營業', '沒有營業', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-17 07:59:06', '2024-08-17 07:59:06', NULL, NULL, '2024-08-19 02:02:27', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `restitems`
--

CREATE TABLE `restitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `f_s_d_id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_photo` longtext DEFAULT NULL,
  `created_at_date` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `created_at_time` varchar(255) NOT NULL DEFAULT '2024-08-17 07:59:08',
  `updated_at_date` varchar(255) DEFAULT NULL,
  `updated_at_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `restitems`
--

INSERT INTO `restitems` (`id`, `r_id`, `f_s_d_id`, `item_name`, `item_price`, `item_photo`, `created_at_date`, `created_at_time`, `updated_at_date`, `updated_at_time`, `created_at`, `updated_at`) VALUES
(63, 1, 30, '四人饗宴', 3200, 'storage/images/2lTnRVTSgcV6gTgbolBQXm6th9aCQEit3MjzUZ9L.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 17:39:34', '2024-08-05 17:39:34'),
(64, 1, 30, '雙人饗宴', 1200, 'storage/images/MnPMXLWCl6kaT12FlFzVBBJ0jRbfZZd1pc1TPBbs.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 17:40:12', '2024-08-05 17:40:12'),
(65, 1, 31, '個人即享鍋', 310, 'storage/images/TCnBQxlxvQp6xk4P9FKm4eFnC8RVjvSuBmakkIbR.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 17:41:44', '2024-08-05 17:41:44'),
(66, 1, 31, '麻辣粉條鍋', 289, 'storage/images/jBdqBHmA51SevzGplGYqsFGd8KTJH01RJ7nMQwzW.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 17:42:19', '2024-08-05 17:42:19'),
(67, 1, 31, '青花驕麻辣燙', 180, 'storage/images/pS7YtfTAHmNCsruXcg1A7JEjtQoJpXMVjYH20gBM.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 17:42:38', '2024-08-05 17:42:38'),
(68, 1, 32, '干貝三鮮丸 (6顆)', 240, 'storage/images/s2tGFUkiuOtQiA3Fo2qxlHRQvVvnj3qm5wohjvAF.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:09:53', '2024-08-05 18:09:53'),
(69, 1, 32, '草蝦丸 (6顆)', 130, 'storage/images/8bzSSm1BXV2glVtDxaMuWYvBPASma9gBCeild1ho.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:18:34', '2024-08-05 18:18:34'),
(70, 1, 32, '花枝丸 (6顆)', 130, 'storage/images/VLPe0tuERHaDSmxmcloIKPwT2tSNTIIAu2kKl90v.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:19:37', '2024-08-05 18:19:37'),
(71, 1, 32, '貢丸 (8顆)', 110, 'storage/images/63HbQAAopiro3hGyyqitSNTA3YHtHwWZZsPNTKqN.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:20:34', '2024-08-05 18:20:34'),
(72, 1, 32, '香菇丸 (8顆)', 130, 'storage/images/ieA6dCgVqWq6tOX4vztrQKWXx25Gh8id3tL9CKWI.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:20:52', '2024-08-05 18:20:52'),
(73, 1, 32, '芋頭貢丸 (6顆)', 150, 'storage/images/ZENrhbtILheMfTqppoOdVlBkD9Gt9tcd4ihnUyXt.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:21:10', '2024-08-05 18:21:10'),
(74, 1, 32, '台灣牛肉丸(6顆)', 210, 'storage/images/Z6wg6oGxf4mJYM14EmUm7azVH7lbqsXULOTWK70f.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 18:21:28', '2024-08-05 22:05:44'),
(77, 1, 33, '花枝蝦漿 (150g)', 230, 'storage/images/rLPBEj95INhqHdYknpNrHEk4DeOaSqQ7bMbgdO36.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:06:39', '2024-08-05 22:06:39'),
(78, 1, 33, '飛魚卵福袋 (6顆)', 150, 'storage/images/ASCmbbdeGrkae0NHOpRLlEkJN0W7N5eTAL0bahc6.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:07:26', '2024-08-05 22:07:26'),
(79, 1, 33, '黃金魚蛋 (10顆)', 110, 'storage/images/cN0ZimU46sHTM8vMi6Q9ayBWiXR7KingUFOHEhlW.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:09:49', '2024-08-05 22:09:49'),
(80, 1, 33, '魚包蛋 (8顆)', 130, 'storage/images/xcWjF0HbWb7795LFwNID9QXIyc9bykrgeRqOxDX2.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:14:07', '2024-08-05 22:14:07'),
(81, 1, 33, '甜不辣 (6個)', 100, 'storage/images/80tFhMKdron7CHKSfUxVhyk42AbcPZwFsQoqGtIY.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:15:01', '2024-08-05 22:15:01'),
(82, 1, 33, '炸豆皮 (65g)（非基改）', 100, 'storage/images/UfOOgNrBXzrKjJMDq213Z5sqNDkMI19ZPgRTFO6m.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:21:50', '2024-08-05 22:21:50'),
(83, 1, 34, '科學麵', 30, 'storage/images/qY5o0cDVerYK1rYvJWAS3rdX1gu0Y7DSYnTawcGt.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:22:39', '2024-08-05 22:22:39'),
(84, 1, 34, '白飯', 20, 'storage/images/YnFnHF9SRXPG9Y2RYXqeTD6kbdZTzvUncZArdiDm.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:22:57', '2024-08-05 22:22:57'),
(85, 1, 35, '美國安格斯牛小排 (200g)', 620, 'storage/images/gd0N00ArfXKsNY2DliNoLbyEccDWEpS3kxug0t00.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:23:43', '2024-08-05 22:23:43'),
(86, 1, 35, '美國翼板牛 (220g)', 550, 'storage/images/n3vbFTAIodssYLYuD5Ztd5xcMlrhRNfB8QzrIIxJ.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:24:02', '2024-08-05 22:24:02'),
(87, 1, 35, '美國牛五花 (220g)', 470, 'storage/images/VPOXyc3GdZZf9Dgd8fOVGKN9Y5kTRc7NYbe0lDd5.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:24:25', '2024-08-05 22:24:25'),
(88, 1, 35, '澳洲牛梅花心 (220g)', 485, 'storage/images/pmGJm2EpoZFYXj8qo84159kLnrgwhzpgmvZ1Qqpm.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:24:42', '2024-08-05 22:24:42'),
(89, 1, 35, '台灣牛胸肉(200g)', 450, 'storage/images/R0yYdt0tHaxzJuWZUHcC4zExspfloEjcSaPQoqiK.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:24:59', '2024-08-05 22:24:59'),
(90, 1, 35, '台灣松阪豬 (200g)', 390, 'storage/images/TMpZP5EA67NTfDMrM14C5pC3cQR0Su6GeDGbOFZT.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:25:14', '2024-08-05 22:25:14'),
(91, 1, 35, '台灣特選梅花豬 (260g)', 370, 'storage/images/jwzfB7U4DnAIcENXOMpo55UZlYXBVgZz5E7VQw5k.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:25:29', '2024-08-05 22:25:29'),
(92, 1, 35, '台灣培根豬 (260g)', 370, 'storage/images/XJXBqMiKnmKAJaaPGbVM0YbMW6oTPiupmN0EKsGE.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-05 22:25:45', '2024-08-05 22:25:45'),
(93, 1, 36, '水晶餃 (8個)', 90, 'storage/images/FIAdGHHATk58LDt10hRYigA3CnLKEhOBu9RCZMra.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-08 18:51:05', '2024-08-08 18:51:05'),
(94, 1, 36, '魚餃 (10入)', 100, 'storage/images/1SfzvOLxGltESXmqO5exx5CviNtObeoKs6XjdeiB.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-08 18:56:24', '2024-08-08 18:56:24'),
(95, 1, 36, '香菇肉蛋餃 (5個)', 160, 'storage/images/Tl460KDXsqhjOSy43rzO1elw7d201QuUHaVop49d.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-08 18:56:46', '2024-08-08 18:56:46'),
(97, 1, 36, '福州燕餃 (8條)', 160, 'storage/images/K1wwHAZqtLkDfSskGQ2HrL7A1NAaCSw9T7FrJSDN.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-08 18:57:44', '2024-08-08 18:57:44'),
(98, 1, 37, '蔬菜拼盤', 320, 'storage/images/RZyTNRGMVc7UJdMOjJAHXBqVCw2cnbeaeiJwfbWo.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-08 18:59:46', '2024-08-08 18:59:46'),
(99, 1, 37, '大白菜', 140, 'storage/images/EgyLvzgNeyTlXpzb6TQJdrwG8FBhxPna7wJuu2vh.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-08 19:00:03', '2024-08-08 19:00:03'),
(104, 1, 37, '高麗菜', 160, 'storage/images/iAHGZffph4YylNrreZkM7m2x6kdOWIMVXJTDLF2J.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-11 07:08:51', '2024-08-11 07:08:51'),
(105, 1, 37, '水蓮', 180, 'storage/images/BEUWCTJrjoTBqCa65JjyrmFjO5ZSb95oSAdetquB.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-11 07:09:40', '2024-08-11 07:09:40'),
(106, 1, 37, '香菇', 180, 'storage/images/LHlukslDQn9MGB2CLMY2ucJOrFBJUDgVdaffE06J.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-11 07:10:50', '2024-08-11 07:10:50'),
(108, 1, 37, '玉米筍', 150, 'storage/images/dtS12NIFfOSAtmFwpqX2O5HSnQygU2LhRICW5YRk.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 19:29:31', '2024-08-15 06:28:36'),
(109, 41, 37, '咖哩牛骨拉麵', 290, 'storage/images/109.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(110, 55, 37, '抹茶塔', 150, 'storage/images/110.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(111, 20, 37, '和牛拼盤', 1500, 'storage/images/111.webp', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(112, 57, 37, '芒果舒芙蕾', 200, 'storage/images/112.jpeg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(113, 56, 37, '原味豆花', 70, 'storage/images/113.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(114, 47, 37, '豬五花麻糬', 80, 'storage/images/114.jpeg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(115, 44, 37, '巨無霸生蠔', 150, 'storage/images/115.webp', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(116, 23, 37, '奶油啤酒', 100, 'storage/images/116.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(117, 16, 37, '30公分厚牛舌', 700, 'storage/images/117.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(119, 42, 37, '雞腿捲', 140, 'storage/images/119.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(120, 41, 37, '醬燒肥腸', 100, 'storage/images/120.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(121, 15, 37, '烤和牛三明治', 170, 'storage/images/121.jpeg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(122, 14, 37, '現沖牛肉鍋', 250, 'storage/images/122.webp', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(123, 26, 37, '濃厚叉燒拉麵', 300, 'storage/images/123.jpeg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(124, 9, 37, '特級和牛嫩肩', 450, 'storage/images/124.webp', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(125, 60, 37, '抹茶千層蛋糕', 200, 'storage/images/125.avif', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(126, 38, 37, '明太子白醬烏龍', 130, 'storage/images/126.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(127, 31, 37, '黃金鹽味拉麵', 190, 'storage/images/127.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(128, 30, 37, '淡麗干貝拉麵', 260, 'storage/images/128.png', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(129, 58, 37, '草莓蛋糕', 160, 'storage/images/129.webp', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(130, 5, 37, '澳洲和牛板腱', 600, 'storage/images/130.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(131, 3, 37, '海鮮拼盤', 800, 'storage/images/131.jpeg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(132, 11, 37, '牛肉捲餅', 120, 'storage/images/132.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36'),
(133, 28, 37, '蔥爆大蒜拉麵', 200, 'storage/images/133.jpg', '2024-08-17 07:59:08', '2024-08-17 07:59:08', NULL, NULL, '2024-08-14 11:29:31', '2024-08-14 22:28:36');

-- --------------------------------------------------------

--
-- 資料表結構 `suitablefor`
--

CREATE TABLE `suitablefor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_id` bigint(20) UNSIGNED NOT NULL,
  `f_p_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `suitablefor`
--

INSERT INTO `suitablefor` (`id`, `r_id`, `f_p_id`, `created_at`, `updated_at`) VALUES
(26, 1, 1, '2024-08-14 22:02:42', '2024-08-14 22:02:42'),
(27, 1, 2, '2024-08-14 22:02:42', '2024-08-14 22:02:42'),
(28, 1, 3, '2024-08-14 22:02:42', '2024-08-14 22:02:42');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'member',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` longtext DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `role`, `email`, `password`, `name`, `avatar`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'admin', '1111@gmail.com', '$2y$12$QsqtNmWsqHWPcqHWs95gBeqL2eF4AQSD6oFDfZrfnGiQCn7eZZHhe', '青花驕', 'http://localhost/MySwallab/public/storage/avatar/1.jpg', '04-1234-5678', '2024-08-08 13:33:03', '2024-08-08 13:35:11'),
(10, 'admin', '', '', '茶六', '', '', '2024-08-08 13:33:03', NULL),
(11, 'member', '123@gmail.com', '$2y$12$uUvibfErP5TTu8x2Ao7TneRJOBWLHiZENBK.aBWUqdLI8SWzkkYDu', '王小明', 'http://localhost/MySwallab/public/storage/avatar/pD7YcF7bVJpwc897OLApg9Czxni8eXZrSSZMav5Q.png', '0912000333', '2024-08-09 13:47:01', NULL),
(12, 'member', '456@gmail.com', '321', '李大媽', '', '0987654321', '2024-08-09 15:32:15', NULL),
(13, 'member', '798@gmail.com', '6789', '王大衛', '', '0912345666', '2024-08-10 16:00:00', NULL),
(14, 'admin', '', '', '大丸靚鍋', 'http://localhost/MySwallab/public/storage/avatar/2.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(15, 'admin', '', '', '小胖鮮鍋', 'http://localhost/MySwallab/public/storage/avatar/3.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(16, 'admin', '', '', '井閣鍋物', 'http://localhost/MySwallab/public/storage/avatar/4.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(17, 'admin', '', '', '月暮藏涮涮鍋', 'http://localhost/MySwallab/public/storage/avatar/5.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(18, 'admin', '', '', '芳華火鍋公司', 'http://localhost/MySwallab/public/storage/avatar/6.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(19, 'admin', '', '', '春花秋實', 'http://localhost/MySwallab/public/storage/avatar/7.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(20, 'admin', '', '', '椒饗麻辣鍋', 'http://localhost/MySwallab/public/storage/avatar/8.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(21, 'admin', '', '', '湯棧', 'http://localhost/MySwallab/public/storage/avatar/9.webp', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(22, 'admin', '', '', '蜀都串串火鍋', 'http://localhost/MySwallab/public/storage/avatar/10.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(23, 'admin', '', '', '劉家酸菜白肉鍋', 'http://localhost/MySwallab/public/storage/avatar/11.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(24, 'admin', '', '', '暮藏和牛鍋物', 'http://localhost/MySwallab/public/storage/avatar/12.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(25, 'admin', '', '', 'Ribbon 醴本韓國正統燒肉', 'http://localhost/MySwallab/public/storage/avatar/13.avif', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(26, 'admin', '', '', '三山燒肉', 'http://localhost/MySwallab/public/storage/avatar/14.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(27, 'admin', '', '', '山鯨燒肉', 'http://localhost/MySwallab/public/storage/avatar/15.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(28, 'admin', '', '', '老井極上燒肉', 'http://localhost/MySwallab/public/storage/avatar/16.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(29, 'admin', '', '', '老乾杯', 'http://localhost/MySwallab/public/storage/avatar/17.webp', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(30, 'admin', '', '', '佐賀野仁', 'http://localhost/MySwallab/public/storage/avatar/18.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(31, 'admin', '', '', '香香燒肉工坊', 'http://localhost/MySwallab/public/storage/avatar/19.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(32, 'admin', '', '', '茶六', 'http://localhost/MySwallab/public/storage/avatar/20.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(33, 'admin', '', '', '森森燒肉', 'http://localhost/MySwallab/public/storage/avatar/21.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(34, 'admin', '', '', '精誠壹山', 'http://localhost/MySwallab/public/storage/avatar/22.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(35, 'admin', '', '', '燒肉風間', 'http://localhost/MySwallab/public/storage/avatar/23.webp', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(36, 'admin', '', '', '屋馬', 'http://localhost/MySwallab/public/storage/avatar/24.avif', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(37, 'admin', '', '', 'らーめん七面鳥', 'http://localhost/MySwallab/public/storage/avatar/25.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(38, 'admin', '', '', '山下公園ラーメン', 'http://localhost/MySwallab/public/storage/avatar/26.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(39, 'admin', '', '', '山禾堂拉麵', 'http://localhost/MySwallab/public/storage/avatar/27.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(40, 'admin', '', '', '火曜二代目', 'http://localhost/MySwallab/public/storage/avatar/28.webp', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(41, 'admin', '', '', '牛庵', 'http://localhost/MySwallab/public/storage/avatar/29.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(42, 'admin', '', '', '有囍拉麵', 'http://localhost/MySwallab/public/storage/avatar/30.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(43, 'admin', '', '', '長生塩人', 'http://localhost/MySwallab/public/storage/avatar/31.webp', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(44, 'admin', '', '', '狸匠拉麵', 'http://localhost/MySwallab/public/storage/avatar/32.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(45, 'admin', '', '', '麵武嵐', 'http://localhost/MySwallab/public/storage/avatar/33.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(46, 'admin', '', '', '麵屋田宗', 'http://localhost/MySwallab/public/storage/avatar/34.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(47, 'admin', '', '', '饗食拉麵', 'http://localhost/MySwallab/public/storage/avatar/35.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(48, 'admin', '', '', '月樽拉麵', 'http://localhost/MySwallab/public/storage/avatar/36.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(49, 'admin', '', '', '十八魂', 'http://localhost/MySwallab/public/storage/avatar/37.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(50, 'admin', '', '', '小麥所', 'http://localhost/MySwallab/public/storage/avatar/38.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(51, 'admin', '', '', '我流精緻烤物', 'http://localhost/MySwallab/public/storage/avatar/39.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(52, 'admin', '', '', '虎川千代日式居酒屋', 'http://localhost/MySwallab/public/storage/avatar/40.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(53, 'admin', '', '', '容燒居酒屋', 'http://localhost/MySwallab/public/storage/avatar/41.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(54, 'admin', '', '', '拿手串日式串燒居酒屋', 'http://localhost/MySwallab/public/storage/avatar/42.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(55, 'admin', '', '', '草津田日式串燒', 'http://localhost/MySwallab/public/storage/avatar/43.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(56, 'admin', '', '', '將軍府', 'http://localhost/MySwallab/public/storage/avatar/44.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(57, 'admin', '', '', '鳥忠とりちゅう', 'http://localhost/MySwallab/public/storage/avatar/45.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(58, 'admin', '', '', '港町十三番地', 'http://localhost/MySwallab/public/storage/avatar/46.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(59, 'admin', '', '', '激旨燒き鳥', 'http://localhost/MySwallab/public/storage/avatar/47.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(60, 'admin', '', '', '織田信長串燒酒場', 'http://localhost/MySwallab/public/storage/avatar/48.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(61, 'admin', '', '', 'Citrus 蜜柑', 'http://localhost/MySwallab/public/storage/avatar/49.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(62, 'admin', '', '', 'Single place coffee lab', 'http://localhost/MySwallab/public/storage/avatar/50.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(63, 'admin', '', '', 'SPIRITED BAKERY', 'http://localhost/MySwallab/public/storage/avatar/51.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(64, 'admin', '', '', 'Tokutoku- matcha&coffee', 'http://localhost/MySwallab/public/storage/avatar/52.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(65, 'admin', '', '', 'TWO DAY日日鬆餅', 'http://localhost/MySwallab/public/storage/avatar/53.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(66, 'admin', '', '', 'Uglycookie', 'http://localhost/MySwallab/public/storage/avatar/54.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(67, 'admin', '', '', '可可庫奇甜點工坊', 'http://localhost/MySwallab/public/storage/avatar/55.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(68, 'admin', '', '', '白水豆花', 'http://localhost/MySwallab/public/storage/avatar/56.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(69, 'admin', '', '', '成真咖啡', 'http://localhost/MySwallab/public/storage/avatar/57.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(70, 'admin', '', '', '若草蛋糕店', 'http://localhost/MySwallab/public/storage/avatar/58.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(71, 'admin', '', '', '茶部CHAI PÙ', 'http://localhost/MySwallab/public/storage/avatar/59.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(72, 'admin', '', '', '窩巷', 'http://localhost/MySwallab/public/storage/avatar/60.jpg', NULL, '2024-08-08 05:33:03', '2024-08-08 05:35:11'),
(73, 'admin', '', '', '序曲', NULL, NULL, NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- 資料表索引 `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- 資料表索引 `filtclasses`
--
ALTER TABLE `filtclasses`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `filtlocations`
--
ALTER TABLE `filtlocations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `filtpurposes`
--
ALTER TABLE `filtpurposes`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `filtsectiondemos`
--
ALTER TABLE `filtsectiondemos`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `membercreditcards`
--
ALTER TABLE `membercreditcards`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `membernotes`
--
ALTER TABLE `membernotes`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `memberreviews`
--
ALTER TABLE `memberreviews`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `notescomments`
--
ALTER TABLE `notescomments`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `notesfavorites`
--
ALTER TABLE `notesfavorites`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orderinfos`
--
ALTER TABLE `orderinfos`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `restcomments`
--
ALTER TABLE `restcomments`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `restdiscount`
--
ALTER TABLE `restdiscount`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `restfavorites`
--
ALTER TABLE `restfavorites`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `restinfos`
--
ALTER TABLE `restinfos`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `restitems`
--
ALTER TABLE `restitems`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `suitablefor`
--
ALTER TABLE `suitablefor`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filtclasses`
--
ALTER TABLE `filtclasses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filtlocations`
--
ALTER TABLE `filtlocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filtpurposes`
--
ALTER TABLE `filtpurposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `filtsectiondemos`
--
ALTER TABLE `filtsectiondemos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `membercreditcards`
--
ALTER TABLE `membercreditcards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `membernotes`
--
ALTER TABLE `membernotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `memberreviews`
--
ALTER TABLE `memberreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `notescomments`
--
ALTER TABLE `notescomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `notesfavorites`
--
ALTER TABLE `notesfavorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderinfos`
--
ALTER TABLE `orderinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restcomments`
--
ALTER TABLE `restcomments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restdiscount`
--
ALTER TABLE `restdiscount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restfavorites`
--
ALTER TABLE `restfavorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restinfos`
--
ALTER TABLE `restinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restitems`
--
ALTER TABLE `restitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `suitablefor`
--
ALTER TABLE `suitablefor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
