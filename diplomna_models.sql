CREATE DATABASE  IF NOT EXISTS `diplomna` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `diplomna`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: diplomna
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Brands_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_Models_Brands` (`Brands_ID`),
  CONSTRAINT `FK_Models_Brands` FOREIGN KEY (`Brands_ID`) REFERENCES `brands` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,1,'GT',1),(2,1,'GTV',1),(3,1,'Guiletta',1),(4,1,'145',1),(5,1,'146',1),(6,1,'147',1),(7,1,'155',1),(8,1,'156',1),(9,2,'A3',1),(10,2,'A4',1),(11,2,'A6',1),(12,2,'A8',1),(13,2,'Q7',1),(14,2,'Q5',1),(15,2,'Q3',1),(16,2,'TT',1),(17,3,'DB2',1),(18,3,'DB3 Spyder',1),(19,3,'DB3S',1),(20,3,'DB4',1),(21,3,'DB5',1),(22,3,'DB6',1),(23,3,'DB7',1),(24,3,'DB9',1),(25,4,'1 Series',1),(26,4,'3 Series',1),(27,4,'5 Series',1),(28,4,'6 Series',1),(29,4,'7 Series',1),(30,4,'8 Series',1),(31,4,'X3',1),(32,4,'X5',1),(33,5,'C1',1),(34,5,'C2',1),(35,5,'C3',1),(36,5,'C4',1),(37,5,'C5',1),(38,5,'Xantia',1),(39,6,'Camionnette',1),(40,6,'1310',1),(41,6,'1410',1),(42,7,'Punto',1),(43,7,'Brava',1),(44,7,'Bravo',1),(45,7,'Tipo',1),(46,7,'Tempra',1),(47,8,'Escort',1),(48,8,'Fiesta',1),(49,8,'Sierra',1),(50,9,'Civic',1),(51,9,'CR-V',1),(52,9,'CRX',1),(53,9,'MDX',1),(54,9,'Accord',1),(55,10,'Cherokee',1),(56,10,'Grand Cherokee',1),(57,10,'Wrangler',1),(58,10,'Wrangler Unlimited',1),(59,11,'Optima',1),(60,11,'Rio',1),(61,11,'Sportage',1),(62,12,'Delta',1),(63,12,'Lybra',1),(64,13,'Defender',1),(65,13,'Discovery',1),(66,13,'Freelander',1),(67,13,'Range Rover',1),(68,13,'Range Rover Sport',1),(69,14,'3',1),(70,14,'5',1),(71,14,'6',1),(72,14,'CX-7',1),(73,14,'CX-9',1),(74,15,'A-Class',1),(75,15,'B-Class',1),(76,15,'C-Class',1),(77,15,'E-Class',1),(78,15,'S-Class',1),(79,15,'G-Class',1),(80,16,'Almera',1),(81,16,'Navara',1),(82,16,'Roadster',1),(83,16,'X-Trail',1),(84,17,'106',1),(85,17,'107',1),(86,17,'206',1),(87,17,'306',1),(88,17,'307',1),(89,17,'307 SW',1),(90,17,'407',1),(91,17,'505',1),(92,18,'Clio',1),(93,18,'Espace',1),(94,18,'Megane',1),(95,18,'Twingo',1),(96,19,'9-3',1),(97,19,'9-5',1),(98,20,'Avensis',1),(99,20,'Camry',1),(100,20,'Corolla',1),(101,20,'Land Cruiser',1),(102,20,'RAV4',1),(103,20,'Prius',1),(104,20,'Yaris',1),(105,21,'Golf',1),(106,21,'Polo',1),(107,21,'New Beetle',1),(108,21,'Passat',1),(109,21,'Phaeton',1),(110,21,'Touareg',1),(111,21,'Touran',1);
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-04 17:15:07
