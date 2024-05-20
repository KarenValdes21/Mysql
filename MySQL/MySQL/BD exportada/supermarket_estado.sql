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
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Estado` text,
  `idUsuarioCrea` int DEFAULT NULL,
  `idUsuarioModifica` int DEFAULT NULL,
  `fechaCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaModifica` timestamp NULL DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT '1',
  `idPais` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_estado_pais` (`idPais`),
  KEY `FK_EstadoUsuarioModifica` (`idUsuarioModifica`),
  CONSTRAINT `fk_estado_pais` FOREIGN KEY (`idPais`) REFERENCES `pais` (`id`),
  CONSTRAINT `FK_EstadoUsuarioModifica` FOREIGN KEY (`idUsuarioModifica`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Kentucky',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(2,'California',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(3,'Florida',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(4,'North Carolina',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(5,'Washington',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(6,'Texas',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(7,'Wisconsin',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(8,'Utah',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(9,'Nebraska',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(10,'Pennsylvania',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(11,'Illinois',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(12,'Minnesota',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(13,'Michigan',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(14,'Delaware',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(15,'Indiana',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(16,'New York',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(17,'Arizona',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(18,'Virginia',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(19,'Tennessee',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(20,'Alabama',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(21,'South Carolina',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(22,'Oregon',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(23,'Colorado',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(24,'Iowa',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(25,'Ohio',1,NULL,'2024-05-13 07:04:26',NULL,1,1),(26,'Missouri',1,NULL,'2024-05-13 07:04:26',NULL,1,1);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  0:26:11
