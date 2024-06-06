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
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `idpartidas` int NOT NULL AUTO_INCREMENT,
  `torneo` int NOT NULL,
  `fecha` datetime NOT NULL,
  `equipo1` int NOT NULL,
  `equipo2` int NOT NULL,
  `resultado` enum('Pendiente','Equipo1_Ganó','Equipo2_Ganó','Empate') NOT NULL,
  PRIMARY KEY (`idpartidas`),
  KEY `partida_equipos_idx` (`equipo1`,`equipo2`),
  KEY `torneo_partida_idx` (`torneo`),
  KEY `partida_equipo2_idx` (`equipo2`),
  CONSTRAINT `partida_equipo1` FOREIGN KEY (`equipo1`) REFERENCES `sk_telecom_t1` (`idequipos`),
  CONSTRAINT `partida_equipo2` FOREIGN KEY (`equipo2`) REFERENCES `g2_esports` (`idequipo`),
  CONSTRAINT `torneo_partida` FOREIGN KEY (`torneo`) REFERENCES `torneos` (`idtorneos`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES (16,1,'2024-06-02 14:00:00',2,1,'Pendiente'),(17,1,'2024-06-03 15:30:00',2,1,'Equipo2_Ganó'),(18,1,'2024-06-05 12:45:00',2,1,'Equipo1_Ganó');
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 21:46:39
