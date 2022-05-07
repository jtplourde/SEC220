-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(10) DEFAULT NULL,
  `class_subject` varchar(10) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_roster`
--

DROP TABLE IF EXISTS `class_roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_roster` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_roster`
--

LOCK TABLES `class_roster` WRITE;
/*!40000 ALTER TABLE `class_roster` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `student_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Harry','Potter','HP@hogwarts.edu',1),(2,'Hermione','Granger','HG@hogwarts.edu',2),(3,'Arthur','Weasley','AW@hogwarts.edu',3),(4,'Molly','Weasley','MW@hogwarts.edu',4),(5,'Bill','Weasley','BW@hogwarts.edu',5),(6,'Charlie','Weasley','CW@hogwarts.edu',6),(7,'Percy','Weasley','PW@hogwarts.edu',7),(8,'Fred','Weasley','FW@hogwarts.edu',8),(9,'George','Weasley','GW@hogwarts.edu',8),(10,'Ron','Weasley','RW@hogwarts.edu',9),(11,'Ginny','Weasley','GiW@hogwarts.edu',10);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(40) DEFAULT NULL,
  `town` varchar(20) DEFAULT NULL,
  `zip` smallint DEFAULT NULL,
  `room` smallint DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,'4 Privet Drive','Little Whinging',2104,1),(2,'8 Heathgate','Hampstead Garden',5208,1),(3,'12 Grimmauld Place','The Burrow',5211,1),(4,'12 Grimmauld Place','The Burrow',5211,2),(5,'12 Grimmauld Place','The Burrow',5211,3),(6,'12 Grimmauld Place','The Burrow',5211,4),(7,'12 Grimmauld Place','The Burrow',5211,5),(8,'12 Grimmauld Place','The Burrow',5211,6),(9,'12 Grimmauld Place','The Burrow',5211,7),(10,'12 Grimmauld Place','The Burrow',5211,8),(11,'12 Grimmauld Place','The Burrow',5211,8),(12,'12 Grimmauld Place','The Burrow',5211,9),(13,'12 Grimmauld Place','The Burrow',5211,10);
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-07 13:48:12
