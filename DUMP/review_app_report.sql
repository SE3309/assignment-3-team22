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
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `reportID` int NOT NULL AUTO_INCREMENT,
  `reportType` varchar(50) NOT NULL,
  `description` text,
  `status` varchar(50) DEFAULT 'Pending',
  `adminUsername` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`reportID`),
  KEY `adminUsername` (`adminUsername`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`adminUsername`) REFERENCES `adminuser` (`username`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'Spam','Automated system detected potential policy violation.','Pending',NULL),(2,'Inappropriate Content','Multiple users have flagged this content for review.','Pending','vincent.harris420'),(3,'Fake Review','This review violates our community guidelines and requires immediate attention.','Pending','zachary.fuller98'),(4,'Offensive Language',NULL,'Pending','vincent.stevens417'),(5,'Misleading Information','Automated system detected potential policy violation.','Pending',NULL),(6,'Duplicate Review','Automated system detected potential policy violation.','Pending','vincent.graham415'),(7,'Competitor Attack','Automated system detected potential policy violation.','Pending',NULL),(8,'Personal Information','Multiple users have flagged this content for review.','Pending','virginia.crawford737'),(9,'Copyright Violation','Multiple users have flagged this content for review.','Pending','vincent.maxwell143'),(10,'Off-Topic','Multiple users have flagged this content for review.','Pending','william.brady158'),(11,'Spam','Automated system detected potential policy violation.','Pending','walter.castro57'),(12,'Inappropriate Content',NULL,'Pending','willie.carlson589'),(13,'Fake Review',NULL,'Pending','willie.saunders265'),(14,'Offensive Language',NULL,'Pending','willie.reeves511'),(15,'Misleading Information','This review violates our community guidelines and requires immediate attention.','Pending','walter.stone51'),(16,'Duplicate Review','This review violates our community guidelines and requires immediate attention.','Pending','walter.harmon66'),(17,'Competitor Attack','Automated system detected potential policy violation.','Pending','vincent.graham415'),(18,'Personal Information',NULL,'Pending','william.grant847'),(19,'Copyright Violation',NULL,'Pending','vincent.guerrero1'),(20,'Off-Topic','This review violates our community guidelines and requires immediate attention.','Pending',NULL);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-21 22:12:11
