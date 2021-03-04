# 2 пункт
SELECT DISTINCT id, firstname FROM users ORDER BY firstname ;
# 3 пункт
ALTER TABLE profiles ADD COLUMN  is_active BOOLEAN DEFAULT TRUE;
UPDATE profiles set is_active = FALSE WHERE birthday < DATE_SUB(NOW(), INTERVAL 18 YEAR);
# 4 пункт
DELETE FROM messages WHERE created_at > NOW();

#######################################
###### Скрипт заполнения таблиц #######
# 1 пункт
-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_24
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

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
-- Table structure for table `block_list_user`
--

DROP TABLE IF EXISTS `block_list_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_list_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `current_user_id` bigint(20) unsigned NOT NULL,
  `block_user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `current_user_id` (`current_user_id`),
  CONSTRAINT `block_list_user_ibfk_1` FOREIGN KEY (`current_user_id`) REFERENCES `friends_requests` (`initiator_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block_list_user`
--

LOCK TABLES `block_list_user` WRITE;
/*!40000 ALTER TABLE `block_list_user` DISABLE KEYS */;
INSERT INTO `block_list_user` VALUES (1,1,1,'2009-12-18 11:26:56'),(2,2,2,'1993-02-21 06:15:39'),(3,3,3,'1974-12-23 15:13:39'),(4,4,4,'1999-01-20 12:14:01'),(5,5,5,'2009-12-03 07:28:24'),(6,6,6,'1983-04-29 16:15:51'),(7,7,7,'1993-05-07 08:12:51'),(8,8,8,'1995-05-24 16:13:25'),(9,9,9,'1989-04-19 12:41:05'),(10,10,10,'1982-09-02 01:18:15'),(11,11,11,'1994-11-04 14:10:12'),(12,12,12,'2007-05-29 05:16:56'),(13,13,13,'1987-09-14 14:53:59'),(14,14,14,'1975-12-19 06:04:11'),(15,15,15,'1972-08-08 08:27:18');
/*!40000 ALTER TABLE `block_list_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Id laudantium iure praesentium. Qui voluptatum distinctio quos et quia voluptates odit molestiae. Sit totam ipsum ullam quia provident eius. Cupiditate doloribus ea at eveniet reiciendis.','2007-03-10 17:49:25'),(2,2,2,'Id sed quis molestiae. Dolores consequatur sapiente dignissimos ut.','2015-11-04 00:41:35'),(3,3,3,'Et laudantium facilis est. Expedita delectus quis dolor aut dolorem rerum totam consectetur. Recusandae reiciendis voluptatibus a. Veniam consequatur sit eum officia temporibus quo. Iure nesciunt quas quod sequi assumenda laborum non.','2007-02-06 04:25:36'),(4,4,4,'Ea vel aut architecto aut facilis dignissimos voluptates officia. Aut dolore ad sit facilis magnam quo. Est qui nisi optio corrupti necessitatibus reprehenderit. Iste ea tenetur molestiae eveniet suscipit eum.','2015-12-11 06:16:25'),(5,5,5,'Deleniti modi nemo rerum non explicabo dolore sit tempore. Dolor sed est impedit nisi pariatur fuga laudantium facilis. Ullam magnam voluptatem unde.','1995-03-19 07:33:49'),(6,6,6,'Expedita ut eos recusandae a in. Placeat libero vel temporibus. Dolores non rerum rerum consequatur voluptas. Aliquam repellat debitis delectus doloribus.','1999-04-03 20:31:04'),(7,7,7,'Tenetur enim voluptate voluptatum repellat. Est autem provident est sed. Sint alias modi a repellendus.','2020-08-18 03:14:50'),(8,8,8,'Minus itaque dicta a et sunt qui non. Qui quis dicta velit earum. Nobis dolore nesciunt aliquid aperiam enim. Blanditiis voluptatem et asperiores voluptatum dignissimos ducimus minus.','1976-04-01 23:38:41'),(9,9,9,'Suscipit ut quia explicabo repellat dicta. Mollitia est optio est corporis deserunt molestiae et. Ipsum et neque excepturi molestiae aut.','2013-10-30 19:15:26'),(10,10,10,'Sunt et cupiditate ex aliquam eos. Officiis voluptatem quo cupiditate molestias. Maiores suscipit itaque consequuntur molestiae cum.','1990-12-20 09:16:44'),(11,11,11,'Quis velit ut officiis et quia quis. Iste dolores sequi at omnis deserunt distinctio. Enim debitis et nisi deserunt nobis.','1973-10-20 15:49:53'),(12,12,12,'Accusamus et et explicabo esse consectetur. Nam ab iste ut quisquam soluta facere non. Vero harum soluta et non voluptates qui illum cupiditate. Est occaecati iusto expedita nihil ipsam.','1995-12-10 06:49:12'),(13,13,13,'Explicabo nesciunt doloremque est voluptatem. Rerum a est laboriosam maxime voluptatem dolorum non. Id voluptate qui aut. Quia porro laudantium neque est maiores adipisci et.','1972-08-03 08:22:49'),(14,14,14,'Et et consequuntur neque sed laborum at. Laboriosam ratione odio animi nostrum provident. Ut maxime similique fugiat dolor delectus aut veritatis. Est in consequatur in fugit non.','2004-06-23 19:24:53'),(15,15,15,'Nisi ab necessitatibus est laudantium aut veritatis. Numquam exercitationem delectus culpa dolorem nam. Quidem vero doloribus ex reprehenderit sed. Laborum aliquid itaque earum quis non beatae.','1987-03-15 19:44:26'),(16,16,16,'Commodi est velit dicta. Qui minima sit et occaecati beatae rem.','1988-09-27 01:26:38'),(17,17,17,'Id rerum sunt corporis doloribus adipisci odio ut. Cumque qui ab eum tempora quis molestias explicabo. Aliquid expedita corrupti aspernatur et est. Porro rerum commodi enim ducimus.','1971-06-05 11:59:58'),(18,18,18,'Possimus non ut suscipit labore vel. Praesentium sit voluptatem id. Ut rem eaque quo vitae amet error quidem.','1994-06-18 01:02:40'),(19,19,19,'Voluptatum nesciunt hic voluptatem asperiores vitae voluptas explicabo. Voluptas et ad placeat. Tempore eveniet et sed officia eos.','1970-02-23 02:43:06'),(20,20,20,'Quia rerum odio ea omnis ut. Sint sed et sed tenetur ut. Sed rerum qui minus debitis et. Quo deserunt inventore aliquam incidunt est rerum.','2008-10-06 19:25:24'),(21,21,21,'Illum odio nulla est reiciendis sed illum. Sit aut omnis est labore possimus qui velit. Eum et itaque et vel mollitia est voluptas. Rerum officiis deleniti qui quam tempore harum fuga voluptas.','2019-08-14 22:37:23'),(22,22,22,'Iste molestiae asperiores rerum deserunt animi. Maxime saepe numquam earum beatae rem ratione aliquam. Ratione vel soluta dignissimos aliquid repellat corrupti repudiandae.','1970-04-28 19:24:12'),(23,23,23,'Sint dolores et sed qui eius in quia. Voluptatem est voluptates dolorum magnam id hic qui. Est quis asperiores libero modi.','1971-09-18 05:00:02'),(24,24,24,'Quos magni id in nihil. Molestiae nesciunt itaque praesentium ex nihil. Tempora illo doloribus illo facere minima voluptatem distinctio.','1998-06-24 08:44:01'),(25,25,25,'Eum saepe alias dolores itaque. Amet ad sit ducimus mollitia autem eligendi dolorum. Nesciunt quisquam consequatur quasi numquam sed.','2003-07-26 04:10:44'),(26,26,26,'Voluptatibus enim vel optio omnis et fugiat adipisci. Velit eius commodi est error exercitationem. Velit ea molestias magnam laborum at sapiente sunt.','1976-11-25 14:40:28'),(27,27,27,'Itaque veniam inventore enim. Sint aperiam et optio molestiae reprehenderit sit. Nulla qui iste commodi pariatur nostrum ipsa ipsam odio. Dicta quis dolor minus nisi ipsam nihil est.','1998-07-02 22:24:24'),(28,28,28,'Quis voluptate aut porro et ut. Blanditiis adipisci sint eius repellat cumque. In quibusdam neque tenetur reprehenderit. Id qui sint sed repellendus corrupti est quia.','1977-07-19 03:44:47'),(29,29,29,'Necessitatibus quis ut quia. Rerum modi corporis aut vero rem. Ea debitis aut unde natus consectetur.','1989-09-11 12:28:38'),(30,30,30,'Qui iste nostrum quo vitae ad et accusantium. Dicta quas maxime necessitatibus est. Et omnis culpa porro ad corporis qui. Ipsam cum laborum dolor dolore in aliquid.','1992-09-30 05:50:36'),(31,1,31,'Asperiores hic consequatur et eligendi ullam. Neque velit rerum et et incidunt aut perspiciatis magni. Enim labore culpa tempora omnis soluta corporis et.','2017-11-29 18:11:06'),(32,2,32,'Qui et ex nemo saepe est iure voluptatibus. Ea reprehenderit temporibus quia aut eius officia. Eveniet quis qui culpa illum nulla tenetur.','2006-11-05 12:05:57'),(33,3,33,'Et ut provident omnis harum. Sint cum consequatur et id. Mollitia id et doloribus. Accusamus ducimus eos molestias consequuntur ut maxime.','1973-03-08 15:22:25'),(34,4,34,'Sed consequatur aut voluptas quia. Quod voluptatibus doloribus commodi quia tenetur. Repellat consequatur deserunt qui autem excepturi earum rerum.','1991-03-02 11:10:36'),(35,5,35,'Dicta debitis nesciunt voluptatum aspernatur sed non. Id eos harum libero necessitatibus quasi dolores. Sit quia nostrum autem.','1991-12-29 11:50:53'),(36,6,36,'Quasi mollitia asperiores voluptas illum ad impedit. Eaque veniam ipsam nisi assumenda nobis delectus omnis. Fugit incidunt dolor nemo dolor voluptatem.','1997-05-04 11:33:10'),(37,7,37,'Molestiae omnis qui esse culpa voluptatem fugit occaecati. Ducimus sit similique quo assumenda et possimus tempora. Quo commodi facere mollitia amet sit nihil itaque mollitia.','1971-08-19 20:59:33'),(38,8,38,'Aperiam natus amet similique distinctio nulla. Quidem explicabo nobis laboriosam expedita esse porro. Adipisci et et id et minima cum. Aliquid sit sed et vitae possimus perferendis reiciendis.','2020-09-03 15:58:20'),(39,9,39,'Nihil corrupti impedit doloremque voluptate autem. Saepe ut doloremque eos qui velit. Reiciendis quisquam quo eaque quasi velit dolores sed ea. Exercitationem sequi eveniet culpa aperiam voluptas nobis fugiat.','2002-11-27 11:44:13'),(40,10,40,'Ipsam temporibus sit repellendus maiores nostrum error iste. Officia deleniti vero voluptatem quam et corrupti doloribus. Impedit harum vel dolores vel. Dolor perspiciatis eum dolores ut quo eaque rerum.','2001-09-12 13:37:24'),(41,11,41,'Minus voluptatum voluptas occaecati blanditiis neque. Qui ut illum qui et. Eius voluptatem quia tempore facere.','1982-10-19 21:24:17'),(42,12,42,'Dolorum eligendi aut est hic sint vel quidem. Ex repellat a magnam quia. Sit dolores id perferendis esse consequatur maxime.','1976-10-09 01:04:17'),(43,13,43,'Placeat voluptatibus sunt eum omnis. Aut eligendi rerum quo est sit maiores. Iusto sapiente eveniet non vitae voluptate assumenda et. Quas laudantium voluptas voluptatibus omnis fuga.','1988-07-26 03:07:14'),(44,14,44,'Quam et sit unde fuga corrupti sed. Eum quod quo qui eaque. Modi eveniet repudiandae sit quia voluptas.','2020-08-26 09:56:30'),(45,15,45,'Voluptate illo voluptas rerum officiis omnis vero velit consectetur. Consequuntur optio rerum veniam asperiores autem molestiae fugiat. Nulla iure est numquam voluptatum doloremque.','1970-08-26 15:18:19'),(46,16,46,'Fuga quia a doloribus est voluptatem. Praesentium id et nisi excepturi et voluptatum quod. Omnis ad enim et eum consequatur.','1973-11-22 14:40:36'),(47,17,47,'Provident ea est quis doloremque quia ut nesciunt est. Qui ut quo quidem odit in ad. Temporibus odit non rerum et velit saepe. Enim et quo eveniet est culpa.','2007-12-22 04:32:17'),(48,18,48,'Vitae nihil quod eos veniam dolorem. Quos architecto optio quis repellat possimus et autem. Est harum eius autem.','2014-07-27 17:15:22'),(49,19,49,'Architecto exercitationem vitae ea et perspiciatis unde. Voluptatibus voluptates deserunt quas incidunt saepe eaque. Et in illum et esse ducimus accusantium. Consequatur qui at consequatur optio sint.','2014-10-08 09:47:39'),(50,20,50,'Exercitationem et ut qui voluptatem eveniet molestiae. Minima et error sed officiis provident similique. Tempore neque dolores blanditiis cumque ea rerum impedit. Totam accusantium quod doloremque impedit.','1974-01-04 11:47:05'),(51,21,1,'Ut eum eos ut reiciendis. Ipsum est sequi sed eum eos et accusamus. Dolores eum rerum maxime sapiente. Nostrum eveniet molestiae fugiat porro.','1970-03-28 04:19:38'),(52,22,2,'Sunt illo eligendi perferendis temporibus occaecati rem eaque. Nulla itaque inventore omnis provident dignissimos quis illum. Molestiae qui aut qui impedit distinctio illo corporis reiciendis. Unde quidem ut quam.','1998-09-20 22:16:51'),(53,23,3,'Quam officia ut veniam quidem in alias. Beatae quia velit ut soluta vel sapiente. Recusandae soluta ea neque fugiat accusantium dolor beatae.','2004-12-18 06:05:44'),(54,24,4,'Architecto vero corporis sit suscipit rem commodi et. Eveniet aut illum sequi sint hic in aspernatur minus. Voluptas sed qui assumenda ut a laudantium ad.','2014-03-04 04:29:13'),(55,25,5,'Sit et quis inventore laboriosam et. Et ratione et odit aut unde. Quam quia eos suscipit non temporibus laudantium.','1981-04-05 10:49:13'),(56,26,6,'Rerum recusandae sint enim voluptas nobis molestias enim ut. Qui est suscipit voluptas asperiores. Saepe dolorem rerum eum perferendis ipsam.','2008-10-10 06:04:07'),(57,27,7,'Perferendis pariatur numquam facilis earum repellat dolorem. Ipsum veritatis aut dolore illum quo facere animi. Minus ea fugit nihil qui ratione cum est libero. Aliquid sequi rerum maxime quia.','2012-02-26 10:57:07'),(58,28,8,'Natus nulla expedita nam sunt quia. Nesciunt quia quia voluptas provident. Voluptatum itaque repudiandae facere blanditiis consequatur qui. Voluptatem nam ut et est aperiam.','1987-05-04 01:51:21'),(59,29,9,'Tempora sed voluptas commodi ad distinctio et. Molestiae sunt aut reprehenderit qui minima est ipsum. Sint praesentium deserunt hic nemo sint in labore. Architecto sapiente exercitationem iure ullam enim aut similique odit.','1999-01-12 04:20:27'),(60,30,10,'Aut commodi possimus excepturi maiores et iure ut voluptatem. Quo dicta occaecati qui nam amet ea quis doloremque. Sunt earum praesentium facere similique sint earum. Ipsa non et voluptas sapiente quis.','2011-04-21 06:59:14'),(61,1,11,'Distinctio nulla laudantium rerum enim consectetur molestias. Autem dolorum sint dolor iure. Magni ab sint culpa iusto aut accusantium. Rerum doloribus quam id quia.','2017-03-27 04:06:16'),(62,2,12,'Est itaque animi adipisci est. Illo ipsa esse pariatur omnis atque nostrum. Aut provident soluta possimus consequatur iste asperiores.','1986-04-03 02:49:10'),(63,3,13,'Est quibusdam blanditiis expedita nisi omnis amet quibusdam. Omnis illo voluptatibus magnam qui rerum tempora quo. Ab nobis qui est.','1975-09-25 14:05:21'),(64,4,14,'Perspiciatis facilis corrupti voluptas id voluptas sit culpa. Voluptatibus architecto deserunt aliquid modi eius distinctio atque. Similique velit voluptas libero qui neque officiis. Et temporibus excepturi est exercitationem id.','1971-08-10 14:09:41'),(65,5,15,'Sed dolore et sapiente nam laborum dolorem sunt. Velit id et et impedit quia qui eaque. Nemo et velit dolore voluptates quasi id.','1997-02-27 19:52:50'),(66,6,16,'Porro omnis blanditiis nulla ex. Qui ab sed eum eveniet. Sit assumenda facilis ea soluta.','2000-12-28 21:31:27'),(67,7,17,'Qui reiciendis incidunt maxime officiis voluptate officia. Tenetur ut sit iste id nobis culpa. Optio enim eaque eligendi. Repellendus neque ea nulla ipsa dolorem consequuntur. Ut praesentium tempora aliquam et ut consequatur.','1996-08-27 01:15:16'),(68,8,18,'In error qui sed atque commodi. Aut aut vitae aut accusantium et sunt. Quia in tempora recusandae ab ad facilis vero. Ex veniam rerum distinctio. Odit corporis quibusdam maiores laudantium vitae ea autem.','1973-07-09 09:47:50'),(69,9,19,'Vero laudantium reiciendis ullam iure commodi porro molestiae aut. Ducimus molestiae quis illo hic consectetur. Numquam et voluptatem ratione saepe.','1983-08-24 01:11:14'),(70,10,20,'Rerum ex quis tempora pariatur laudantium. Repellendus alias quidem sed repellendus ea maxime.','1988-01-03 21:40:41');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'Steuber-Lesch',1),(2,'Armstrong Inc',2),(3,'Thompson-Kerluke',3),(4,'Hoppe PLC',4),(5,'Ernser Inc',5),(6,'Shanahan, Rippin and Stehr',6),(7,'Borer-Abernathy',7),(8,'Abshire, Denesik and McGlynn',8),(9,'Will and Sons',9),(10,'Keebler, Hyatt and Corwin',10),(11,'Hegmann-Lebsack',11),(12,'Raynor Inc',12),(13,'Quitzon and Sons',13),(14,'Schimmel-Witting',14),(15,'Mertz-Kreiger',15),(16,'Lang Inc',16),(17,'Hermann-Rice',17),(18,'Okuneva, Rau and Morissette',18),(19,'Veum-Hand',19),(20,'Gislason and Sons',20),(21,'Jacobi, Wisozk and Vandervort',21),(22,'Schowalter, Effertz and Medhurst',22),(23,'Johns, Cruickshank and Kirlin',23),(24,'Lemke, Morissette and Auer',24),(25,'Rempel PLC',25),(26,'Rice-Hoppe',26),(27,'Schowalter, Zieme and Beatty',27),(28,'Mraz PLC',28),(29,'Treutel-Berge',29),(30,'Farrell, Yost and Ratke',30),(31,'Schuster-Prosacco',1),(32,'Huels Inc',2),(33,'O\'Kon, Anderson and Dickens',3),(34,'Hahn, Larson and Beatty',4),(35,'Breitenberg, Spinka and King',5),(36,'Grimes LLC',6),(37,'Feil-Borer',7),(38,'Kshlerin, Huel and Nolan',8),(39,'Rolfson, Barton and Toy',9),(40,'Schmitt Ltd',10),(41,'Lang-Legros',11),(42,'Schroeder and Sons',12),(43,'Dickinson, Mayer and Waelchi',13),(44,'Pollich, Zieme and Stroman',14),(45,'Krajcik and Sons',15),(46,'Fahey and Sons',16),(47,'Jaskolski, Ritchie and Wisoky',17),(48,'Zieme-Mann',18),(49,'Carroll, Cruickshank and Tromp',19),(50,'Bradtke-Ondricka',20),(51,'Nader Inc',21),(52,'Harvey, Cronin and Dicki',22),(53,'Hauck and Sons',23),(54,'Kessler PLC',24),(55,'Ernser, Cassin and Runte',25),(56,'Nolan PLC',26),(57,'Cartwright-Deckow',27),(58,'Franecki, Bailey and Hoppe',28),(59,'Douglas and Sons',29),(60,'West-Boehm',30),(61,'Greenholt-Koss',1),(62,'Ward-Kertzmann',2),(63,'Auer, Sanford and Moore',3),(64,'Hessel Inc',4),(65,'O\'Connell LLC',5),(66,'Marquardt-Hoeger',6),(67,'Schmitt-Deckow',7),(68,'Goyette, Jast and Kessler',8),(69,'Eichmann-Feil',9),(70,'O\'Conner, Gaylord and Keebler',10),(71,'Hermann-Rolfson',11),(72,'Erdman, Russel and Robel',12),(73,'Donnelly-Wolf',13),(74,'O\'Keefe-Rodriguez',14),(75,'Waelchi, McGlynn and Marquardt',15),(76,'Prosacco-Harris',16),(77,'Cummings-O\'Conner',17),(78,'Halvorson-Schultz',18),(79,'Beatty, Lesch and Bins',19),(80,'Walsh-Wiza',20),(81,'Wisozk Inc',21),(82,'Reinger-Bergstrom',22),(83,'Upton Group',23),(84,'Wuckert-Pagac',24),(85,'Braun-Mante',25),(86,'Brown-Larson',26),(87,'Denesik PLC',27),(88,'Blick-Bins',28),(89,'Price, Paucek and Blick',29),(90,'Gutmann Inc',30),(91,'Cartwright, Thompson and Christiansen',1),(92,'Zemlak, Heidenreich and Friesen',2),(93,'Cruickshank, Purdy and Littel',3),(94,'Monahan Inc',4),(95,'Witting Ltd',5),(96,'Hoeger-Carroll',6),(97,'Johnson and Sons',7),(98,'Jacobs, Langworth and Erdman',8),(99,'Kilback LLC',9),(100,'Lueilwitz Inc',10);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends_list`
--

DROP TABLE IF EXISTS `friends_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `current_user_id` bigint(20) unsigned NOT NULL,
  `friend_user_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `current_user_id` (`current_user_id`),
  CONSTRAINT `friends_list_ibfk_1` FOREIGN KEY (`current_user_id`) REFERENCES `friends_requests` (`initiator_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_list`
--

LOCK TABLES `friends_list` WRITE;
/*!40000 ALTER TABLE `friends_list` DISABLE KEYS */;
INSERT INTO `friends_list` VALUES (1,1,1,'1981-04-05 07:25:56'),(2,2,2,'2012-07-20 22:00:48'),(3,3,3,'2012-07-17 15:03:58'),(4,4,4,'2011-08-18 11:30:01'),(5,5,5,'2008-10-20 11:37:51'),(6,6,6,'1999-10-15 01:39:34'),(7,7,7,'2015-09-02 16:58:25'),(8,8,8,'2012-11-02 08:29:29'),(9,9,9,'2001-09-15 08:22:58'),(10,10,10,'1976-11-21 01:20:33'),(11,11,11,'1995-03-07 05:02:37'),(12,12,12,'2014-09-07 17:36:47'),(13,13,13,'2001-03-11 02:16:23'),(14,14,14,'1999-03-24 21:53:31'),(15,15,15,'2001-09-27 02:59:52'),(16,16,16,'1976-06-16 15:38:31'),(17,17,17,'1970-08-27 13:16:31'),(18,18,18,'2003-01-07 21:57:15'),(19,19,19,'1989-11-12 21:58:45'),(20,20,20,'1978-05-26 23:14:39'),(21,21,21,'1998-06-11 04:03:11'),(22,22,22,'1977-12-31 23:54:36'),(23,23,23,'1979-02-16 15:31:41'),(24,24,24,'2014-04-14 12:20:40'),(25,25,25,'2004-06-07 16:45:55'),(26,26,26,'1995-07-16 16:23:16'),(27,27,27,'1980-10-29 16:35:56'),(28,28,28,'2020-07-15 21:40:01'),(29,29,29,'1991-04-20 22:03:59'),(30,30,30,'2014-05-18 10:43:12'),(31,1,1,'2013-08-09 21:02:53'),(32,2,2,'1990-01-10 19:52:52'),(33,3,3,'1980-06-08 12:17:00'),(34,4,4,'1975-10-24 05:33:26'),(35,5,5,'2011-11-26 13:28:32'),(36,6,6,'1992-11-29 03:10:57'),(37,7,7,'2019-12-16 00:21:01'),(38,8,8,'2009-03-07 23:12:53'),(39,9,9,'1973-11-07 22:18:39'),(40,10,10,'1972-10-12 04:08:00'),(41,11,11,'1991-01-28 23:45:46'),(42,12,12,'1975-03-18 03:13:18'),(43,13,13,'1973-08-26 02:57:20'),(44,14,14,'2003-03-03 01:44:06'),(45,15,15,'1999-11-23 12:59:05');
/*!40000 ALTER TABLE `friends_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends_requests`
--

DROP TABLE IF EXISTS `friends_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friends_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friends_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_requests`
--

LOCK TABLES `friends_requests` WRITE;
/*!40000 ALTER TABLE `friends_requests` DISABLE KEYS */;
INSERT INTO `friends_requests` VALUES (1,1,'approved','1978-11-27 01:48:35','1997-12-02 15:30:30'),(2,2,'unfriended','2017-09-15 19:39:29','2009-05-29 18:01:51'),(3,3,'unfriended','2013-07-08 06:19:13','2000-05-26 11:57:34'),(4,4,'unfriended','1987-03-16 07:16:45','2018-12-11 16:10:30'),(5,5,'declined','2018-04-07 03:24:11','2020-01-08 08:20:02'),(6,6,'approved','2005-02-09 19:15:54','1988-10-27 23:04:12'),(7,7,'approved','1992-02-15 09:19:06','2016-04-11 16:04:18'),(8,8,'declined','1974-04-17 08:25:30','1993-12-15 20:39:40'),(9,9,'declined','1985-03-12 08:26:36','1990-03-23 11:28:32'),(10,10,'requested','2001-06-13 04:18:07','1993-05-23 19:08:25'),(11,11,'declined','1985-05-06 16:11:02','2009-02-27 19:31:07'),(12,12,'unfriended','1980-01-19 10:52:49','2006-03-03 07:19:50'),(13,13,'requested','1978-11-21 12:46:40','1981-08-13 12:55:07'),(14,14,'requested','1995-01-09 18:56:52','1970-02-14 01:01:00'),(15,15,'declined','1971-08-27 12:56:43','1998-04-19 12:40:07'),(16,16,'declined','2015-06-13 00:29:10','1980-04-07 20:17:43'),(17,17,'requested','1971-05-03 01:41:10','1985-05-09 04:58:56'),(18,18,'requested','1999-05-18 17:24:21','1999-06-30 17:47:49'),(19,19,'approved','1970-10-12 01:12:15','2015-08-06 11:16:24'),(20,20,'unfriended','1999-05-06 10:59:14','1986-02-17 12:19:13'),(21,21,'unfriended','2014-01-29 20:19:43','1986-02-26 15:00:37'),(22,22,'declined','1989-05-18 17:34:47','2003-08-02 20:49:40'),(23,23,'approved','1999-06-21 08:00:30','1999-09-22 02:16:32'),(24,24,'approved','1991-12-08 01:10:51','1990-10-18 11:07:38'),(25,25,'unfriended','2013-01-01 07:57:39','1984-07-07 09:23:21'),(26,26,'requested','1980-05-31 04:03:50','1985-06-02 08:12:23'),(27,27,'approved','1971-01-15 18:59:00','1971-06-15 19:58:36'),(28,28,'unfriended','1995-09-14 23:36:25','1989-05-17 03:14:11'),(29,29,'approved','2020-05-11 00:23:36','1996-03-29 20:45:24'),(30,30,'approved','2014-03-31 02:16:58','2011-09-30 21:32:07');
/*!40000 ALTER TABLE `friends_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,1,31),(32,2,32),(33,3,33),(34,4,34),(35,5,35),(36,6,36),(37,7,37),(38,8,38),(39,9,39),(40,10,40),(41,11,41),(42,12,42),(43,13,43),(44,14,44),(45,15,45),(46,16,46),(47,17,47),(48,18,48),(49,19,49),(50,20,50);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,1,'Sint et iusto voluptatem aut et nemo. Dignissimos optio et iste beatae ut. Et laudantium ut hic sit. Veniam sapiente est ratione sunt vel facere.','nostrum',NULL,'1987-10-07 19:42:47','1999-02-17 05:04:24'),(2,2,2,'Nemo rerum corporis eveniet dolor dignissimos magni adipisci. Omnis odit modi cumque explicabo nobis minus.','mollitia',NULL,'1991-06-04 23:33:19','2008-04-12 20:22:13'),(3,3,3,'Natus doloremque laboriosam sed ut. Voluptatum minima enim aliquid veritatis quaerat sed ut.','numquam',NULL,'2013-04-30 00:14:33','2015-05-16 02:42:57'),(4,4,4,'Nam error et quas nisi sit praesentium unde. Commodi doloribus dicta distinctio. Velit non sint est minima nulla debitis. Sed consectetur minus aut nemo quo sunt id.','est',NULL,'1979-10-15 18:07:54','1971-07-04 14:34:01'),(5,5,1,'Odio amet temporibus deleniti ut ea in dolorem. Hic aut qui aliquid. Assumenda consequatur voluptas amet sed sequi. Sint ut qui explicabo error expedita id adipisci culpa.','voluptatem',NULL,'1985-02-26 19:21:16','1981-03-23 18:22:33'),(6,6,2,'Similique unde ducimus voluptatem. Reiciendis aliquid consequatur iure expedita illo.','velit',NULL,'2000-02-13 05:22:47','2004-02-17 09:57:15'),(7,7,3,'Dicta sit qui optio neque necessitatibus est. Provident corporis voluptas voluptatum.','et',NULL,'1970-07-24 14:22:27','1971-08-07 01:17:01'),(8,8,4,'Amet cupiditate architecto laudantium velit neque beatae velit quam. Et nemo aut aut natus quos porro magni. Soluta et consequatur expedita eveniet enim.','earum',NULL,'2017-12-06 06:19:11','1998-01-22 07:16:22'),(9,9,1,'Iste ratione sint ea aut. Vel odio quisquam quia optio libero non. Distinctio commodi excepturi nihil quibusdam mollitia possimus et. Dolor tempora velit animi est ducimus aut.','laboriosam',NULL,'1973-10-29 21:41:56','2007-03-04 07:16:55'),(10,10,2,'Consequatur dolor dicta nam a. Qui aperiam qui eaque eos pariatur. Nisi molestias omnis nulla praesentium omnis veritatis dolores. Magni temporibus dolor qui harum asperiores fugiat.','nostrum',NULL,'1993-06-10 06:37:49','1971-06-07 12:15:51'),(11,11,3,'Voluptates est est enim dolores eum ipsum dolorem. Hic iure alias libero molestias. Sint eos cupiditate iste modi saepe qui. Maxime sed officiis molestiae autem et sed.','quia',NULL,'2009-09-04 05:41:07','1982-02-13 13:19:48'),(12,12,4,'Molestias quo repellat sunt error rem illo explicabo eum. Consequatur aliquam eum sit et officia vitae impedit. Facere quos in fugit qui vel sapiente quo. Suscipit explicabo illo quam vel exercitationem est facilis ad.','reprehenderit',NULL,'2013-06-30 00:53:32','1987-09-17 13:30:19'),(13,13,1,'Eum tempora quis doloremque suscipit qui dolorem blanditiis. Eos et ea aut voluptate dolorem debitis. Placeat praesentium mollitia cupiditate et. Dignissimos et id necessitatibus et quod neque. Sint enim officiis nihil et qui.','eius',NULL,'1993-07-31 14:57:31','2002-01-14 18:13:06'),(14,14,2,'Praesentium sint molestiae vel in laborum sed. Nihil eos atque consequatur. Rerum ullam dolor officiis et in omnis. Beatae id impedit praesentium laudantium.','cupiditate',NULL,'1985-12-27 20:39:47','1976-01-27 12:00:57'),(15,15,3,'Eligendi quae officia aut sunt cupiditate corrupti. Reiciendis velit in aut blanditiis. Deleniti minus dicta odit culpa aut.','sunt',NULL,'1979-07-19 01:33:24','1974-11-10 06:18:24'),(16,16,4,'Fuga repudiandae expedita nihil tenetur. Odio perspiciatis facere ipsam consequatur provident. Unde quos ullam illum voluptatum beatae. Ea cum dolores inventore occaecati optio commodi illum. Et exercitationem dicta sed doloremque neque nostrum.','labore',NULL,'1975-08-29 05:10:15','1986-04-19 10:10:25'),(17,17,1,'Expedita veniam qui temporibus iusto rerum repellat. Excepturi nostrum modi et soluta error possimus. Sit molestias libero sint ut in. Aperiam quisquam quibusdam id non sit nobis qui.','quia',NULL,'2008-01-14 09:18:36','2017-05-16 18:36:39'),(18,18,2,'Quisquam culpa voluptatibus perferendis dolores nihil inventore. Sed necessitatibus non voluptas accusamus. Totam adipisci laborum ut tempora dolor dignissimos accusamus aut. Enim et nihil dolor doloribus.','quaerat',NULL,'2019-06-23 06:24:27','1987-09-02 13:00:52'),(19,19,3,'Nostrum animi sapiente occaecati labore. Est excepturi a reiciendis. Quo at voluptas quo quasi.','in',NULL,'1985-11-09 12:05:59','1997-08-01 20:43:16'),(20,20,4,'Eum eos et magnam reiciendis. Porro incidunt minus sed qui autem ab nihil. Alias vel qui aliquam et. Voluptatem in unde sit est. Et veritatis et iusto maxime itaque explicabo.','eos',NULL,'1997-03-12 10:58:46','1995-01-30 21:01:20'),(21,21,1,'Dolores ipsam facere sunt eos et et ipsam. Quasi dolorem cumque maiores modi. Soluta repellat aliquid nulla nobis nihil sequi sed. Sint atque facere ipsum est quo consectetur mollitia dolores.','exercitationem',NULL,'1994-05-28 18:16:18','2002-12-28 14:39:03'),(22,22,2,'Et delectus inventore placeat distinctio. Iste quibusdam praesentium aut rerum. Itaque accusamus tempore facilis ratione dolor et et.','perferendis',NULL,'2006-07-13 03:30:15','1986-05-08 22:05:58'),(23,23,3,'Ipsum qui quas necessitatibus necessitatibus mollitia quidem. Et aut quis corrupti rerum est delectus velit. Facilis et culpa dolorum nisi illo. Ut reprehenderit quae numquam.','doloribus',NULL,'1983-07-18 04:25:32','1985-09-15 01:31:38'),(24,24,4,'Est rerum eum et molestiae sint voluptate. Suscipit eum voluptas vel harum. Occaecati iure pariatur iste quis. Consequatur possimus expedita laborum est odio atque.','aut',NULL,'2005-02-23 03:46:33','2017-04-11 13:37:44'),(25,25,1,'Quae beatae sed quis in. Repellat dolorem iure non nam quia et. Dolores dolore inventore consequatur fuga asperiores quisquam et. Maxime qui est eum possimus praesentium. Ut consequatur ut ducimus nostrum.','sint',NULL,'2020-04-08 17:55:08','1976-01-26 15:28:35'),(26,26,2,'Nihil ratione sed libero. Est fuga eum esse quas expedita suscipit. Et consequuntur et a iusto qui non quidem. Corrupti in molestiae saepe et est veritatis non dicta. Ea ratione suscipit ea aspernatur.','alias',NULL,'2015-10-15 03:00:30','1999-08-03 08:15:32'),(27,27,3,'Eligendi velit iure laboriosam explicabo. Similique velit maiores numquam voluptas sapiente sunt. Optio quia rem sit perferendis illo quia.','culpa',NULL,'2015-04-17 22:52:00','2020-07-27 18:22:07'),(28,28,4,'Magni eligendi hic facere. Soluta blanditiis veritatis et est. Molestiae tempora et voluptates quas voluptatem sit. Corrupti sed ut perferendis dolor.','sunt',NULL,'2011-02-10 09:10:20','1987-12-06 15:21:39'),(29,29,1,'Deleniti et perspiciatis porro laudantium aspernatur cupiditate repellendus autem. Dolorem omnis sit ut libero qui consectetur.','vero',NULL,'2015-09-25 13:01:46','2001-06-16 16:06:01'),(30,30,2,'Reiciendis in ab fuga saepe aperiam placeat. Saepe odio possimus autem velit ipsa debitis quis sit. Esse iste harum adipisci.','doloribus',NULL,'2015-04-26 14:30:03','2013-03-21 09:15:07'),(31,1,3,'Sed temporibus cupiditate error aut quam perspiciatis doloremque. Quisquam fugit ut possimus dolor in sit. Culpa ipsam totam quam rerum nihil nam recusandae.','libero',NULL,'2002-07-28 09:20:08','1996-03-22 14:42:53'),(32,2,4,'Id et minus non esse consectetur et. Mollitia illum dolores earum similique sed molestias dolore. Temporibus laborum est ab qui.','voluptatem',NULL,'1988-04-01 23:47:49','1998-08-04 08:45:38'),(33,3,1,'Aut velit quas ut quos. Exercitationem nisi qui quia dolorem ut rem. Voluptas veniam culpa fugit aut et enim veniam.','et',NULL,'2015-06-28 00:00:46','1997-06-14 07:39:07'),(34,4,2,'Omnis quis nihil inventore velit nihil dolores. Et fugiat omnis officiis laboriosam dolores. Magnam repellendus consequatur voluptas aut nobis ut totam odit. Sapiente est placeat dignissimos ut iste veniam.','inventore',NULL,'2019-07-23 17:14:21','1996-08-13 19:45:13'),(35,5,3,'Quidem recusandae deleniti porro laboriosam rerum. Minima voluptas ut non occaecati ipsa qui. Hic et illo dolore qui ipsam est.','et',NULL,'2019-01-12 02:41:41','1984-11-04 18:16:30'),(36,6,4,'Necessitatibus aut commodi laudantium blanditiis excepturi facere enim. Sed eaque nisi aperiam doloribus modi perferendis. Alias autem magnam quia deserunt commodi qui fuga. Unde ipsam debitis eum totam.','molestiae',NULL,'1990-03-11 22:53:39','1996-05-15 17:15:03'),(37,7,1,'Reprehenderit debitis non id consectetur enim numquam. Autem dolores eveniet officia enim provident. Vel earum exercitationem consectetur reiciendis id omnis.','commodi',NULL,'2013-11-14 09:55:22','1985-05-14 08:42:17'),(38,8,2,'Aut magni quisquam eum quasi. Eum aut ducimus dolores molestiae et non. Et voluptatibus facilis tempore doloremque exercitationem expedita. Labore dolorem est magnam est quam.','quia',NULL,'1998-03-30 00:03:23','1970-07-25 13:36:32'),(39,9,3,'Doloribus temporibus omnis aperiam dolorum eos cumque. Repellat nihil incidunt dicta aut. Et ad iste iusto id porro commodi sit quae.','blanditiis',NULL,'1981-12-11 01:33:57','1981-11-21 23:55:01'),(40,10,4,'Ut nostrum atque mollitia et quis iusto. Ad praesentium aut voluptatum deleniti aspernatur. Qui rerum nisi facilis est.','culpa',NULL,'1973-08-15 06:46:38','1995-04-06 06:04:11'),(41,11,1,'Et eos voluptatem autem sit ea. Qui nihil modi alias aperiam exercitationem ratione ipsam. Explicabo aperiam maiores consequatur rerum.','ut',NULL,'1993-03-29 19:20:04','1988-10-19 00:42:10'),(42,12,2,'Aperiam quod sunt dignissimos id qui facere est. Ducimus non alias repellat. Reiciendis id excepturi voluptatem suscipit error.','est',NULL,'2004-11-08 16:26:21','1988-03-20 03:12:54'),(43,13,3,'Error veniam sint illo sed minima alias consequatur. Similique vitae est non non architecto sed delectus. Ducimus culpa quia aut qui temporibus at est. Vel fugiat dolorem ab in enim mollitia. Ipsa rerum dolor quis odio voluptates.','a',NULL,'1984-03-11 15:34:11','2011-09-03 02:35:26'),(44,14,4,'Distinctio quaerat impedit optio nihil qui adipisci. Eius eaque officia ab quis quia atque. Quo amet aut recusandae nihil iure quam laborum. Odit sed ut iste ea.','officia',NULL,'2003-03-28 19:01:45','1996-11-05 09:15:43'),(45,15,1,'Eos aut rerum sit iure laboriosam quia facere. Molestiae quisquam similique ea sunt omnis molestias. Cupiditate labore voluptas quaerat error magnam. Qui sint explicabo temporibus.','qui',NULL,'1992-11-09 10:34:48','1981-02-17 08:36:13'),(46,16,2,'Qui aut enim illum qui officia. Ut quas ea numquam. Odit deserunt enim omnis voluptas eum nobis ab. Minus tenetur molestiae saepe vel.','doloremque',NULL,'2019-03-12 15:26:28','2006-05-18 16:45:17'),(47,17,3,'Ut commodi harum occaecati accusamus. Libero quaerat est non nulla voluptate quasi cupiditate quo. Molestiae ea sint soluta.','quisquam',NULL,'1995-10-04 13:40:25','1975-06-18 14:08:11'),(48,18,4,'Deserunt quidem necessitatibus saepe nostrum nobis natus quo. Aut rerum nostrum nam repudiandae occaecati eos. Molestiae facere iste ipsa deleniti molestiae. Eos et et corporis facere.','aliquam',NULL,'1988-05-01 18:22:31','1989-10-11 12:25:51'),(49,19,1,'Excepturi quae quas quas dignissimos nulla qui. Quas labore rerum fuga dolor illo ipsum officia voluptate. Soluta atque temporibus est aut hic. Est aperiam molestias et qui est nam mollitia perspiciatis. Officiis quo delectus quia distinctio natus dolores.','officiis',NULL,'2004-06-04 06:40:24','1970-01-05 05:52:38'),(50,20,2,'Deserunt at id soluta reprehenderit tempore quia velit. Qui necessitatibus reprehenderit et recusandae aut accusantium.','labore',NULL,'2010-02-11 19:26:28','2010-01-14 00:28:03');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'text'),(2,'music'),(3,'music'),(4,'text');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,1,'Perspiciatis eum aperiam et aut velit itaque. Fugit repellat aut ut maxime molestiae quod ut. Culpa veritatis sit laborum minima. Error cumque tempore dignissimos.','1995-09-06 20:06:46'),(2,2,2,'Itaque consectetur illum repellat iste est et placeat. Ea et quas eveniet ullam aspernatur voluptatem. Veritatis corrupti sunt iste omnis eum sequi molestiae vel.','1970-02-23 03:59:43'),(3,3,3,'Ullam alias magnam distinctio blanditiis tempore molestias iure. Sequi nisi est molestiae. Dolor occaecati officia aut quis.','1972-12-04 17:12:35'),(4,4,4,'Cupiditate id nesciunt et accusamus optio. Assumenda sit sunt laboriosam nostrum est quod. Repudiandae qui ut tenetur ullam enim maiores. Ea et numquam vero ipsam qui.','1983-07-05 03:34:12'),(5,5,5,'Vel nobis rerum eum a dolores vel. Reprehenderit qui hic sed eum. Sed ea velit repellat consequatur illo eligendi. Rerum qui qui quia delectus.','2003-08-29 18:02:53'),(6,6,6,'Rerum consequatur magnam consequatur id occaecati sit excepturi. Autem omnis aperiam dolor et corrupti. Quidem sed voluptas quis quia rerum iusto officiis perferendis.','2000-12-30 12:38:29'),(7,7,7,'Et doloribus et dolorum aut atque. Quasi itaque non voluptas dolor sit. Consequatur labore impedit minus consequuntur ex earum.','1997-07-21 02:58:48'),(8,8,8,'Veniam dolores quam dignissimos. Itaque veniam vel sed inventore. Enim ea voluptas et eveniet itaque aut. Quia quis corrupti officiis enim.','2003-01-24 20:19:26'),(9,9,9,'Molestias voluptatibus reprehenderit earum tempore omnis quia. Velit qui atque ratione tempora distinctio suscipit. Quidem voluptas unde eaque enim voluptatibus dignissimos.','1975-03-18 17:40:50'),(10,10,10,'Quas provident ipsam expedita officia magni maiores. Sed vel ut dolore voluptatem. Facilis optio et cumque sint facere.','1999-12-16 18:39:59'),(11,11,11,'Nam aut quo qui omnis. Sunt id officia magni sit qui porro.','1978-10-24 19:16:27'),(12,12,12,'Adipisci earum exercitationem officia. Quis ex iste vitae nobis. Laboriosam temporibus et aliquam dolorum omnis tempore.','2011-06-15 02:40:43'),(13,13,13,'Blanditiis et libero id impedit natus ullam. Tenetur magnam magnam illum sed.','2005-06-24 06:46:58'),(14,14,14,'Corporis incidunt eius delectus totam optio atque. Beatae dolore ducimus aut nisi quam. Sunt et placeat temporibus minus omnis eveniet. Culpa est velit omnis. Sequi consequatur id est atque provident.','1982-12-22 13:16:36'),(15,15,15,'Ducimus earum et explicabo voluptatem ducimus. In qui sed officia aperiam necessitatibus atque. Provident ipsum aut et qui aut.','1995-04-01 02:27:10'),(16,16,16,'Libero iste soluta ipsum facilis dignissimos vitae quis. Repellat quia reprehenderit nemo distinctio. Inventore molestiae consequatur quis labore.','2005-10-03 04:20:43'),(17,17,17,'Quod tempora omnis consequatur perferendis vel. Porro vel dolores laboriosam dicta ut ut et. Soluta earum repellendus distinctio architecto voluptatum nulla voluptates aut. Delectus aut minus alias saepe.','1975-02-02 14:37:26'),(18,18,18,'Qui temporibus qui quo blanditiis qui at. Esse aspernatur quia et assumenda qui harum. Sequi ratione vel tempore tempore asperiores. Voluptate ex ut maiores itaque possimus soluta ex.','1990-10-05 18:11:18'),(19,19,19,'A et officiis praesentium sed sunt sit. Nihil eos blanditiis sed. Cumque veritatis ab quam rerum facilis. A quam aut sed et quae.','2000-09-11 18:26:08'),(20,20,20,'Est rerum nam accusantium rem aliquam. Maxime quaerat quasi deserunt nemo rerum deserunt vero.','1972-02-04 03:33:18'),(21,21,21,'Veritatis exercitationem illum neque fugiat quia aperiam architecto sit. Id quia soluta labore mollitia. Iste eum quam non et odio ipsam quia ex. Repellat consequatur totam veritatis ipsam est quo sed.','2000-06-30 05:01:45'),(22,22,22,'Enim voluptas pariatur excepturi ipsum autem quas. Sequi architecto sit aperiam necessitatibus est quam. Sapiente quos mollitia sit sit.','1991-02-22 18:59:30'),(23,23,23,'Vel officiis deleniti consectetur provident illum at. Nulla accusantium omnis non qui. Eos non neque ut autem.','1990-11-08 16:22:16'),(24,24,24,'Veritatis quia velit sed ipsa voluptatum. Ut et aperiam id porro porro. Facere sequi ex illo tempora explicabo delectus reiciendis.','1998-06-18 09:06:29'),(25,25,25,'Ut quia commodi delectus est odit aliquam. Dolor esse omnis doloremque tempora est libero quis. Cupiditate voluptas corporis voluptatem vero dolor expedita dignissimos. Aut consequatur quo similique aut quo odio nesciunt.','2016-10-20 00:50:23'),(26,26,26,'Nihil sequi aliquid cum numquam. Dolor eum dolorem temporibus beatae hic exercitationem neque perferendis. Libero non aperiam eveniet est. Impedit repellat qui impedit ab quibusdam.','2001-12-18 03:32:45'),(27,27,27,'Impedit itaque ut eius deserunt ratione est earum. Enim veniam qui ut.','1996-03-19 08:10:55'),(28,28,28,'Iusto et corporis harum veritatis omnis eveniet. Earum consequatur sit rerum rem aut iste corporis. Voluptatum occaecati voluptatem aut sit nulla.','1996-03-13 17:43:03'),(29,29,29,'Distinctio tempore eaque nostrum deserunt. Non velit ipsum totam maiores repellat qui. Placeat odio ipsam dignissimos aliquid doloremque. Ut tempora maiores accusamus quasi sunt occaecati repellendus. Quis amet iure impedit.','2019-12-12 14:23:32'),(30,30,30,'Qui ipsam porro aut qui sint hic. Quibusdam corrupti consequatur sequi. Neque assumenda sint quos ratione. Magni dolor voluptas officiis et.','1986-11-04 20:16:30'),(31,1,1,'Aliquam placeat similique culpa minus officiis voluptatem dolores. Repudiandae quia nemo modi. Commodi magnam dolorem iste praesentium architecto necessitatibus. Nihil repudiandae nostrum sint earum sint mollitia doloremque amet.','2012-12-20 07:40:23'),(32,2,2,'Adipisci rerum voluptatem eligendi iure. Reprehenderit aut qui voluptatem eum assumenda aut nostrum consequatur. Officia quia aut recusandae id dolores aut. Fuga doloribus eos ratione voluptatem consequatur sit placeat.','1973-11-14 12:23:40'),(33,3,3,'Sunt sunt iure cum voluptatibus in ut ea. Impedit a qui doloremque explicabo velit qui. Tenetur omnis in odio eaque.','1987-01-05 16:48:31'),(34,4,4,'Ut cum ut est non fuga. Consequatur culpa ea rerum perspiciatis quam.','1977-03-30 23:58:48'),(35,5,5,'Nemo tempore aperiam consequatur optio qui velit perferendis quaerat. Nulla aut corrupti iure fugit quia et. Voluptatem cum omnis molestiae quos.','2003-03-29 00:27:28'),(36,6,6,'Sit quaerat et ut. Voluptas nihil est consectetur aut adipisci molestiae officia. Dolore reprehenderit consequatur dolorem totam et aperiam. Sed in adipisci est qui.','1976-07-24 22:05:50'),(37,7,7,'Porro aut consequatur magni consectetur rerum quos harum. Nostrum dolore corporis voluptatem. Recusandae quidem sequi voluptatem unde aspernatur cupiditate odio. Suscipit consequatur soluta animi.','2006-10-21 08:47:13'),(38,8,8,'Sunt ipsam non et. Non dignissimos dolore accusantium ut.','1990-01-21 08:43:35'),(39,9,9,'Quis sint nisi veniam sit quae harum. Ut dolores similique aliquid ratione. Sint sequi eos quia sed et aliquam libero. Repellat delectus odit et doloremque animi.','1980-11-20 12:33:20'),(40,10,10,'Aut est beatae quis. Et aut omnis unde fugiat quia.','2020-06-09 16:30:09'),(41,11,11,'Et aut atque facere. Magnam dolores ut recusandae minus dolorem ut velit. Tenetur ut voluptates alias nemo voluptas iste fuga incidunt. Perferendis tempora quia ut aut.','2021-02-07 05:37:17'),(42,12,12,'Molestiae velit culpa iusto enim. Tenetur deleniti ut impedit voluptatibus blanditiis quas voluptatibus. Quia eos ut mollitia asperiores quis. Voluptatem fugiat amet ipsam ipsam rem.','2006-05-30 17:19:29'),(43,13,13,'Nostrum quidem ut inventore id adipisci qui. Officia labore labore recusandae iste dignissimos dignissimos autem. Et optio magnam officia rerum dolor praesentium. Illo voluptas maiores id ab qui laboriosam.','1976-07-09 16:05:13'),(44,14,14,'Dignissimos sint quia corrupti cumque est in placeat. Quia et cupiditate sed voluptas et ex. Qui voluptate aut enim. Velit corrupti voluptatem veritatis laborum non.','2009-04-19 21:56:15'),(45,15,15,'Aliquid qui modi repudiandae odit in dolore laboriosam. Ut eos ut velit doloremque.','1980-07-15 08:47:07'),(46,16,16,'Adipisci perspiciatis fugiat excepturi et. Doloremque placeat tenetur corrupti voluptatem. Cupiditate aspernatur modi aperiam illo eius.','2009-07-02 23:22:49'),(47,17,17,'Rerum maxime nulla deleniti vel. Quidem et ullam quod nesciunt possimus maiores distinctio sed. Id eius consequatur sunt assumenda. Quia non aut et animi quasi ut. Ratione consequuntur non et provident amet quas quia nesciunt.','2020-09-17 16:56:21'),(48,18,18,'Aliquam ducimus sunt qui rerum odio et. Fuga eum aut aut veniam sunt. Quibusdam iusto rem aut. Fuga fuga doloribus maiores itaque expedita error commodi rerum. Odit odio blanditiis rerum ipsum.','2009-08-11 19:40:25'),(49,19,19,'Animi saepe exercitationem ad dolorem. Voluptates nihil dolor perferendis sed laudantium. Sed vitae nulla modi ipsa.','1991-12-12 05:45:31'),(50,20,20,'Animi suscipit recusandae sunt quidem ea placeat. Error assumenda ea libero sapiente molestias at aut. Dicta sed illo iusto quasi.','2000-07-17 01:31:45');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_profiles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'M','Santaville','2021-03-03 09:14:40','1989-05-20 02:57:10'),(2,'M','Port Joannetown','2021-03-03 09:14:40','2010-06-09 12:48:41'),(3,'M','Stiedemannmouth','2021-03-03 09:14:40','1999-12-15 17:41:41'),(4,'M','Grantberg','2021-03-03 09:14:40','1986-03-10 13:49:47'),(5,'M','North Lawrencefort','2021-03-03 09:14:40','1980-06-19 04:04:34'),(6,'W','Kamillebury','2021-03-03 09:14:40','1993-09-30 23:45:19'),(7,'M','West Lillaside','2021-03-03 09:14:40','2010-11-29 18:41:53'),(8,'M','Davisview','2021-03-03 09:14:40','2017-06-21 17:12:51'),(9,'W','Reynoldsfort','2021-03-03 09:14:40','1971-04-22 21:50:56'),(10,'W','Wilkinsonstad','2021-03-03 09:14:40','2008-11-23 08:12:05'),(11,'M','Bashirianbury','2021-03-03 09:14:40','1991-09-08 13:41:11'),(12,'W','Cletusmouth','2021-03-03 09:14:40','1993-01-30 18:09:16'),(13,'M','Bayertown','2021-03-03 09:14:40','1988-07-03 02:18:28'),(14,'W','East Louie','2021-03-03 09:14:40','2018-10-29 03:31:44'),(15,'W','Auerfurt','2021-03-03 09:14:40','2018-08-25 04:51:52'),(16,'M','North Saulmouth','2021-03-03 09:14:40','1997-01-25 12:57:50'),(17,'M','Roweshire','2021-03-03 09:14:40','1999-08-01 03:10:48'),(18,'W','Lake Myaborough','2021-03-03 09:14:40','1981-11-22 17:29:29'),(19,'M','South Aracely','2021-03-03 09:14:40','2020-01-24 12:18:31'),(20,'W','West Maxie','2021-03-03 09:14:40','1989-09-30 11:50:52'),(21,'W','New Vincent','2021-03-03 09:14:40','2005-12-23 04:50:57'),(22,'W','Bednarchester','2021-03-03 09:14:40','1986-08-13 06:35:41'),(23,'M','Paytonfurt','2021-03-03 09:14:40','1996-02-24 18:37:40'),(24,'W','Brekkechester','2021-03-03 09:14:40','1982-09-07 07:39:28'),(25,'W','Port Angelineside','2021-03-03 09:14:40','2000-08-03 18:04:05'),(26,'W','East Aniyahaven','2021-03-03 09:14:40','2004-03-03 10:12:19'),(27,'W','Adahburgh','2021-03-03 09:14:40','1999-06-03 17:34:00'),(28,'M','Lorenzoborough','2021-03-03 09:14:40','1994-08-11 14:50:06'),(29,'W','Langoshmouth','2021-03-03 09:14:40','1985-02-13 19:00:32'),(30,'M','Medhurstfurt','2021-03-03 09:14:40','2006-06-16 12:41:08');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ФАМИЛИЯ',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `idx_users_username` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ПОЛЬЗОВАТЕЛИ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Viola','Quitzon','jeromy.mann@example.net',79174567013,'fa8188ffe8ec1f3d91b753a017cdaefd669a10b8'),(2,'Kara','Quigley','zfunk@example.org',79773421637,'9bc5aca2d58172dc6e207a6dc2a24a89ced9c9d8'),(3,'Callie','Johns','yesenia82@example.net',79089824201,'a2defccec2ed2be03f582f181aa1d51b18ae6292'),(4,'Eleanora','O\'Kon','aaliyah75@example.org',79716575879,'93947ae3397054b5db3c45b2c9bbc8d57277d2d2'),(5,'Vivien','Terry','irussel@example.org',79188283720,'7abc2ade667c1c96338d963c9af94a16636094ba'),(6,'Oswaldo','Champlin','richmond96@example.com',79380533724,'a299d42c80891980700e548ede897e6f7e07790f'),(7,'Chasity','Rutherford','hipolito.schmeler@example.com',79850399263,'0dc634d122ad14b0decfa9e427c846e9d17e0f6b'),(8,'Norwood','Ankunding','lelia63@example.org',79264150714,'cd9327e85a07c02aa9a9eff71cd5d35c608b8600'),(9,'Leonardo','Stiedemann','rath.magdalen@example.com',79206360400,'eeaf6a752d069c20c64a5c78ec64217709e5872a'),(10,'Eulalia','Von','spencer61@example.com',79674575474,'b6f37c9bd179b05962d79a08fc82b100b34911e5'),(11,'Abelardo','Ondricka','omorissette@example.com',79341893316,'394888903c8e732cf1fe95a688dc8dae255ae66a'),(12,'Marcelina','Murphy','beatty.diana@example.org',79718158872,'50a2132bcc59720542d2ff4241a53c3fa684febb'),(13,'Edd','Grimes','brendan.mertz@example.net',79664360702,'e659e49eef2637793a8a6597c83072b8c258dcb5'),(14,'Daphnee','Sauer','america.johnson@example.com',79196032198,'914f9c0e083c34293a4241d6588d12c85d5e6bee'),(15,'Clementina','Marks','abshire.leora@example.net',79538650107,'9c0909a33a9b3b046ea2103c33bdd7c84b2b26c4'),(16,'Raquel','Spinka','barrows.marty@example.com',79079770348,'15ad0d32c40b3c58455f664c176aca1b4277a48f'),(17,'Lia','Lang','mathilde82@example.com',79874163162,'31dab66589ab4ffd6c766e5e808c8788abd68d26'),(18,'Syble','Gorczany','veum.earnest@example.org',79070980319,'71ae9e7b695808780bdc14ab883ed54bf508c49d'),(19,'Jace','Schinner','lesley87@example.net',79068267629,'827fedd86255240dce356595df53de99d74ec743'),(20,'Makayla','Huels','lhowell@example.net',79358377952,'72100d1c01ddf24114f2372fa60f211b8757ebb5'),(21,'Meggie','Hirthe','greenfelder.bridie@example.com',79355620413,'287d11c9d1dd4e94c899fc2863ee9fb1a6f893dd'),(22,'Brannon','Heaney','gulgowski.robyn@example.net',79071183615,'2934c02a32c90a4bd5c069a7c7ceba36c88d4599'),(23,'Deshaun','Hauck','marjorie53@example.org',79113311687,'7e89ee821ad45a49e597377fd096ce19899ae49a'),(24,'Mohamed','Gottlieb','rmaggio@example.org',79970523548,'2075f00e9f487fca35b1ff392b56ebf5c02c4aea'),(25,'Kyler','Hoppe','jody.gerlach@example.com',79492337824,'d05651715945f9fc25cc090d0aa60962d513757d'),(26,'Elda','Armstrong','conroy.scotty@example.com',79837467674,'380ce2d842f9153918cf483fb43886996a0ad75c'),(27,'Arjun','Orn','qrunolfsson@example.org',79857578290,'23dd0b46d9d4fa268d33c657252dbbd9f5ee3f07'),(28,'Jada','Roberts','sanford.kitty@example.com',79046767826,'061697fc630eedd11c925cf6061fdebeeee9de90'),(29,'Brandyn','Quitzon','eladio61@example.org',79669364141,'e00f8efa539ace232daed0602bb3b0d513e8604c'),(30,'Ursula','Stracke','pkuphal@example.org',79059401424,'ce269218e8e4d32c72a34c94e5548504ad35afee');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(1,31),(2,32),(3,33),(4,34),(5,35),(6,36),(7,37),(8,38),(9,39),(10,40),(11,41),(12,42),(13,43),(14,44),(15,45),(16,46),(17,47),(18,48),(19,49),(20,50),(21,51),(22,52),(23,53),(24,54),(25,55),(26,56),(27,57),(28,58),(29,59),(30,60),(1,61),(2,62),(3,63),(4,64),(5,65),(6,66),(7,67),(8,68),(9,69),(10,70),(11,71),(12,72),(13,73),(14,74),(15,75),(16,76),(17,77),(18,78),(19,79),(20,80),(21,81),(22,82),(23,83),(24,84),(25,85),(26,86),(27,87),(28,88),(29,89),(30,90),(1,91),(2,92),(3,93),(4,94),(5,95),(6,96),(7,97),(8,98),(9,99),(10,100);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-03  9:26:01
