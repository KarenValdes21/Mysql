-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Ciudad` text,
  `idUsuarioCrea` int DEFAULT NULL,
  `idUsuarioModifica` int DEFAULT NULL,
  `fechaCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaModifica` timestamp NULL DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT '1',
  `idEstado` int DEFAULT NULL,
  `idRegion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ciudad_estado` (`idEstado`),
  KEY `fk_ciudad_region` (`idRegion`),
  KEY `FK_CiudadUsuarioModifica` (`idUsuarioModifica`),
  KEY `IX_Ciudad` (`id`),
  CONSTRAINT `fk_ciudad_estado` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`id`),
  CONSTRAINT `FK_CiudadUsuarioModifica` FOREIGN KEY (`idUsuarioModifica`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Henderson',1,NULL,'2024-05-13 07:09:31',NULL,1,1,NULL),(2,'Los Angeles',1,NULL,'2024-05-13 07:09:31',NULL,1,2,NULL),(3,'Fort Lauderdale',1,NULL,'2024-05-13 07:09:31',NULL,1,3,NULL),(4,'Concord',1,NULL,'2024-05-13 07:09:31',NULL,1,4,NULL),(5,'Seattle',1,NULL,'2024-05-13 07:09:31',NULL,1,5,NULL),(6,'Fort Worth',1,NULL,'2024-05-13 07:09:31',NULL,1,6,NULL),(7,'Madison',1,NULL,'2024-05-13 07:09:31',NULL,1,7,NULL),(8,'West Jordan',1,NULL,'2024-05-13 07:09:31',NULL,1,8,NULL),(9,'San Francisco',1,NULL,'2024-05-13 07:09:31',NULL,1,2,NULL),(10,'Fremont',1,NULL,'2024-05-13 07:09:31',NULL,1,9,NULL),(11,'Philadelphia',1,NULL,'2024-05-13 07:09:31',NULL,1,10,NULL),(12,'Orem',1,NULL,'2024-05-13 07:09:31',NULL,1,8,NULL),(13,'Houston',1,NULL,'2024-05-13 07:09:31',NULL,1,6,NULL),(14,'Richardson',1,NULL,'2024-05-13 07:09:31',NULL,1,6,NULL),(15,'Naperville',1,NULL,'2024-05-13 07:09:31',NULL,1,11,NULL),(16,'Melbourne',1,NULL,'2024-05-13 07:09:31',NULL,1,3,NULL),(17,'Eagan',1,NULL,'2024-05-13 07:09:31',NULL,1,12,NULL),(18,'Westland',1,NULL,'2024-05-13 07:09:31',NULL,1,13,NULL),(19,'Dover',1,NULL,'2024-05-13 07:09:31',NULL,1,14,NULL),(20,'New Albany',1,NULL,'2024-05-13 07:09:31',NULL,1,15,NULL),(21,'New York City',1,NULL,'2024-05-13 07:09:31',NULL,1,16,NULL),(22,'Troy',1,NULL,'2024-05-13 07:09:31',NULL,1,16,NULL),(23,'Chicago',1,NULL,'2024-05-13 07:09:31',NULL,1,11,NULL),(24,'Gilbert',1,NULL,'2024-05-13 07:09:31',NULL,1,17,NULL),(25,'Springfield',1,NULL,'2024-05-13 07:09:31',NULL,1,18,NULL),(26,'Jackson',1,NULL,'2024-05-13 07:09:31',NULL,1,13,NULL),(27,'Memphis',1,NULL,'2024-05-13 07:09:31',NULL,1,19,NULL),(28,'Decatur',1,NULL,'2024-05-13 07:09:31',NULL,1,20,NULL),(29,'Durham',1,NULL,'2024-05-13 07:09:31',NULL,1,4,NULL),(30,'Columbia',1,NULL,'2024-05-13 07:09:31',NULL,1,21,NULL),(31,'Rochester',1,NULL,'2024-05-13 07:09:31',NULL,1,12,NULL),(32,'Minneapolis',1,NULL,'2024-05-13 07:09:31',NULL,1,12,NULL),(33,'Portland',1,NULL,'2024-05-13 07:09:31',NULL,1,22,NULL),(34,'Saint Paul',1,NULL,'2024-05-13 07:09:31',NULL,1,12,NULL),(35,'Aurora',1,NULL,'2024-05-13 07:09:31',NULL,1,23,NULL),(36,'Charlotte',1,NULL,'2024-05-13 07:09:31',NULL,1,4,NULL),(37,'Orland Park',1,NULL,'2024-05-13 07:09:31',NULL,1,11,NULL),(38,'Urbandale',1,NULL,'2024-05-13 07:09:31',NULL,1,24,NULL),(39,'Columbus',1,NULL,'2024-05-13 07:09:31',NULL,1,25,NULL),(40,'Bristol',1,NULL,'2024-05-13 07:09:31',NULL,1,19,NULL),(41,'Wilmington',1,NULL,'2024-05-13 07:09:31',NULL,1,14,NULL),(42,'Bloomington',1,NULL,'2024-05-13 07:09:31',NULL,1,11,NULL),(43,'Phoenix',1,NULL,'2024-05-13 07:09:31',NULL,1,17,NULL),(44,'Roseville',1,NULL,'2024-05-13 07:09:31',NULL,1,2,NULL),(45,'Independence',1,NULL,'2024-05-13 07:09:31',NULL,1,26,NULL),(46,'Pasadena',1,NULL,'2024-05-13 07:09:31',NULL,1,2,NULL),(47,'Newark',1,NULL,'2024-05-13 07:09:31',NULL,1,25,NULL),(48,'Franklin',1,NULL,'2024-05-13 07:09:31',NULL,1,7,NULL),(49,'Scottsdale',1,NULL,'2024-05-13 07:09:31',NULL,1,17,NULL);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  0:26:04
