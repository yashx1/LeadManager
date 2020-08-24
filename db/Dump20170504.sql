CREATE DATABASE  IF NOT EXISTS `leadmanager` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `leadmanager`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: leadmanager
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bd`
--

DROP TABLE IF EXISTS `bd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd` (
  `idbd` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `isActive` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`idbd`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd`
--

LOCK TABLES `bd` WRITE;
/*!40000 ALTER TABLE `bd` DISABLE KEYS */;
INSERT INTO `bd` VALUES (341,'harry','9428323292','harry@dummy.com','varli','mumbai','maharashtra',''),(342,'harmoine','8828323292','harmoine@dummy.com','vakad','mumbai','maharashtra',''),(343,'ron','9828324212','ron@dummy.com','borivili','mumbai','maharashtra',''),(344,'malfoy','8088373271','malfoy@dummy.com','thane','mumbai','maharashtra','\0'),(345,'dumbledore','8328313891','dumbledore@dummy.com','hadapsar','pune','maharashtra','\0');
/*!40000 ALTER TABLE `bd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bdUpdate`
--

DROP TABLE IF EXISTS `bdUpdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdUpdate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bdId` int(11) NOT NULL,
  `update` varchar(500) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdUpdate`
--

LOCK TABLES `bdUpdate` WRITE;
/*!40000 ALTER TABLE `bdUpdate` DISABLE KEYS */;
INSERT INTO `bdUpdate` VALUES (16,341,'Got letter from Hogwarts.','2001-05-04 16:31:22'),(17,341,'Boarded train from Platform 9¾ at King\'s Cross Station.','2001-05-06 08:31:51'),(18,341,'Reached Hogwartz.','2001-05-07 12:31:51'),(19,341,'Got into Gryffindor House.','2001-05-10 06:31:51'),(20,341,'Met professor Squirrel.','2001-05-11 18:31:51');
/*!40000 ALTER TABLE `bdUpdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-04 18:38:51
