-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: review_app
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `companyID` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(255) NOT NULL,
  `industry` varchar(50) NOT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'TechVision Corp','Electronics'),(2,'GlobalElectronics Inc','Consumer Electronics'),(3,'HomeComfort Solutions','Home Appliances'),(4,'ModernLiving Designs','Furniture'),(5,'SmartHome Technologies','Smart Home'),(6,'PremierAppliances Ltd','Kitchen Appliances'),(7,'InnovativeTech Systems','Technology'),(8,'UrbanFurniture Co','Office Furniture'),(9,'EliteElectronics Group','Electronics'),(10,'ComfortZone Products','Home Appliances'),(11,'FutureTech Innovations','Technology'),(12,'LuxuryLiving Brands','Furniture'),(13,'SmartSolutions Inc','Smart Home'),(14,'QualityHome Essentials','Home Goods'),(15,'TechPro Industries','Electronics'),(16,'HomeEssentials Direct','Home Appliances'),(17,'ModernTech Solutions','Technology'),(18,'PremiumLiving Furniture','Furniture'),(19,'InnovateFurniture Design','Office Furniture'),(20,'SmartElectronics Corp','Consumer Electronics'),(21,'GlobalHome Products','Home Goods'),(22,'UrbanTech Ventures','Technology'),(23,'EliteAppliances Inc','Kitchen Appliances'),(24,'ComfortHome Systems','Home Appliances'),(25,'VisionElectronics Ltd','Electronics'),(26,'TechMasters Group','Technology'),(27,'HomePro Solutions','Home Goods'),(28,'ModernAppliances Co','Kitchen Appliances'),(29,'SmartLiving Technologies','Smart Home'),(30,'QualityElectronics Inc','Consumer Electronics'),(31,'PremierTech Industries','Technology'),(32,'UrbanLiving Designs','Furniture'),(33,'InnovateSmart Systems','Smart Home'),(34,'EliteFurniture Group','Office Furniture'),(35,'GlobalTech Ventures','Technology'),(36,'FutureHome Innovations','Home Appliances'),(37,'LuxuryElectronics Ltd','Audio Equipment'),(38,'ComfortTech Solutions','Electronics'),(39,'HomeInnovations Inc','Home Goods'),(40,'SmartAppliances Direct','Kitchen Appliances'),(41,'ModernElectronics Corp','Consumer Electronics'),(42,'TechElite Systems','Technology'),(43,'PremiumHome Designs','Furniture'),(44,'UrbanAppliances Co','Kitchen Appliances'),(45,'QualityFurniture Ltd','Office Furniture'),(46,'GlobalSmart Technologies','Smart Home'),(47,'VisionHome Products','Home Goods'),(48,'EliteTech Industries','Technology'),(49,'InnovateLiving Brands','Furniture'),(50,'ComfortElectronics Inc','Electronics'),(51,'SmartFurniture Design','Office Furniture'),(52,'TechWorld Ventures','Technology'),(53,'HomeVision Solutions','Home Appliances'),(54,'ModernSmart Systems','Smart Home'),(55,'PremierElectronics Corp','Consumer Electronics'),(56,'UrbanHome Essentials','Home Goods'),(57,'QualityTech Group','Technology'),(58,'GlobalAppliances Inc','Kitchen Appliances'),(59,'FutureFurniture Co','Furniture'),(60,'LuxuryTech Industries','Technology'),(61,'InnovateHome Products','Home Goods'),(62,'EliteSmart Solutions','Smart Home'),(63,'ComfortFurniture Ltd','Office Furniture'),(64,'SmartPro Technologies','Technology'),(65,'TechLiving Innovations','Electronics'),(66,'HomeElite Brands','Home Appliances'),(67,'ModernHome Designs','Furniture'),(68,'PremiumElectronics Inc','Consumer Electronics'),(69,'UrbanSmart Systems','Smart Home'),(70,'QualityAppliances Direct','Kitchen Appliances'),(71,'GlobalFurniture Group','Office Furniture'),(72,'VisionTech Ventures','Technology'),(73,'InnovateElectronics Corp','Electronics'),(74,'EliteHome Solutions','Home Goods'),(75,'FutureSmart Industries','Smart Home'),(76,'ComfortAppliances Ltd','Kitchen Appliances'),(77,'LuxuryHome Designs','Furniture'),(78,'SmartTech Systems','Technology'),(79,'TechFurniture Co','Office Furniture'),(80,'HomeSmart Innovations','Smart Home'),(81,'ModernFurniture Ltd','Furniture'),(82,'PremierHome Products','Home Goods'),(83,'UrbanElectronics Inc','Consumer Electronics'),(84,'QualitySmart Technologies','Smart Home'),(85,'GlobalLiving Brands','Furniture'),(86,'InnovateTech Corp','Technology'),(87,'EliteAppliances Direct','Kitchen Appliances'),(88,'VisionFurniture Group','Office Furniture'),(89,'FutureElectronics Ltd','Electronics'),(90,'ComfortSmart Systems','Smart Home'),(91,'LuxuryAppliances Inc','Kitchen Appliances'),(92,'SmartHome Plus','Smart Home'),(93,'TechAppliances Co','Kitchen Appliances'),(94,'HomeElectronics Group','Consumer Electronics'),(95,'ModernLiving Plus','Furniture'),(96,'PremiumFurniture Ltd','Office Furniture'),(97,'UrbanTech Plus','Technology'),(98,'QualityHome Plus','Home Goods'),(99,'GlobalElectronics Plus','Electronics'),(100,'InnovateSmart Plus','Smart Home'),(101,'EliteLiving Designs','Furniture'),(102,'FutureTech Plus','Technology'),(103,'ComfortHome Plus','Home Appliances'),(104,'VisionElectronics Plus','Consumer Electronics'),(105,'LuxuryFurniture Inc','Office Furniture'),(106,'SmartElectronics Plus','Electronics'),(107,'TechHome Systems','Home Goods'),(108,'ModernTech Plus','Technology'),(109,'PremierFurniture Plus','Furniture'),(110,'UrbanAppliances Plus','Kitchen Appliances'),(111,'QualityElectronics Plus','Consumer Electronics'),(112,'GlobalTech Plus','Technology'),(113,'InnovateHome Plus','Home Goods'),(114,'EliteFurniture Plus','Office Furniture'),(115,'FutureLiving Brands','Furniture'),(116,'ComfortTech Plus','Technology'),(117,'VisionAppliances Ltd','Kitchen Appliances'),(118,'LuxuryElectronics Plus','Audio Equipment'),(119,'SmartAppliances Plus','Kitchen Appliances'),(120,'TechSmart Systems','Smart Home'),(121,'HomeAppliances Plus','Kitchen Appliances'),(122,'ModernElectronics Plus','Consumer Electronics'),(123,'PremiumTech Industries','Technology'),(124,'UrbanFurniture Plus','Office Furniture'),(125,'QualityLiving Designs','Furniture'),(126,'GlobalHome Plus','Home Goods'),(127,'InnovateElectronics Plus','Electronics'),(128,'EliteTech Plus','Technology'),(129,'FutureHome Plus','Home Appliances'),(130,'ComfortElectronics Plus','Electronics'),(131,'VisionSmart Technologies','Smart Home'),(132,'LuxuryTech Plus','Technology'),(133,'SmartLiving Plus','Smart Home'),(134,'TechElectronics Group','Electronics'),(135,'HomeFurniture Plus','Office Furniture'),(136,'ModernAppliances Plus','Kitchen Appliances'),(137,'PremierSmart Systems','Smart Home'),(138,'UrbanHome Plus','Home Goods'),(139,'QualityFurniture Plus','Furniture'),(140,'GlobalSmart Plus','Smart Home'),(141,'InnovateFurniture Plus','Office Furniture'),(142,'EliteElectronics Plus','Consumer Electronics'),(143,'FutureTech Elite','Technology'),(144,'ComfortAppliances Plus','Kitchen Appliances'),(145,'NextGen Electronics','Electronics'),(146,'Apex Home Solutions','Home Appliances'),(147,'Horizon Furniture','Furniture'),(148,'Zenith Technologies','Technology'),(149,'Pinnacle Smart Home','Smart Home'),(150,'Summit Appliances','Kitchen Appliances');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-21 22:12:12
