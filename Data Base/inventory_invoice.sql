-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invid` int NOT NULL,
  `cid` int NOT NULL,
  `soldby` int NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` double NOT NULL,
  PRIMARY KEY (`invid`),
  KEY `cid_idx` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `customers` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,30,7,'2020-04-19 12:28:07',2000),(2,30,7,'2020-04-19 12:31:22',6799.96),(3,30,7,'2020-04-19 12:31:31',3399.98),(4,31,7,'2020-04-19 13:47:35',15308.91),(5,31,7,'2020-04-19 14:37:10',5112.47),(6,30,7,'2020-04-21 03:12:44',3008),(7,30,7,'2020-04-21 17:14:19',14);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19 18:48:28
