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
-- Table structure for table `adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminuser` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `adminuser_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminuser`
--

LOCK TABLES `adminuser` WRITE;
/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` VALUES ('vincent.coleman451','Product Manager'),('vincent.evans976','Database Administrator'),('vincent.francis540','Content Moderator'),('vincent.gardner345','Data Analyst'),('vincent.graham415','System Administrator'),('vincent.guerrero1','Security Administrator'),('vincent.harris420','Quality Assurance'),('vincent.hawkins545','Technical Support Lead'),('vincent.howard369','Database Administrator'),('vincent.johnson387','System Administrator'),('vincent.maxwell143','Technical Support Lead'),('vincent.mccoy511','Content Moderator'),('vincent.nunez428','Technical Support Lead'),('vincent.padilla121','Quality Assurance'),('vincent.romero258','Data Analyst'),('vincent.sherman781','Data Analyst'),('vincent.stephens161','Product Manager'),('vincent.stevens417','Data Analyst'),('virginia.blair561','Security Administrator'),('virginia.byrd782','Quality Assurance'),('virginia.chavez795','Product Manager'),('virginia.clarke920','Security Administrator'),('virginia.crawford737','System Administrator'),('virginia.dixon58','Product Manager'),('virginia.edwards51','System Administrator'),('virginia.ford282','Content Moderator'),('virginia.jordan2','Technical Support Lead'),('virginia.kelly746','Customer Service Manager'),('virginia.mendoza403','Technical Support Lead'),('virginia.ramirez928','Product Manager'),('virginia.rowe891','Product Manager'),('virginia.shaw910','System Administrator'),('virginia.sims31','Database Administrator'),('virginia.strickland794','Quality Assurance'),('virginia.velasquez549','Customer Service Manager'),('walter.burke265','Security Administrator'),('walter.castro57','Content Moderator'),('walter.cohen3','System Administrator'),('walter.duran720','Content Moderator'),('walter.edwards511','User Support'),('walter.francis833','Quality Assurance'),('walter.gross57','Quality Assurance'),('walter.hardy718','Quality Assurance'),('walter.harmon66','Technical Support Lead'),('walter.holland690','System Administrator'),('walter.hubbard946','Data Analyst'),('walter.munoz593','Product Manager'),('walter.park612','Data Analyst'),('walter.rivas359','Technical Support Lead'),('walter.stone51','Quality Assurance'),('walter.washington546','Security Administrator'),('wayne.campos603','Security Administrator'),('wayne.deleon312','Customer Service Manager'),('wayne.dixon80','Product Manager'),('wayne.garner825','Content Moderator'),('wayne.henderson532','Customer Service Manager'),('wayne.park43','Quality Assurance'),('william.brady158','Product Manager'),('william.grant847','Product Manager'),('william.guerrero816','Quality Assurance'),('william.hill33','Content Moderator'),('william.hodges397','User Support'),('william.jones282','Technical Support Lead'),('william.osborne753','User Support'),('william.quinn847','Quality Assurance'),('william.watts753','System Administrator'),('willie.ayala766','Quality Assurance'),('willie.blair463','Product Manager'),('willie.bowman397','Content Moderator'),('willie.caldwell640','Content Moderator'),('willie.carlson589','User Support'),('willie.castaneda459','Database Administrator'),('willie.elliott419','Technical Support Lead'),('willie.green403','Quality Assurance'),('willie.larson866','Customer Service Manager'),('willie.mccoy28','Technical Support Lead'),('willie.mendoza393','User Support'),('willie.mills398','Quality Assurance'),('willie.moreno111','Database Administrator'),('willie.morgan451','Security Administrator'),('willie.reeves511','Product Manager'),('willie.richards668','System Administrator'),('willie.rivas435','Content Moderator'),('willie.saunders265','Content Moderator'),('willie.sims526','Customer Service Manager'),('zachary.barber526','System Administrator'),('zachary.burns22','Product Manager'),('zachary.chambers43','Content Moderator'),('zachary.christensen458','Product Manager'),('zachary.erickson255','Security Administrator'),('zachary.fox357','Security Administrator'),('zachary.fuller98','Security Administrator'),('zachary.jackson17','Content Moderator'),('zachary.jimenez664','Quality Assurance'),('zachary.marshall862','Content Moderator'),('zachary.miranda761','Security Administrator'),('zachary.perry679','User Support'),('zachary.robinson222','Database Administrator'),('zachary.schroeder112','System Administrator'),('zachary.silva562','Quality Assurance');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;
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
