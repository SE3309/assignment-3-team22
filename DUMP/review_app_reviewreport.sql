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
-- Table structure for table `reviewreport`
--

DROP TABLE IF EXISTS `reviewreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewreport` (
  `reportEntryID` int NOT NULL AUTO_INCREMENT,
  `reportID` int NOT NULL,
  `reviewID` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `filed_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `report_reason` varchar(255) NOT NULL,
  PRIMARY KEY (`reportEntryID`),
  KEY `reportID` (`reportID`),
  KEY `reviewID` (`reviewID`),
  KEY `username` (`username`),
  CONSTRAINT `reviewreport_ibfk_1` FOREIGN KEY (`reportID`) REFERENCES `report` (`reportID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviewreport_ibfk_2` FOREIGN KEY (`reviewID`) REFERENCES `review` (`reviewID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `reviewreport_ibfk_3` FOREIGN KEY (`username`) REFERENCES `generaluser` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewreport`
--

LOCK TABLES `reviewreport` WRITE;
/*!40000 ALTER TABLE `reviewreport` DISABLE KEYS */;
INSERT INTO `reviewreport` VALUES (1,1,2651,'kevin.rivera5','2025-10-13 00:00:00','This review contains spam and promotional content'),(2,2,1772,'pamela.bishop796','2025-06-05 00:00:00','Inappropriate language and offensive content detected'),(3,3,1334,'jose.sherman957','2025-08-19 00:00:00','Suspected fake review with no genuine purchase history'),(4,4,441,'keith.chang21','2025-03-14 00:00:00','Review contains offensive and abusive language'),(5,5,2445,'elizabeth.duncan738','2025-09-11 00:00:00','Misleading information that may deceive other customers'),(6,6,2662,'john.zimmerman471','2025-07-01 00:00:00','Duplicate review posted multiple times'),(7,7,695,'heather.bush525','2025-09-03 00:00:00','Appears to be an attack from a competitor'),(8,8,436,'katherine.stone396','2025-02-06 00:00:00','Contains personal information that should be removed'),(9,9,317,'janet.bell7','2025-05-28 00:00:00','Copyright violation with copied content'),(10,10,1224,'larry.cunningham289','2025-05-02 00:00:00','Review is off-topic and not about the product'),(11,11,2857,'cheryl.gilbert695','2025-01-22 00:00:00','This review contains spam and promotional content'),(12,12,314,'michelle.reese356','2025-09-27 00:00:00','Inappropriate language and offensive content detected'),(13,13,1193,'gary.stewart714','2025-10-15 00:00:00','Suspected fake review with no genuine purchase history'),(14,14,592,'douglas.henry996','2025-11-01 00:00:00','Review contains offensive and abusive language'),(15,15,2920,'pamela.owens366','2025-05-20 00:00:00','Misleading information that may deceive other customers'),(16,16,977,'carolyn.diaz943','2025-09-26 00:00:00','Duplicate review posted multiple times'),(17,17,2583,'mark.powell533','2025-01-28 00:00:00','Appears to be an attack from a competitor'),(18,18,2594,'gabriel.jennings342','2025-07-11 00:00:00','Contains personal information that should be removed'),(19,19,1020,'nicholas.pearson569','2025-02-19 00:00:00','Copyright violation with copied content'),(20,20,2368,'helen.mcdaniel767','2025-02-03 00:00:00','Review is off-topic and not about the product');
/*!40000 ALTER TABLE `reviewreport` ENABLE KEYS */;
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
