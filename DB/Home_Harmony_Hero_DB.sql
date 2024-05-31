CREATE DATABASE  IF NOT EXISTS `home_harmony_hero` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `home_harmony_hero`;
-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: home_harmony_hero
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
-- Table structure for table `Roommates`
--

DROP TABLE IF EXISTS `Roommates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Roommates` (
  `roommateId` int NOT NULL AUTO_INCREMENT,
  `roommateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roommateId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roommates`
--

LOCK TABLES `Roommates` WRITE;
/*!40000 ALTER TABLE `Roommates` DISABLE KEYS */;
INSERT INTO `Roommates` VALUES (1,'Maximilian');
/*!40000 ALTER TABLE `Roommates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingList`
--

DROP TABLE IF EXISTS `ShoppingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ShoppingList` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(300) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `addedBy` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `addedBy` (`addedBy`),
  CONSTRAINT `shoppinglist_ibfk_1` FOREIGN KEY (`addedBy`) REFERENCES `Roommates` (`roommateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingList`
--

LOCK TABLES `ShoppingList` WRITE;
/*!40000 ALTER TABLE `ShoppingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tasks`
--

DROP TABLE IF EXISTS `Tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tasks` (
  `taskId` int NOT NULL AUTO_INCREMENT,
  `taskName` varchar(400) DEFAULT NULL,
  `assignedTo` int DEFAULT NULL,
  `taskStatus` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`taskId`),
  KEY `assignedTo` (`assignedTo`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assignedTo`) REFERENCES `Roommates` (`roommateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tasks`
--

LOCK TABLES `Tasks` WRITE;
/*!40000 ALTER TABLE `Tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-31 17:35:12
