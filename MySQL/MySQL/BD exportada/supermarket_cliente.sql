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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClienteID` varchar(30) DEFAULT NULL,
  `idUsuarioCrea` int DEFAULT NULL,
  `idUsuarioModifica` int DEFAULT NULL,
  `fechaCrea` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaModifica` timestamp NULL DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT '1',
  `idSegmento` int DEFAULT NULL,
  `idRegion` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_region` (`idRegion`),
  KEY `fk_segmento` (`idSegmento`),
  KEY `FK_ClienteUsuarioCrea` (`idUsuarioCrea`),
  KEY `FK_ClienteUsuarioModifica` (`idUsuarioModifica`),
  KEY `IX_Cliente` (`id`),
  CONSTRAINT `fk_cliente_region` FOREIGN KEY (`idRegion`) REFERENCES `region` (`id`),
  CONSTRAINT `FK_ClienteUsuarioCrea` FOREIGN KEY (`idUsuarioCrea`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FK_ClienteUsuarioModifica` FOREIGN KEY (`idUsuarioModifica`) REFERENCES `usuario` (`id`),
  CONSTRAINT `fk_segmento` FOREIGN KEY (`idSegmento`) REFERENCES `segmento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (3,'CG-12520',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(4,'DV-13045',1,NULL,'2024-05-13 07:37:49',NULL,1,2,3),(5,'SO-20335',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(6,'BH-11710',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(7,'AA-10480',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(8,'IM-15070',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(9,'HP-14815',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(10,'PK-19075',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(11,'AG-10270',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(12,'ZD-21925',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(13,'KB-16585',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(14,'SF-20065',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(15,'EB-13870',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(16,'EH-13945',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(17,'TB-21520',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(18,'MA-17560',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(19,'GH-14485',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(20,'SN-20710',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(21,'LC-16930',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(22,'RA-19885',1,NULL,'2024-05-13 07:37:49',NULL,1,2,3),(23,'ES-14080',1,NULL,'2024-05-13 07:37:49',NULL,1,2,2),(24,'ON-18715',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(25,'PO-18865',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(26,'LH-16900',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(27,'DP-13000',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(28,'JM-15265',1,NULL,'2024-05-13 07:37:49',NULL,1,2,12),(29,'TB-21055',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(30,'KM-16720',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(31,'PS-18970',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(32,'BS-11590',1,NULL,'2024-05-13 07:37:49',NULL,1,2,3),(33,'KD-16270',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(34,'HM-14980',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(35,'TB-21520',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(36,'JE-15745',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(37,'KB-16600',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(38,'JE-15745',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(39,'SC-20770',1,NULL,'2024-05-13 07:37:49',NULL,1,2,2),(40,'DN-13690',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(41,'JC-16105',1,NULL,'2024-05-13 07:37:49',NULL,1,2,2),(42,'CS-12400',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(43,'PO-18865',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(44,'PG-18895',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(45,'GM-14455',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(46,'JS-15685',1,NULL,'2024-05-13 07:37:49',NULL,1,2,3),(47,'KB-16315',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(48,'RB-19705',1,NULL,'2024-05-13 07:37:49',NULL,1,3,3),(49,'PN-18775',1,NULL,'2024-05-13 07:37:49',NULL,1,3,12),(50,'KD-16345',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(51,'ER-13855',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(52,'RB-19465',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(53,'GZ-14470',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(54,'LC-16870',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(55,'JM-15250',1,NULL,'2024-05-13 07:37:49',NULL,1,1,2),(56,'PA-19060',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(57,'CV-12805',1,NULL,'2024-05-13 07:37:49',NULL,1,2,12),(58,'CL-12565',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(59,'RC-19960',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(60,'DK-13090',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(61,'GG-14650',1,NULL,'2024-05-13 07:37:49',NULL,1,2,2),(62,'SC-20725',1,NULL,'2024-05-13 07:37:49',NULL,1,1,12),(63,'AD-10180',1,NULL,'2024-05-13 07:37:49',NULL,1,3,7),(64,'PF-19165',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(65,'TS-21610',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(66,'LS-16975',1,NULL,'2024-05-13 07:37:49',NULL,1,3,3),(67,'DW-13585',1,NULL,'2024-05-13 07:37:49',NULL,1,2,12),(68,'LC-16885',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(69,'JD-15895',1,NULL,'2024-05-13 07:37:49',NULL,1,2,12),(70,'SH-19975',1,NULL,'2024-05-13 07:37:49',NULL,1,2,3),(71,'SG-20080',1,NULL,'2024-05-13 07:37:49',NULL,1,1,7),(72,'HA-14920',1,NULL,'2024-05-13 07:37:49',NULL,1,1,3),(73,'MG-17680',1,NULL,'2024-05-13 07:37:49',NULL,1,3,12),(74,'JE-16165',1,NULL,'2024-05-13 07:37:49',NULL,1,2,7),(75,'TW-21025',1,NULL,'2024-05-13 07:37:49',NULL,1,3,3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14  0:26:06
