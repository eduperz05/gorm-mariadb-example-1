-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: alquilerCoches
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `alquiler`
--

DROP TABLE IF EXISTS `alquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alquiler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` varchar(9) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `final` datetime DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dni_idx` (`DNI`),
  KEY `fk_matricula_idx` (`matricula`),
  CONSTRAINT `fk_dni` FOREIGN KEY (`DNI`) REFERENCES `cliente` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_matricula` FOREIGN KEY (`matricula`) REFERENCES `coche` (`matricula`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alquiler`
--

LOCK TABLES `alquiler` WRITE;
/*!40000 ALTER TABLE `alquiler` DISABLE KEYS */;
INSERT INTO `alquiler` VALUES (8,'05679340L','8763-GLH','2020-02-08 18:00:00','2020-02-11 10:00:00',70.00),(9,'07865988B','3216-BHF','2020-02-03 13:00:00','2020-02-04 10:00:00',23.00),(10,'13455656N','2354-HBC','2020-02-01 12:00:00','2020-02-04 11:00:00',25.00),(11,'13455656N','3216-BHF','2020-02-14 13:00:00','2020-02-17 11:00:00',25.00),(12,'23432988J','3256-GDF','2020-02-02 13:00:00','2020-02-04 12:00:00',25.00),(13,'23432988J','4589-HBD','2020-02-15 14:00:00','2020-02-18 12:00:00',25.00),(14,'23446456A','9743-GLH','2020-02-07 19:00:00','2020-02-10 12:00:00',56.00),(15,'43005006C','3256-GDF','2020-02-02 13:00:00','2020-02-05 14:00:00',23.00),(16,'43566789M','9876-GGF','2020-02-06 19:00:00','2020-02-09 14:00:00',54.00),(17,'45567678D','7863-FGG','2020-02-05 17:00:00','2020-02-08 14:00:00',56.00),(18,'45567678D','7865-BTG','2020-02-10 17:00:00','2020-02-13 14:00:00',78.00),(19,'45567678D','9876-GGF','2020-02-17 19:00:00','2020-02-20 14:00:00',56.00),(20,'45667443T','8763-GLH','2020-02-08 18:00:00','2020-02-11 14:00:00',70.00),(21,'45678901G','2354-HBC','2020-02-01 12:00:00','2020-02-04 14:00:00',23.00),(22,'54377890W','4589-HBD','2020-02-04 14:00:00','2020-02-07 15:00:00',25.00),(23,'54377890W','7863-FGG','2020-02-16 17:00:00','2020-02-25 15:00:00',56.00),(24,'54377890W','9803-HBB','2020-02-09 19:00:00','2020-02-12 15:00:00',70.00),(25,'56008986F','9803-HBB','2020-02-09 19:00:00','2020-02-16 15:00:00',70.00),(26,'56321789X','2354-HBC','2020-02-12 12:00:00','2020-02-15 15:00:00',25.00),(27,'56321789X','7865-BTG','2020-02-10 17:00:00','2020-02-13 15:00:00',72.00),(28,'56999678C','8999-HBC','2020-02-11 18:00:00','2020-02-14 15:00:00',75.00),(29,'56999678C','9743-GLH','2020-02-18 19:00:00','2020-02-03 15:00:00',56.00),(30,'56999678C','9876-GGF','2020-02-06 19:00:00','2020-02-07 15:00:00',56.00),(31,'65783450T','7863-FGG','2020-02-05 17:00:00','2020-02-08 16:00:00',56.00),(32,'67544345S','3216-BHF','2020-02-03 13:00:00','2020-02-06 16:00:00',25.00),(33,'67655432N','3256-GDF','2020-02-13 13:00:00','2020-02-16 16:00:00',25.00),(34,'67655432N','8999-HBC','2020-02-11 18:00:00','2020-02-14 16:00:00',75.00),(35,'75655499N','9743-GLH','2020-02-07 19:00:00','2020-02-14 17:00:00',54.00),(36,'76523986L','4589-HBD','2020-02-04 14:00:00','2020-02-07 17:00:00',22.00);
/*!40000 ALTER TABLE `alquiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `DNI` varchar(9) NOT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `datos` varchar(100) DEFAULT NULL,
  `nacimiento` datetime DEFAULT NULL,
  `expedicionCarnet` datetime DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('05679340L','pérez','david','c/galicia nº 32','1985-01-30 00:00:00','2007-01-30 00:00:00'),('07865988B','hernández','pedro','Rambla nº 7','1990-10-10 00:00:00','2010-10-10 00:00:00'),('13455656N','ruiz','maría','c/fuerteventura nº 9','1980-03-21 00:00:00','2002-03-21 00:00:00'),('23432988J','ramos','maría','c/lanzarote nº 99','1980-03-22 00:00:00','2002-03-22 00:00:00'),('23446456A','gonzález','josé','c/cinco de mayo nº 7','1990-10-14 00:00:00','2010-10-14 00:00:00'),('43005006C','rodríguez','juan','C/x nº 6','1960-01-02 00:00:00','1982-01-02 00:00:00'),('43554430C','gonzález','samuel','c/principal nº 54','1985-01-30 00:00:00','2008-01-30 00:00:00'),('43566789M','fernández','jesús','c/la mancha nº 8','1985-01-28 00:00:00','2007-01-28 00:00:00'),('45567678D','rodríguez','juana','C/seis nº 8','1990-10-12 00:00:00','2010-10-12 00:00:00'),('45667443T','gonzález','alberto','c/alborada nº 7','1980-03-17 00:00:00','2002-03-17 00:00:00'),('45678901G','pérez','ana','C/una nº 5','1960-01-01 00:00:00','1982-01-01 00:00:00'),('54377890W','pérez','maría','Avenida Primera nº 6','1990-10-11 00:00:00','2010-10-11 00:00:00'),('56008986F','pérez','juana','c/el hierro nº 6','1980-03-18 00:00:00','2002-03-18 00:00:00'),('56321789X','fernández','pedro','c/la gomera nº 8','1980-03-19 00:00:00','2002-03-19 00:00:00'),('56999678C','hernández','josefa','c/primero de junio nº 7','1990-10-13 00:00:00','2010-10-13 00:00:00'),('65783450T','ramos','carmen','c/madrid nº 75','1985-01-27 00:00:00','2007-01-27 00:00:00'),('67544345S','rojas','ana','c/la palma nº 77','1985-01-25 00:00:00','2007-01-25 00:00:00'),('67655432N','rojas','fernando','c/gran canaria nº 9','1980-03-20 00:00:00','2002-03-20 00:00:00'),('75655499N','pérez','fernando','c/ofra nº 3','1985-01-29 00:00:00','2007-01-29 00:00:00'),('76523986L','ruiz','marta','c/la graciosa nº 66','1985-01-26 00:00:00','2007-01-26 00:00:00');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coche`
--

DROP TABLE IF EXISTS `coche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coche` (
  `matricula` varchar(10) NOT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `idTipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `fk_coche_1_idx` (`idTipo`),
  CONSTRAINT `fk_coche_1` FOREIGN KEY (`idTipo`) REFERENCES `tipoCoche` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coche`
--

LOCK TABLES `coche` WRITE;
/*!40000 ALTER TABLE `coche` DISABLE KEYS */;
INSERT INTO `coche` VALUES ('2354-HBC','Ford KA 3 puertas',1),('3216-BHF','Seat Ibita 3 puertas',1),('3256-GDF','Opel Corsa 5 puertas',1),('4589-HBD','Volkswagen Polo 3 puertas',1),('5567 HGT','Pequeño golpe en aleta derecha',1),('5568 HGT','Pequeño golpe en aleta derecha',1),('5599 HGT','Pequeño golpe en aleta derecha',1),('7863-FGG','Volvo S60 5 puertas',2),('7865-BTG','Land Rover Discovery',4),('8763-GLH','Opel Combo',3),('8999-HBC','Volvo XC90',4),('9567-CCD','Land Rover Discovery',4),('9743-GLH','Opel Vectra 5 puertas',2),('9803-HBB','Renault Kangoo',3),('9876-GGF','Opel Vectra 5 puertas',2);
/*!40000 ALTER TABLE `coche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoCoche`
--

DROP TABLE IF EXISTS `tipoCoche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoCoche` (
  `idTipo` int(11) NOT NULL,
  `DescripcionTipo` varchar(100) DEFAULT NULL,
  `PrecioDia` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoCoche`
--

LOCK TABLES `tipoCoche` WRITE;
/*!40000 ALTER TABLE `tipoCoche` DISABLE KEYS */;
INSERT INTO `tipoCoche` VALUES (1,'Económico',25.00),(2,'Ejecutivo',56.00),(3,'Furgoneta',70.00),(4,'Todo terreno',75.00),(66,'Nuevo tipo de coche',22.50),(67,'Nuevo tipo de coche',22.50);
/*!40000 ALTER TABLE `tipoCoche` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-18 20:38:01
