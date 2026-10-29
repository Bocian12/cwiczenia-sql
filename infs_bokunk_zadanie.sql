-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: infs_bokunk
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `zadanie`
--

DROP TABLE IF EXISTS `zadanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zadanie` (
  `id_zadania` int NOT NULL AUTO_INCREMENT,
  `nazwa_zadania` varchar(150) NOT NULL,
  `priorytet` enum('normalny','wysoki','niski') DEFAULT 'normalny',
  `opis` varchar(2000) DEFAULT NULL,
  `pracownik` int DEFAULT NULL,
  `projekt` int DEFAULT NULL,
  PRIMARY KEY (`id_zadania`),
  KEY `pracownik` (`pracownik`),
  KEY `projekt` (`projekt`),
  CONSTRAINT `pracownik` FOREIGN KEY (`pracownik`) REFERENCES `pracownik` (`id_pracownika`),
  CONSTRAINT `zadanie_ibfk_1` FOREIGN KEY (`projekt`) REFERENCES `projekt` (`id_projektu`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zadanie`
--

LOCK TABLES `zadanie` WRITE;
/*!40000 ALTER TABLE `zadanie` DISABLE KEYS */;
INSERT INTO `zadanie` VALUES (1,'sprzatanie','niski','',1,1),(2,'naprawa maszyny do kawy','wysoki','maszyna do kawy nie działa, trzeba naprawić',2,2),(3,'naucz studentów','normalny','',3,2);
/*!40000 ALTER TABLE `zadanie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-29 16:59:43
