-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AnswerBank`
--

DROP TABLE IF EXISTS `AnswerBank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `AnswerBank` (
  `ansId` int(10) NOT NULL AUTO_INCREMENT,
  `QusId` int(11) DEFAULT NULL,
  `Options` varchar(50) DEFAULT NULL,
  `Answer` varchar(50) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`ansId`),
  KEY `QusId` (`QusId`),
  CONSTRAINT `AnswerBank_ibfk_1` FOREIGN KEY (`QusId`) REFERENCES `questionBank` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnswerBank`
--

LOCK TABLES `AnswerBank` WRITE;
/*!40000 ALTER TABLE `AnswerBank` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnswerBank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionBank`
--

DROP TABLE IF EXISTS `questionBank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionBank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(30) DEFAULT NULL,
  `Questions` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionBank`
--

LOCK TABLES `questionBank` WRITE;
/*!40000 ALTER TABLE `questionBank` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionBank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionResult`
--

DROP TABLE IF EXISTS `questionResult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionResult` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `User` varchar(30) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `marks` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `questionResult_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userInfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionResult`
--

LOCK TABLES `questionResult` WRITE;
/*!40000 ALTER TABLE `questionResult` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionResult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userInfo`
--

DROP TABLE IF EXISTS `userInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userInfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userInfo`
--

LOCK TABLES `userInfo` WRITE;
/*!40000 ALTER TABLE `userInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17 12:57:00
