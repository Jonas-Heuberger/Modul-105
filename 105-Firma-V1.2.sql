-- MySQL dump 10.16  Distrib 10.2.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: firma
-- ------------------------------------------------------
-- Server version	10.2.12-MariaDB

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
-- Current Database: `firma`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `firma` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `firma`;

--
-- Table structure for table `ableiter`
--

DROP TABLE IF EXISTS `ableiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ableiter` (
  `abtnr` smallint(6) NOT NULL,
  `persnr` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ableiter`
--

LOCK TABLES `ableiter` WRITE;
/*!40000 ALTER TABLE `ableiter` DISABLE KEYS */;
INSERT INTO `ableiter` VALUES (1,10),(2,9),(3,5),(4,1);
/*!40000 ALTER TABLE `ableiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abteilg`
--

DROP TABLE IF EXISTS `abteilg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abteilg` (
  `abtnr` smallint(6) NOT NULL,
  `abtname` char(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abteilg`
--

LOCK TABLES `abteilg` WRITE;
/*!40000 ALTER TABLE `abteilg` DISABLE KEYS */;
INSERT INTO `abteilg` VALUES (1,'Leitung'),(2,'Verwaltung'),(3,'Steuerung'),(4,'Transport');
/*!40000 ALTER TABLE `abteilg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auftrag`
--

DROP TABLE IF EXISTS `auftrag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auftrag` (
  `aufnr` smallint(6) DEFAULT NULL,
  `aufwert` decimal(8,2) DEFAULT NULL,
  `abdatum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auftrag`
--

LOCK TABLES `auftrag` WRITE;
/*!40000 ALTER TABLE `auftrag` DISABLE KEYS */;
INSERT INTO `auftrag` VALUES (1111,56400.00,'2002-02-28'),(2222,52700.00,NULL),(3333,20800.00,'2002-02-28'),(4444,NULL,NULL);
/*!40000 ALTER TABLE `auftrag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmitglieder`
--

DROP TABLE IF EXISTS `fmitglieder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmitglieder` (
  `persnr` smallint(6) NOT NULL,
  `fmnr` smallint(6) DEFAULT NULL,
  `vorname` char(12) DEFAULT NULL,
  `vwgrad` char(1) DEFAULT NULL,
  `zuschlag` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmitglieder`
--

LOCK TABLES `fmitglieder` WRITE;
/*!40000 ALTER TABLE `fmitglieder` DISABLE KEYS */;
INSERT INTO `fmitglieder` VALUES (10,3,'Else','t',60.00),(10,2,'Theo','s',40.00),(10,1,'Hanna','f',60.00),(8,1,'Christa','t',40.00),(5,2,'Heinz','s',40.00),(5,1,'Beate','f',60.00),(3,1,'Heinrich','m',60.00);
/*!40000 ALTER TABLE `fmitglieder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mgehalt`
--

DROP TABLE IF EXISTS `mgehalt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mgehalt` (
  `persnr` smallint(6) NOT NULL,
  `jahr` decimal(4,0) DEFAULT NULL,
  `monat` smallint(6) DEFAULT NULL,
  `mgehalt` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mgehalt`
--

LOCK TABLES `mgehalt` WRITE;
/*!40000 ALTER TABLE `mgehalt` DISABLE KEYS */;
INSERT INTO `mgehalt` VALUES (10,2002,1,5900.00),(9,2002,1,4250.00),(8,2002,1,4760.00),(7,2002,1,2700.00),(5,2002,1,5000.00),(4,2002,1,3820.10),(3,2002,1,3200.00),(1,2002,1,4100.00),(10,2002,2,6001.74),(1,2002,2,4482.40),(3,2002,2,3428.28),(4,2002,2,3800.00),(5,2002,2,6063.63),(9,2002,2,4000.00),(8,2002,2,4240.00),(7,2002,2,2929.65);
/*!40000 ALTER TABLE `mgehalt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persdat`
--

DROP TABLE IF EXISTS `persdat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persdat` (
  `persnr` smallint(6) NOT NULL,
  `pname` char(12) DEFAULT NULL,
  `pvname` char(12) DEFAULT NULL,
  `geschlecht` char(1) DEFAULT NULL,
  `abtnr` smallint(6) DEFAULT NULL,
  `eintritt` date DEFAULT NULL,
  `gehalt` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persdat`
--

LOCK TABLES `persdat` WRITE;
/*!40000 ALTER TABLE `persdat` DISABLE KEYS */;
INSERT INTO `persdat` VALUES (9,'Huber','Anna','W',2,'1985-06-15',4000.00),(8,'Brunner','Emma','W',3,'1980-02-01',4200.00),(7,'Meier','Heinz','M',3,'1980-02-01',2450.00),(5,'Kalt','Friedrich','M',3,'1985-07-15',4500.00),(4,'Dorfner','Claudio','M',2,'1984-03-01',3800.00),(3,'Meyer','Luise','W',4,'1984-03-01',2450.00),(1,'Hilfiker','Eric','M',4,'1980-02-01',3800.00),(10,'Meier','Adam','M',1,'1975-01-01',5000.00);
/*!40000 ALTER TABLE `persdat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tart`
--

DROP TABLE IF EXISTS `tart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tart` (
  `tartnr` char(1) DEFAULT NULL,
  `tbez` char(15) DEFAULT NULL,
  `tpreis` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tart`
--

LOCK TABLES `tart` WRITE;
/*!40000 ALTER TABLE `tart` DISABLE KEYS */;
INSERT INTO `tart` VALUES ('1','Akquisition',90.00),('2','Vorbesprechung',100.00),('3','Beratung',130.00),('4','Projektentwurf',120.00),('5','Kalkulation',110.00),('6','Zeichnen',90.00),('7','Schreibarbeiten',80.00);
/*!40000 ALTER TABLE `tart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tposten`
--

DROP TABLE IF EXISTS `tposten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tposten` (
  `tbnr` int(11) DEFAULT NULL,
  `persnr` smallint(6) DEFAULT NULL,
  `aufnr` smallint(6) DEFAULT NULL,
  `tartnr` char(1) DEFAULT NULL,
  `tstd` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tposten`
--

LOCK TABLES `tposten` WRITE;
/*!40000 ALTER TABLE `tposten` DISABLE KEYS */;
INSERT INTO `tposten` VALUES (20020301,10,2222,'4',3.00),(20020301,10,2222,'2',4.00),(20020228,1,3333,'5',9.00),(20020228,1,3333,'3',5.00),(20020228,5,1111,'3',18.00),(20020301,5,2222,'6',6.00),(20020301,7,2222,'7',6.50),(20020301,8,4444,'2',8.00),(20020301,3,4444,'6',4.00),(20020301,3,4444,'7',3.00),(20020301,1,4444,'2',8.00),(20020228,5,1111,'2',24.00),(20020228,5,1111,'1',18.00),(20020228,3,2222,'7',38.00),(20020228,3,2222,'6',12.00),(20020228,3,1111,'7',24.00),(20020228,3,1111,'6',70.00),(20020228,1,2222,'6',24.00),(20020228,1,2222,'5',7.00),(20020228,1,2222,'3',4.00),(20020228,1,1111,'6',32.00),(20020228,1,1111,'5',18.00),(20020228,1,1111,'3',12.00),(20020228,5,1111,'4',42.00),(20020228,5,1111,'5',12.00),(20020228,5,2222,'5',17.00),(20020228,5,2222,'6',32.00),(20020228,7,1111,'7',58.00),(20020228,7,2222,'7',35.00),(20020228,8,1111,'5',4.00),(20020228,8,1111,'6',62.00),(20020228,8,2222,'5',7.00),(20020228,8,2222,'6',42.00),(20020228,10,1111,'1',38.00),(20020228,10,1111,'2',42.00),(20020228,10,1111,'3',38.00),(20020228,1,3333,'6',39.00),(20020228,3,3333,'6',12.00),(20020228,3,3333,'7',18.00),(20020228,7,3333,'7',62.00),(20020228,8,3333,'6',39.00),(20020228,10,3333,'1',17.00),(20020228,10,3333,'2',18.00),(20020228,10,3333,'3',12.00);
/*!40000 ALTER TABLE `tposten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vorg`
--

DROP TABLE IF EXISTS `vorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vorg` (
  `persnr` smallint(6) NOT NULL,
  `vpersnr` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vorg`
--

LOCK TABLES `vorg` WRITE;
/*!40000 ALTER TABLE `vorg` DISABLE KEYS */;
INSERT INTO `vorg` VALUES (1,10),(3,1),(4,9),(5,10),(7,5),(8,5),(9,10),(10,0);
/*!40000 ALTER TABLE `vorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vwgrade`
--

DROP TABLE IF EXISTS `vwgrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vwgrade` (
  `vwgrad` char(1) NOT NULL,
  `vwname` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vwgrade`
--

LOCK TABLES `vwgrade` WRITE;
/*!40000 ALTER TABLE `vwgrade` DISABLE KEYS */;
INSERT INTO `vwgrade` VALUES ('m','Ehemann'),('f','Ehefrau'),('s','Sohn'),('t','Tochter');
/*!40000 ALTER TABLE `vwgrade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-07 10:09:38
