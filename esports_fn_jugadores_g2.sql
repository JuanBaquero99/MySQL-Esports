-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: esports_fn
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
-- Table structure for table `jugadores_g2`
--

DROP TABLE IF EXISTS `jugadores_g2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores_g2` (
  `ID_jugador` int NOT NULL AUTO_INCREMENT,
  `Alias` varchar(50) NOT NULL,
  `Nombre_real` varchar(100) NOT NULL,
  `ID_equipo` int NOT NULL,
  `Rol` varchar(50) NOT NULL,
  `Estadisticas` json DEFAULT NULL,
  PRIMARY KEY (`ID_jugador`),
  UNIQUE KEY `Alias` (`Alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores_g2`
--

LOCK TABLES `jugadores_g2` WRITE;
/*!40000 ALTER TABLE `jugadores_g2` DISABLE KEYS */;
INSERT INTO `jugadores_g2` VALUES (1,'Broken Blade','Sergen Çelik',2,'Toplaner','{\"kills\": 0, \"deaths\": 0, \"assists\": 0}'),(2,'Yike','Martin Sudelin',2,'Jungler','{\"kills\": 0, \"deaths\": 0, \"assists\": 0}'),(3,'Caps','Rasmus Winther',2,'Midlaner','{\"kills\": 0, \"deaths\": 0, \"assists\": 0}'),(4,'Hans Sama','Steven Liv',2,'AD Carry','{\"kills\": 0, \"deaths\": 0, \"assists\": 0}'),(5,'Mikyx','Mihael Mehle',2,'Support','{\"kills\": 0, \"deaths\": 0, \"assists\": 0}');
/*!40000 ALTER TABLE `jugadores_g2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 21:46:40
