-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
<<<<<<< HEAD
=======
-- Table structure for table `AnswerBank`
--
CREATE Database quiz_db;
use quiz_db;
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
>>>>>>> 2b088ad1b28345979bc8e7ed333033d8cb86a976
-- Table structure for table `questionBank`
--

DROP TABLE IF EXISTS `questionBank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionBank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Subject` varchar(30) DEFAULT NULL,
  `Questions` varchar(1000) DEFAULT NULL,
  `a` varchar(150) DEFAULT NULL,
  `b` varchar(150) DEFAULT NULL,
  `c` varchar(150) DEFAULT NULL,
  `d` varchar(45) DEFAULT NULL,
  `ans` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionBank`
--

LOCK TABLES `questionBank` WRITE;
/*!40000 ALTER TABLE `questionBank` DISABLE KEYS */;
INSERT INTO `questionBank` VALUES (1,'js','what is js?','java script','language','browser','framwork','a'),(2,'js','what is npm?','language','node package manager','platform','band c','b'),(3,'js','what is promise?','method','class','interface','program','a'),(4,'js','what is call back?','class','object','method','platform','c'),(5,'js','Which of the following command will show version of Node?','npm --version','node --version','npm getversion','node get version','a'),(6,'js','How Node based web servers are different from traditional web servers?','Node based server process request much faster than traditional server.\n','large number of request hadling','none','','b'),(7,'js','Which of the following code converts a buffer buf to JSON object?',' buf.toJSON()','buf.json()','buf.covertToJson()','buf.jsonify()','a'),(8,'js','Which method of fs module is used to close a file?','fs.close(fd, callback)\n','fs.closeFile(fd, callback)',' fs.closePath(fd, callback)','None of the above.','a'),(9,'js',' Which method of fs module is used to delete a file?','fs.delete(fd, len, callback)','fs.remove(fd, len, callback)\n','fs.unlink(path, callback)','None of the above.','c'),(10,'js','Which of the following module is required for operating system specific operations?','os module','fs module',' net module','None of the above.','a'),(11,'js','Which of the following code print the total free memory of operating system?','console.log(\'free memory : \' + os.freemem() + \" bytes.\");\n',' console.log(\'free memory : \' + os.freemem + \" bytes.\");\n','console.log(\'free memory : \' + os.getFreeMemory() + \" bytes.\");\n',' None of the above.\n','a'),(12,'js','Which of the following module is required for exception handling in Node?','web module',' net module',' domain module','error module','c'),(13,'js','Which of the following is true about external binding with respect to domain module?','Error emmitter is executing its code within run method of a domain.\n','Error emmitter is added explicitly to a domain using its add method.\n',' Both of the above.\n',' None of the above.','b'),(14,'js','Transform stream is a type of duplex stream.','true','false',NULL,NULL,'a'),(15,'js','How Node based web servers are different from traditional web servers?','none','Which of the following module is required for exception handling in Node?','Node based server uses a single threaded model and can services much larger number of requests than traditional server like Apache HTTP Server.\n',NULL,'b'),(16,'js','Which of the following command will show version of Node?','npm --version','node --version','npm getversion','node get version','a'),(17,'js','Which of the following code converts a buffer buf to JSON object?',' buf.toJSON()','buf.json()','Node based server uses a single threaded model and can services much larger number of requests than traditional server like Apache HTTP Server.\n','','a'),(18,'js','Which method of fs module is used to close a file?\n\n','fs.close(fd, callback)\n','fs.closeFile(fd, callback)',' fs.closePath(fd, callback)','None of the above.','a'),(19,'js','Which of the following code print the total free memory of operating system?','console.log(\'free memory : \' + os.freemem() + \" bytes.\");\n',' console.log(\'free memory : \' + os.freemem + \" bytes.\");\n',' net module','None of the above.','a'),(20,'js','Which of the following module is required for exception handling in Node?','web module',' net module',' domain module','error module','c'),(21,'General Knowledge','Thanedar yani thane ke pramukh se kya kaha jata hai?\nWhich of the following mean head of Police Station “Thanedaar ” ?',' Kirani','Hawaldar','Daroga','Munshi','c'),(22,'General Knowledge','What do the five rings of the Olympics represent?','Five games',' Five languages','Five continents','Five oceans','c'),(23,'General Knowledge','Lockjaw is a symptom of which of these disease?','Tetanus ',' Cholera ','Plague','Diphtheria','a'),(24,'General Knowledge','Bharatpur Bird Century was named Keoladeo Ghana National Park after a temple dedicated to which God or Goddess?',' Kali ','Yama',' Kuber','Shiva','d'),(25,'General Knowledge','With which religion would you associate the practice of Santhara fasting unto death?','Jainism','Sikhism','Shintoism','Buddhism','a'),(26,'General Knowledge','The cricket Test series played between India and England in India is contested for which trophy? ',' Pataudi Trophy','Anthony De Mello trophy','Chidambaram Trophy','Gooch Gavaskar Troph','b'),(27,'General Knowledge','Which of these tourist attractions is situated on an island ?','Ellora Caves','Ajanta Caves','Kanheri Caves','Elephanta Cave','a'),(28,'General Knowledge','Which of these actress is married to a professional golfer?\n(',' Chitrangada Singh','Celina Jaitly',' Chitrangada Singh',' Esha Deol','a'),(29,'General Knowledge','. According to the Devi, Bhagavata, from the tears of which god is the rudraksha tree believed to have been created?',' Vishnu','Shiva',' Nhrama','Kamadeva','a'),(30,'General Knowledge','Which of these is a chemical element present in the periodic table?',' Eurocium','Americium ','Asiacium','Africium','c'),(31,'General Knowledge','Which of these world champions is a parent of twins?','Sushil Kumar',' M. C. Mary Kom','Vishwanathan Anand',' Gagan Narang','b'),(32,'General Knowledge','Which of these is not a work of Kalidas?',' Raghuvamsham ','Meghadutam','Vikramorvasiyam','Kadambari','d'),(33,'General Knowledge','What was the first ministerial portfolio held by Indira Gandhi?','Home Affairs','Information & Broadcasting','Science & Technology',' Education','b'),(34,'General Knowledge','Which part of “Pudina” plant is normally used to make “pudina chutney” ?',' Seed','Flower',' Root','Leave','d'),(35,'General Knowledge','Which of these numbers is used before the word “Shringar” to describe a fully beautiful women ?','Chhattees','Solah','Chhappan','Gyarah','b');
/*!40000 ALTER TABLE `questionBank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17 19:03:58
