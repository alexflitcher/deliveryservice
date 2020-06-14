-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: data
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1ubuntu1

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
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (20,'Test'),(21,'Test'),(22,'Test'),(23,'Test'),(24,'Test'),(25,'Test'),(26,'Test'),(27,'Test'),(28,'Test'),(29,'Tesgst'),(30,'Tesgst');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `family` tinytext DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `verification` enum('false','true') NOT NULL DEFAULT 'false',
  `img` varchar(3000) DEFAULT 'false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (25,'123','123','alexflitcher@yandex.ru','123123123123123','2020-06-25','true','false'),(26,'q2eqweqw','eqweqweqw','nicn1kolai@yandex.ru','12312312342345345','2020-06-11','true','false'),(27,'123','dfsdf','123@yandex.ru','123123123123','2020-06-03','false','false'),(28,'wwwwww','wwwww','qweqwe@asd.qwe','123123123123123123123123','2020-05-28','false','false'),(29,'qwe','dfsdf','nicn1ko222lai@yandex.ru','123123123123645','2020-06-03','false','false');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codesverify`
--

DROP TABLE IF EXISTS `codesverify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codesverify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `time_active` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codesverify`
--

LOCK TABLES `codesverify` WRITE;
/*!40000 ALTER TABLE `codesverify` DISABLE KEYS */;
INSERT INTO `codesverify` VALUES (2,24,489526,'2020-06-02 20:47:31'),(3,24,489526,'2020-06-02 20:47:31'),(4,24,489526,'2020-06-06 13:51:57'),(5,24,489526,'2020-06-06 13:51:59'),(6,26,7246520,'2020-06-09 12:02:10'),(7,26,21751961,'2020-06-09 12:15:00'),(8,26,80700914,'2020-06-09 12:15:56'),(9,26,5701904,'2020-06-09 12:16:14'),(10,26,86313661,'2020-06-09 12:19:47'),(11,26,34870459,'2020-06-09 12:30:56'),(12,26,92493844,'2020-06-09 12:31:13'),(13,26,87620854,'2020-06-09 12:31:36'),(14,26,28734802,'2020-06-09 12:33:12'),(15,26,12327205,'2020-06-09 12:33:39'),(16,26,49139088,'2020-06-09 12:33:51'),(17,26,66040753,'2020-06-09 12:35:05'),(18,26,54900079,'2020-06-09 12:35:10'),(19,26,56187650,'2020-06-09 12:36:00'),(20,26,96321891,'2020-06-09 12:36:03'),(21,26,13273395,'2020-06-09 12:36:29'),(22,26,39168862,'2020-06-09 13:02:49'),(23,26,16108540,'2020-06-09 13:13:34'),(24,26,23191859,'2020-06-09 13:13:55'),(25,26,77673874,'2020-06-09 13:14:09'),(26,26,21966621,'2020-06-09 13:15:42'),(27,26,18156385,'2020-06-09 13:15:43'),(28,26,2852092,'2020-06-09 13:15:44'),(29,26,61044437,'2020-06-09 13:15:44'),(30,26,37184370,'2020-06-12 13:19:32'),(31,27,66179673,'2020-06-09 13:24:35'),(32,27,43827059,'2020-06-09 13:24:39'),(33,27,81757707,'2020-06-09 13:26:43'),(34,26,69055011,'2020-06-09 13:32:11'),(35,26,56657456,'2020-06-09 13:33:40'),(36,25,97812161,'2020-06-09 13:34:55'),(37,27,45270370,'2020-06-09 13:38:44'),(38,27,30619923,'2020-06-09 13:44:27'),(39,27,74512795,'2020-06-09 13:44:33'),(40,27,86186880,'2020-06-09 13:44:46'),(41,26,62963030,'2020-06-09 13:46:02'),(42,26,77299021,'2020-06-09 13:47:13'),(43,26,5729769,'2020-06-09 13:49:05'),(44,26,24321086,'2020-06-09 13:50:23'),(45,26,11158221,'2020-06-09 13:54:30'),(46,25,62065146,'2020-06-09 13:55:24'),(47,25,6123553,'2020-06-09 13:55:28'),(48,25,15226488,'2020-06-09 13:56:31'),(49,27,91002428,'2020-06-09 13:57:40'),(50,27,28365801,'2020-06-09 13:57:44'),(51,27,41744387,'2020-06-09 13:58:47'),(52,27,47657006,'2020-06-09 13:58:51'),(53,25,47692751,'2020-06-13 13:57:45'),(54,25,52428566,'2020-06-13 13:59:52'),(55,25,52510908,'2020-06-13 14:01:17'),(56,25,86779204,'2020-06-13 14:04:12'),(57,25,86856621,'2020-06-13 14:05:22'),(58,26,64018590,'2020-06-13 15:23:41'),(59,26,15173159,'2020-06-16 21:17:28'),(60,26,97838473,'2020-06-16 21:17:29');
/*!40000 ALTER TABLE `codesverify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `executives`
--

DROP TABLE IF EXISTS `executives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `executives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `phone` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `password` varchar(400) NOT NULL,
  `position` enum('admin','moderator','helper','programmer','teamlead','manager') DEFAULT 'helper',
  PRIMARY KEY (`id`,`phone`,`email`,`nick`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `executives`
--

LOCK TABLES `executives` WRITE;
/*!40000 ALTER TABLE `executives` DISABLE KEYS */;
/*!40000 ALTER TABLE `executives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `price` varchar(20) NOT NULL,
  `rest_id` int(11) NOT NULL DEFAULT 1,
  `catalog_id` int(11) NOT NULL DEFAULT 1,
  `description` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (41,'123','123',123,123,'123',NULL),(42,'123','123',123,123,'123',NULL),(43,'123','123',123,123,'123',NULL),(44,'123','123',123,123,'123',NULL),(45,'123','123',123,123,'123',NULL),(46,'123','123',123,123,'123',NULL),(47,'123','123',123,123,'123',NULL),(48,'123','123',123,123,'123',NULL),(49,'123','123',123,123,'123',NULL),(50,'123','123',123,123,'123',NULL),(51,'123','123',123,123,'123',NULL),(52,'123','123',123,123,'123',NULL),(53,'123','123',123,123,'123',NULL),(54,'123','123',93,123,'123',NULL),(55,'123','123',93,123,'123',NULL),(56,'123','123',93,123,'123',NULL),(57,'123','123',93,123,'123',NULL),(58,'123','123',93,123,'123',NULL),(59,'123','123',93,123,'123',NULL),(60,'123','123',93,123,'123',NULL),(61,'123','123',93,123,'123',NULL),(62,'123','123',93,123,'123',NULL),(63,'123','123',93,123,'123','../img/img.jpg'),(64,'123','123',93,123,'123','../img/img.jpg'),(65,'123','123',93,123,'123','../img/img.jpg'),(66,'123','123',93,123,'123','../img/img.jpg'),(67,'123','123',93,123,'123','../img/img.jpg'),(68,'123','123',93,123,'123','../img/img.jpg'),(69,'123','123',93,123,'123','../img/img.jpg'),(70,'123','123',93,123,'123','../img/img.jpg'),(71,'123','123',93,123,'123','../img/img.jpg'),(72,'123','123',93,123,'123','../img/img.jpg'),(73,'123','123',93,123,'123','../img/img.jpg'),(74,'123','123',93,123,'123','../img/img.jpg'),(75,'123','123',93,123,'123','../img/img.jpg'),(76,'123','123',93,123,'123','../img/img.jpg'),(77,'123','123',93,20,'123','../img/image.jpeg'),(78,'123','123',93,20,'123','../img/image.jpeg'),(79,'123','123',93,20,'123','../img/image.jpeg'),(80,'123','123',93,20,'123','../img/images.jpeg'),(81,'123','123',93,20,'123','../img/images.jpeg'),(82,'123','123',93,20,'123','../img/images.jpeg'),(83,'123','123',93,20,'123','../img/images.jpeg'),(84,'123','123',93,20,'123','../img/images.jpeg'),(85,'123','123',93,20,'123','../img/images.jpeg'),(86,'123','123',93,20,'123','../img/images.jpeg'),(87,'123','123',93,20,'123','../img/images.jpeg'),(88,'123','123',93,20,'123','../img/images.jpeg'),(89,'123','123',93,20,'123','../img/images.jpeg'),(90,'123','123',93,20,'123','../img/images.jpeg'),(91,'123','123',93,20,'123','../img/images.jpeg'),(92,'123','123',93,20,'123','../img/images.jpeg'),(93,'123','123',93,20,'123','../img/images.jpeg'),(94,'123','123',93,20,'HEHE','../img/images.jpeg'),(95,'123','123',93,20,'HEHE','../img/images.jpeg'),(96,'123','123',93,20,'HEHE','../img/images.jpeg'),(97,'123','123',93,20,'HEHE','../img/images.jpeg'),(98,'123','123',93,20,'HEHE','../img/images.jpeg'),(99,'1123122312312323','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(100,'1123122312312323','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(101,'1123122312312323','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(102,'1.1231223123122E+39','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(103,'1.1231223123122E+39','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(104,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(105,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(106,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHE','../img/images.jpeg'),(107,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(108,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(109,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(110,'Курочка с инлейкой вкусннааа','1231231231231231231',93,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(111,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(112,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(113,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(114,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(115,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(116,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(117,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(118,'Курочка с инлейкой вкусннааа','1231231231231231231',91,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(119,'Курочка с инлейкой вкусннааа','1231231231231231231',128,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(120,'Курочка с инлейкой вкусннааа','1231231231231231231',128,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(121,'Курочка с инлейкой вкусннааа','1231231231231231231',128,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg'),(122,'Курочка с инлейкой вкусннааа','1231231231231231231',128,20,'HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE','../img/images.jpeg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocodes`
--

DROP TABLE IF EXISTS `promocodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateadd` date NOT NULL,
  `datedelete` datetime NOT NULL,
  `adder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocodes`
--

LOCK TABLES `promocodes` WRITE;
/*!40000 ALTER TABLE `promocodes` DISABLE KEYS */;
INSERT INTO `promocodes` VALUES (2,'#QWERTY','2016-12-12','2018-12-12 00:00:00','nicolas','food'),(3,'#QWERTY','2016-12-12','2018-12-12 00:00:00','nicolas','food'),(4,'#QWERTY','2016-12-12','2018-12-12 00:00:00','nicolas','food'),(5,'#QWERTY','2016-12-12','2018-12-12 00:00:00','nicolas','food'),(6,'#QWERTY','2016-12-12','2018-12-12 00:00:00','nicolas','food');
/*!40000 ALTER TABLE `promocodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `family` varchar(255) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `pos_menu` text NOT NULL,
  `type_pay` varchar(20) NOT NULL,
  `type_delivery` varchar(20) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `totalprice` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (17,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(18,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(19,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(20,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(21,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(22,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(23,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(24,'q2eqweqw','eqweqweqw','sdfsdf','123,423,4','qwe','dfg','wer','sdf',25,26),(25,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,27),(26,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,27),(27,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,27),(28,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,27),(29,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(30,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(31,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(32,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(33,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(34,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(35,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(36,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(37,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(38,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999,26),(39,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',99999999,26),(40,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',99999999,26),(41,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',99999999,26),(42,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999999,26),(43,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999999,26),(44,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999999,26),(45,'qwerty','qerty','st.grove','12,32,123','qweryt','yes','899554','sdfsdf',999999999,26),(46,'qwerty','qerty','st.grove','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(47,'qwerty','qerty','st.grove','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(48,'qwerty','qerty','st.grove','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(49,'qwerty','qerty','st.grove','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(50,'qwerty','qerty','st.grdfgdfgdfgdfgdfgdfggdfgdfgove','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(51,'qwerty','qerty','st.grdfgdfgdfgdfgdfgdfggdfgdfgove','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(52,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(53,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(54,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(55,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(56,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(57,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(58,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(59,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(60,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(61,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(62,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(63,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(64,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(65,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(66,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(67,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(68,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(69,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(70,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(71,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(72,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(73,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(74,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(75,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(76,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(77,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(78,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(79,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(80,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(81,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(82,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(83,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(84,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(85,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(86,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26),(87,'qwerty','qerty','st.grdfgdfgdfgdfgd','12,32,123','qweryt','yesyesy','899554','sdfsdf',999999999,26);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaraunts`
--

DROP TABLE IF EXISTS `restaraunts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaraunts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(33) DEFAULT NULL,
  `img` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaraunts`
--

LOCK TABLES `restaraunts` WRITE;
/*!40000 ALTER TABLE `restaraunts` DISABLE KEYS */;
INSERT INTO `restaraunts` VALUES (91,'Tosiba','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(92,'Tosiba','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(93,'Tosiba','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(94,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(95,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(96,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(97,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(98,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(99,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(100,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(101,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(102,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(103,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(104,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(105,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(106,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(107,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(108,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(109,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(110,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(111,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(112,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(113,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(114,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(115,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(116,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(117,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(118,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/logo.jpeg'),(119,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(120,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(121,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(122,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(123,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(124,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(125,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(126,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(127,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(128,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(129,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(130,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/img.jpg'),(131,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(132,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(133,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(134,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(135,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(136,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(137,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(138,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg'),(139,'Tosiba1','A. A. Flitcher','Bt. street, h. 12, c. 175','216-542-451','../img/images.jpeg');
/*!40000 ALTER TABLE `restaraunts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verifications`
--

DROP TABLE IF EXISTS `verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verifications`
--

LOCK TABLES `verifications` WRITE;
/*!40000 ALTER TABLE `verifications` DISABLE KEYS */;
INSERT INTO `verifications` VALUES (28,24,'7e0I7dnDC7JtzWCJTcrOVQiqbAi2cRmL'),(31,27,'PY2pPagOSvVtfNA2DLNZT3d407qgf30A'),(32,28,'tJAQJd6PyuxVTpdIbURD4glMCOVIpNql'),(33,29,'3nm8OuIQ9zAiRF6ZRJHuAqA42B7pwh2c');
/*!40000 ALTER TABLE `verifications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-14 21:19:58
