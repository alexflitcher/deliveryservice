-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: data
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-25 14:56:17
