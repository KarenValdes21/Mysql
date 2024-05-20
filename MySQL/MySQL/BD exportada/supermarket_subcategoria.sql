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
-- Table structure for table `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Subcategoria` varchar(40) DEFAULT NULL,
  `idUsuarioCrea` int DEFAULT NULL,
  `idUsuarioModifica` int DEFAULT NULL,
  `fechaCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaModifica` timestamp NULL DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT '1',
  `idCategoria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_categoria` (`idCategoria`),
  KEY `FK_SubcategoriaUsuarioModifica` (`idUsuarioModifica`),
  KEY `IX_Subcategoria` (`id`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `FK_SubcategoriaUsuarioModifica` FOREIGN KEY (`idUsuarioModifica`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategoria`
--

LOCK TABLES `subcategoria` WRITE;
/*!40000 ALTER TABLE `subcategoria` DISABLE KEYS */;
INSERT INTO `subcategoria` VALUES (1,'Bookcases',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(2,'Chairs',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(3,'Labels',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(4,'Tables',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(5,'Storage',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(6,'Furnishings',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(7,'Art',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(8,'Phones',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(9,'Binders',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(10,'Appliances',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(11,'Paper',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(12,'Accessories',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(13,'Envelopes',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(14,'Fasteners',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL),(15,'Supplies',1,NULL,'2024-05-13 07:30:47',NULL,1,NULL);
/*!40000 ALTER TABLE `subcategoria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  0:26:14
