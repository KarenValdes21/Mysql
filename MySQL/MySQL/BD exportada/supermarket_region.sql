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
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Region` text,
  `idUsuarioCrea` int DEFAULT NULL,
  `idUsuarioModifica` int DEFAULT NULL,
  `fechaCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaModifica` timestamp NULL DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT '1',
  `idCiudad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_RegionUsuarioCrea` (`idUsuarioCrea`),
  KEY `IX_Region` (`id`),
  KEY `FK_RegionUsuarioModifica` (`idUsuarioModifica`),
  KEY `fk_region_ciudad` (`idCiudad`),
  CONSTRAINT `fk_region_ciudad` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`id`),
  CONSTRAINT `FK_RegionUsuarioCrea` FOREIGN KEY (`idUsuarioCrea`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FK_RegionUsuarioModifica` FOREIGN KEY (`idUsuarioModifica`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (2,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,1),(3,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,2),(4,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,3),(5,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,4),(6,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,5),(7,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,6),(8,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,7),(9,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,8),(10,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,9),(11,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,10),(12,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,11),(13,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,12),(14,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,13),(15,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,14),(16,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,15),(17,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,16),(18,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,17),(19,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,18),(20,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,19),(21,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,20),(22,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,21),(23,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,22),(24,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,23),(25,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,24),(26,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,25),(27,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,26),(28,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,27),(29,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,28),(30,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,29),(31,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,30),(32,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,31),(33,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,32),(34,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,33),(35,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,34),(36,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,35),(37,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,36),(38,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,37),(39,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,38),(40,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,39),(41,'South',1,NULL,'2024-05-13 07:13:47',NULL,1,40),(42,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,41),(43,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,42),(44,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,43),(45,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,44),(46,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,45),(47,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,46),(48,'East',1,NULL,'2024-05-13 07:13:47',NULL,1,47),(49,'Central',1,NULL,'2024-05-13 07:13:47',NULL,1,48),(50,'West',1,NULL,'2024-05-13 07:13:47',NULL,1,49);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  0:26:07
