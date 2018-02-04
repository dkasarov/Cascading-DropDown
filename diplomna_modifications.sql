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
-- Table structure for table `modifications`
--

DROP TABLE IF EXISTS `modifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modifications` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Models_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `EngineVolume` int(11) NOT NULL,
  `EnginePower` int(11) NOT NULL,
  `EngineFuel` int(11) DEFAULT NULL,
  `Doors` tinyint(3) unsigned NOT NULL,
  `ProduceFrom` int(11) NOT NULL,
  `ProduceTo` int(11) NOT NULL,
  `InsuranceValue` decimal(19,4) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `FK_Modifications_Fuel` (`EngineFuel`),
  KEY `FK_Modifications_Models` (`Models_ID`),
  CONSTRAINT `FK_Modifications_Fuel` FOREIGN KEY (`EngineFuel`) REFERENCES `fuel` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Modifications_Models` FOREIGN KEY (`Models_ID`) REFERENCES `models` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifications`
--

LOCK TABLES `modifications` WRITE;
/*!40000 ALTER TABLE `modifications` DISABLE KEYS */;
INSERT INTO `modifications` VALUES (1,26,'318d',1800,130,2,3,2000,2005,7000.0000,1),(2,26,'318i',1800,140,1,3,2000,2005,7200.0000,1),(3,26,'320d',2000,143,2,3,2000,2005,7400.0000,1),(4,26,'320d',2000,143,2,5,2000,2005,7200.0000,1),(5,26,'320i',2000,150,1,3,2000,2005,7700.0000,1),(6,26,'320i',2000,150,1,5,2000,2005,8000.0000,1),(7,26,'335i',3000,306,1,3,2010,2016,90000.0000,1),(8,26,'328i',2000,248,1,3,2010,2016,85000.0000,1),(9,26,'320d',2000,184,2,5,2010,2016,72000.0000,1),(10,26,'318d',1800,163,2,5,2010,2016,65000.0000,1),(11,27,'520d',2000,134,2,5,2005,2008,23000.0000,1),(12,27,'530d',3000,167,2,5,2005,2008,25000.0000,1),(13,27,'520i',2000,140,1,5,2005,2008,24000.0000,1),(14,27,'530i',3000,186,1,5,2005,2008,30000.0000,1),(15,105,'Golf IV 1.6TDI',1600,90,2,3,1998,2004,4700.0000,1),(16,105,'Golf IV 1.8TFSI',1800,110,1,3,1998,2004,5400.0000,1),(17,105,'Golf VI 1.8TDI',1800,90,2,5,2009,2015,40000.0000,1),(18,105,'Golf VI 2.0TSI',2000,250,1,3,2009,2015,55000.0000,1),(19,104,'Yaris I 1.5i 16V',1600,106,1,3,2001,2005,4300.0000,1),(20,104,'Yaris I 1.0i 16V',1000,68,1,3,2001,2005,3200.0000,1),(21,104,'Yaris I 1.3i 16V',1300,86,1,3,2001,2005,3600.0000,1),(22,104,'Yaris II 1.4 D-4D',1400,90,2,3,2005,2009,8000.0000,1),(23,104,'Yaris II 1.3 i VVT-i',1300,87,1,3,2005,2009,8500.0000,1),(24,104,'Yaris II 1.0 i VVT-i',1000,69,1,3,2005,2009,8200.0000,1),(25,104,'Yaris III 1.5 HSD',1500,100,3,5,2012,2017,45000.0000,1),(26,104,'Yaris III 1.0 VVT-i',1000,69,1,5,2012,2017,30000.0000,1),(27,50,'Civic 1.4i',1396,90,1,3,2001,2005,3200.0000,1),(28,50,'Civic 1.6i',1590,110,1,3,2001,2005,3300.0000,1),(29,50,'Civic 2.0i Type-R',1988,200,1,3,2001,2005,4000.0000,1),(30,50,'Civic 1.7 CDTi',1686,100,2,3,2001,2005,3500.0000,1),(31,50,'Civic 1.4i',1396,90,1,5,2001,2005,3300.0000,1),(32,50,'Civic 1.6i',1590,110,1,5,2001,2005,3500.0000,1),(33,50,'Civic 2.0i',1998,160,1,5,2001,2005,3900.0000,1),(34,50,'Civic 1.7 CDTi',1686,100,2,5,2001,2005,4100.0000,1),(35,50,'Civic Coupe 1.7',1668,120,2,2,2001,2004,4000.0000,1),(36,50,'Civic Coupe 1.7',1668,125,2,2,2001,2004,3800.0000,1),(37,50,'Civic 1.8i-VTEC',1798,140,1,5,2005,2012,14000.0000,1),(38,50,'Civic 2.2i-CDTi',2204,140,1,5,2005,2012,19000.0000,1),(39,50,'Civic 1.3i-DSi VTEC Hybrid',1339,95,1,4,2005,2012,16000.0000,1),(40,50,'Civic 1.3i-DSi VTEC IMA',1339,110,1,4,2005,2012,16400.0000,1),(41,50,'Civic 1.6 i-DTEC',1597,120,1,5,2005,2012,38000.0000,1),(42,105,'Golf 1.2 TSI BMT',1197,85,1,3,2012,2017,40000.0000,1),(43,105,'Golf 1.0 TSI BlueMotion',999,115,1,3,2015,2017,41500.0000,1),(44,105,'Golf 1.4 TSI BMT',1395,122,1,3,2012,2014,43900.0000,1),(45,105,'Golf 1.6 TDI BMT',1598,105,2,3,2012,2014,57000.0000,1),(46,105,'Golf 1.6 TDI BMT',1598,110,2,3,2012,2014,57000.0000,1),(47,105,'Golf 1.6 BlueTDI',1598,110,2,3,2012,2014,57000.0000,1),(48,105,'Golf 2.0 TDI BMT',1968,150,2,3,2012,2014,46000.0000,1),(49,105,'Golf 2.0 BlueTDI',1968,150,2,3,2012,2014,35000.0000,1),(50,105,'Golf 2.0 TDI BMT',1968,150,2,3,2012,2014,54100.0000,1),(51,105,'Golf 1.2 TSI BMT',1197,85,1,5,2012,2017,32000.0000,1),(52,105,'Golf 1.2 TSI BMT',1197,105,1,5,2012,2017,32000.0000,1),(53,105,'Golf 2.0 TDI BMT',1968,150,2,3,2012,2014,54100.0000,1),(54,105,'Golf 1.2 TSI BMT',1197,85,1,5,2012,2017,32000.0000,1),(55,105,'Golf 1.2 TSI BMT',1197,105,1,5,2012,2017,32000.0000,1);
/*!40000 ALTER TABLE `modifications` ENABLE KEYS */;
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
