CREATE DATABASE  IF NOT EXISTS `dbscout` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbscout`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: dbscout
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `tbatleta`
--

DROP TABLE IF EXISTS `tbatleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbatleta` (
  `Cod_Atleta` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Atleta` varchar(75) DEFAULT NULL,
  `DataNascimento_Atleta` varchar(10) DEFAULT '01/01/1900',
  `Foto_Atleta` varchar(50) DEFAULT NULL,
  `RG_Atleta` varchar(15) DEFAULT NULL,
  `Idade_Atleta` int(11) DEFAULT NULL,
  `Cod_Time_Atleta` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_Atleta`),
  UNIQUE KEY `RG_Atleta_UNIQUE` (`RG_Atleta`),
  KEY `FK_Cod_Time_idx` (`Cod_Time_Atleta`),
  CONSTRAINT `FK_Cod_Time_Atleta` FOREIGN KEY (`Cod_Time_Atleta`) REFERENCES `tbtime` (`Cod_Time`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde ficarão armazenados os dados sobre os Atletas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbatleta`
--

LOCK TABLES `tbatleta` WRITE;
/*!40000 ALTER TABLE `tbatleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbatleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-17 10:20:32
