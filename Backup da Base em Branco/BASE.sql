CREATE DATABASE  IF NOT EXISTS `dbscout` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbscout`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
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
  CONSTRAINT `FK_Cod_Time_Atleta` FOREIGN KEY (`Cod_Time_Atleta`) REFERENCES `tbtime` (`Cod_Time`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde ficarão armazenados os dados sobre os Atletas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbatleta`
--

LOCK TABLES `tbatleta` WRITE;
/*!40000 ALTER TABLE `tbatleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbatleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbatletascout`
--

DROP TABLE IF EXISTS `tbatletascout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbatletascout` (
  `Cod_Atleta_atletascout` int(11) DEFAULT NULL,
  `Cod_Scout_atletascout` int(11) DEFAULT NULL,
  KEY `FK_Cod_Atleta_idx` (`Cod_Atleta_atletascout`),
  KEY `FK_Cod_Scout_idx` (`Cod_Scout_atletascout`),
  CONSTRAINT `FK_Cod_Atleta_atletascout` FOREIGN KEY (`Cod_Atleta_atletascout`) REFERENCES `tbatleta` (`Cod_Atleta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Cod_Scout_atletascout` FOREIGN KEY (`Cod_Scout_atletascout`) REFERENCES `tbscoutatleta` (`Cod_Scout`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela que representa o relacionamento entre Atleta e Scout';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbatletascout`
--

LOCK TABLES `tbatletascout` WRITE;
/*!40000 ALTER TABLE `tbatletascout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbatletascout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpartida`
--

DROP TABLE IF EXISTS `tbpartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpartida` (
  `Local_Partida` varchar(50) NOT NULL,
  `Data_Partida` varchar(10) NOT NULL,
  `Adversario_Partida` varchar(25) NOT NULL,
  `GolsContra_Partida` int(11) NOT NULL,
  `GolsPro_Partida` int(11) NOT NULL,
  `Cod_Time_Partida` int(11) NOT NULL,
  `Cod_Scout_Partida` int(11) DEFAULT NULL,
  PRIMARY KEY (`Local_Partida`,`Data_Partida`,`Adversario_Partida`),
  KEY `FK_Cod_Time_idx` (`Cod_Time_Partida`),
  KEY `FK_Cod_Scout_idx` (`Cod_Scout_Partida`),
  CONSTRAINT `FK_Cod_Scout_Partida` FOREIGN KEY (`Cod_Scout_Partida`) REFERENCES `tbscoutpartida` (`Cod_Scout`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_Cod_Time_Partida` FOREIGN KEY (`Cod_Time_Partida`) REFERENCES `tbtime` (`Cod_Time`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde serão armazenados os dados referentes as partidas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpartida`
--

LOCK TABLES `tbpartida` WRITE;
/*!40000 ALTER TABLE `tbpartida` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbscoutatleta`
--

DROP TABLE IF EXISTS `tbscoutatleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbscoutatleta` (
  `Cod_Scout` int(11) NOT NULL AUTO_INCREMENT,
  `Total_Passes_Scout` int(11) DEFAULT '0',
  `TotalPassesCertos_Scout` int(11) DEFAULT '0',
  `TotalPassesErrados_Scout` int(11) DEFAULT '0',
  `TempoEmQuadra_Scout` int(11) DEFAULT '0',
  `Gols_Scout` int(11) DEFAULT '0',
  `Assistencias_Scout` int(11) DEFAULT '0',
  `TotalChutes_Scout` int(11) DEFAULT '0',
  `TotalChutesCertos_Scout` int(11) DEFAULT '0',
  `TotalChutesErrados_Scout` int(11) DEFAULT '0',
  PRIMARY KEY (`Cod_Scout`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde serão armazenados os dados referentes ao scout do atleta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbscoutatleta`
--

LOCK TABLES `tbscoutatleta` WRITE;
/*!40000 ALTER TABLE `tbscoutatleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbscoutatleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbscoutpartida`
--

DROP TABLE IF EXISTS `tbscoutpartida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbscoutpartida` (
  `Cod_Scout` int(11) NOT NULL AUTO_INCREMENT,
  `TotalAssistencias_Scout` int(11) DEFAULT '0',
  `TotalChutesCertos_Scout` int(11) DEFAULT '0',
  `TotalChutes_Scout` int(11) DEFAULT '0',
  `TotalChutesErrados_Scout` int(11) DEFAULT '0',
  `TotalPasses_Scout` int(11) DEFAULT '0',
  `TotalPassesCertos_Scout` int(11) DEFAULT '0',
  `TotalPassesErrados_Scout` int(11) DEFAULT '0',
  PRIMARY KEY (`Cod_Scout`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde serão armazenados os dados referentes ao Scout de uma partida';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbscoutpartida`
--

LOCK TABLES `tbscoutpartida` WRITE;
/*!40000 ALTER TABLE `tbscoutpartida` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbscoutpartida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbtime`
--

DROP TABLE IF EXISTS `tbtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbtime` (
  `Cod_Time` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Time` varchar(25) DEFAULT NULL,
  `Foto_Time` varchar(50) DEFAULT NULL,
  `Cod_Treinador` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_Time`),
  KEY `FK_Treinador_idx` (`Cod_Treinador`),
  CONSTRAINT `FK_Cod_Treinador_Time` FOREIGN KEY (`Cod_Treinador`) REFERENCES `tbtreinador` (`Cod_Treinador`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde serão armazenados os dados referentes ao time';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbtime`
--

LOCK TABLES `tbtime` WRITE;
/*!40000 ALTER TABLE `tbtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbtreinador`
--

DROP TABLE IF EXISTS `tbtreinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbtreinador` (
  `Cod_Treinador` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Treinador` varchar(75) DEFAULT NULL,
  `RG_Treinador` varchar(15) DEFAULT NULL,
  `Foto_Treinador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Treinador`),
  UNIQUE KEY `RG_Treinador_UNIQUE` (`RG_Treinador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabela onde os dados do treinador do time serão armazenados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbtreinador`
--

LOCK TABLES `tbtreinador` WRITE;
/*!40000 ALTER TABLE `tbtreinador` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbtreinador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbscout'
--

--
-- Dumping routines for database 'dbscout'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-24 11:57:27
