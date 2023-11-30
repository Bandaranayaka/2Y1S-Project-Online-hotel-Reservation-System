-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: online_hotel_reservation
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `PaymentEmail` varchar(255) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `CardType` varchar(45) DEFAULT NULL,
  `CardNumber` varchar(255) DEFAULT NULL,
  `CardExp` varchar(255) DEFAULT NULL,
  `CardCVV` int DEFAULT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (4,'sayu','sayu@gmail.com','srilanka','kiribathgoda','visa','12345678','09/08',234),(5,'sayu','sayu@gmail.com','sri lanka','kiribathgoda','visa','12344567789','09/08',234),(6,'sliit','sliit@gmai.com','srilanka','kiribathgoda','visa','12344567','09/09jnn',555),(7,'test1','test1@gmai.com','srilanka','kiribathgoda','visa','12345567','09/07',3445);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `RID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CheckIn` date DEFAULT NULL,
  `CheckOut` date DEFAULT NULL,
  `Guests` int DEFAULT NULL,
  `RoomType` varchar(255) DEFAULT NULL,
  `Rooms` int DEFAULT NULL,
  `Breakfast` tinyint DEFAULT NULL,
  `WIFI` tinyint DEFAULT NULL,
  `Parking` tinyint DEFAULT NULL,
  `Pool` tinyint DEFAULT NULL,
  `Spa` tinyint DEFAULT NULL,
  `loyalty` tinyint DEFAULT NULL,
  PRIMARY KEY (`RID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (12,'sayu','sayu@gmail.com','2023-10-11','2023-10-28',1,'standard',1,1,1,0,0,0,1),(13,'sayu','sayu@gmail.com','2023-10-05','2023-10-15',2,'deluxe',1,1,1,1,0,0,1),(14,'sliit','sliit@gmai.com','2023-10-04','2023-10-15',1,'suite',2,1,1,0,0,0,1),(15,'test1','test1@gmai.com','2023-10-05','2023-10-09',1,'suite',1,0,0,1,1,1,1),(17,'sayu','sayu@gmail.com','2023-10-19','2023-10-31',2,'standard',1,1,1,0,0,0,1),(18,'sayu','sayu@gmail.com','2023-10-11','2023-10-22',0,'standard',2,1,1,0,0,0,1),(22,'Name','name@gmail.com','2023-10-10','2023-10-24',5,'standard',4,1,1,0,0,0,1),(23,'Name','name@gmail.com','2023-10-06','2023-10-25',4,'standard',2,1,1,0,0,0,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(255) DEFAULT NULL,
  `UserPassword` varchar(100) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (15,'test1@gmai.com','Te@1','test1'),(16,'pass3@gmail.com','Pa@3','pass3'),(17,'sayu@gmail.com','Sa@1','sayu'),(18,'e@gmail.com','El#3','e'),(19,'a@gmail.com','aB@2','Sayu'),(20,'l@gmail.com','Ll@1','ll'),(21,'test7@gmail.com','Te@74','test7'),(22,'test9@gmail.com','Te@9','test9'),(23,'name@gmail.com','Na@1','Name'),(24,'sheelani@gmail.com','Sh@1','sheelani');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 19:21:43
