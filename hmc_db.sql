-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hmc
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machines` (
  `productId` varchar(15) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `producingCountry` varchar(45) DEFAULT NULL,
  `systemCNC` varchar(45) DEFAULT NULL,
  `fullSystemCNC` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT '0',
  `machineLocation` varchar(45) DEFAULT NULL,
  `axisCount` int(11) DEFAULT '0',
  `xMotion` int(11) DEFAULT '0',
  `yMotion` int(11) DEFAULT '0',
  `zMotion` int(11) DEFAULT '0',
  `xTableSize` int(11) DEFAULT '0',
  `yTableSize` int(11) DEFAULT '0',
  `tableLoad` int(11) DEFAULT '0',
  `spindleTaper` varchar(45) DEFAULT NULL,
  `spindleRotationFreq` int(11) DEFAULT '0',
  `spindlePower` varchar(45) DEFAULT NULL,
  `spindleMaxTorque` int(11) DEFAULT '0',
  `spindleType` varchar(45) DEFAULT NULL,
  `spindleCoolingMethod` varchar(45) DEFAULT NULL,
  `storeType` varchar(45) DEFAULT NULL,
  `toolCount` int(11) DEFAULT '0',
  `maxToolDiameter` int(11) DEFAULT '0',
  `maxToolWeight` int(11) DEFAULT '0',
  `toolReplacementTime` int(11) DEFAULT '0',
  `positionPrecision` varchar(10) DEFAULT '0',
  `repositionPrecision` varchar(10) DEFAULT '0',
  `spindleRuntime` int(11) DEFAULT '0',
  `machineLaunching` int(11) DEFAULT '0',
  `equipment` varchar(45) DEFAULT NULL,
  `condition` varchar(45) DEFAULT NULL,
  `cost` int(11) DEFAULT '0',
  `photo1` varchar(45) DEFAULT NULL,
  `photo2` varchar(45) DEFAULT NULL,
  `photo3` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `fullDescription` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`productId`),
  UNIQUE KEY `productId_UNIQUE` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES ('K85479696','Another horizontal center','HMC 1038 W','DECKEL-MAHO','Italy','Siemens','Siemens 840 D Shop Mill',2006,'Russia',3,1035,560,510,1250,560,1000,'SK 40',8000,'25/35',10,'Spindle with internal supply SOJ','Fluid cooling','Turret',30,250,20,1,'0,05','0,005',8100,9000,'Pistol, handwheel, bath.','Good',6000,'DMC 1035 V_1.jpg','DMC 1035 V_2.jpg','DMC 1035 V_3.jpg','Description','Full description'),('P50724152','Horizontal machining center','HMC 1035 V','DECKEL-MAHO','Italy','Siemens','Siemens 840 D Shop Mill',2006,'Russia',3,1035,560,510,1250,560,1000,'SK 40',8000,'25/35',10,'Spindle with internal supply SOJ','Fluid cooling','Turret',30,250,20,1,'0,05','0,005',8100,9000,'Pistol, handwheel, bath.','Good',6000,'DMC 1035 V_1.jpg','DMC 1035 V_2.jpg','DMC 1035 V_3.jpg','Description','Full description');
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-20 10:09:29
