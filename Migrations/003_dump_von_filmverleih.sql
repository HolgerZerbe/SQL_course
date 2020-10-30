-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: filmverleih
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

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
-- Table structure for table `filme`
--
USE filmverleih_alt;

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(150) DEFAULT NULL,
  `spieldauer` int DEFAULT NULL,
  `erscheinungsjahr` year NOT NULL,
  `kurzbeschreibung` text,
  `genre` varchar(50) DEFAULT NULL,
  `regisseur_id` int DEFAULT NULL,
  `preiskategorie_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titel` (`titel`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (2,'Der Herr der Ringe - Die Gefährten',178,2001,'In einem kleinen Dorf wird einem jungen Hobbit namens Frodo ein uralter, magischer Ring anvertraut. Er muss sich auf eine epische Reise zum Schicksalsberg begeben, um ihn zu zerstören.','Fantasy',NULL,NULL),(4,'Donnie Darko',NULL,2001,'Das Leben ist eine lange verrückte Reise. Einige Leute haben einfach einen besseren Orientierungssinn','fantasy',NULL,NULL),(5,'The Dark Knight',152,2008,'Batman, Gordon und Harvey Dent müssen den Joker stoppen, ein Anarchistengenie, der einen Ring der Gewalt über die Stadt legt.','action',NULL,NULL),(6,'The Prestige',NULL,2006,'Robert und Alfred sind Magierrivalen. Als Alfred den ultimativen Trick zeigt, versucht Robert verzweifelt das Geheimnis herauszufinden.','fantasy',NULL,NULL),(7,'The Ring',115,2002,'Bevor Du stirbst siehst Du den Ring.','horror',NULL,NULL),(8,'The Ring 2',110,2005,'Fear comes full circle.','horror',NULL,NULL),(9,'Inglourious Basterds',153,2009,'Es war einmal in einem von Nazis besetzen Frankreich...','drama',NULL,NULL),(10,'Star Trek',127,2009,'Die Zukunft beginnt','scifi',NULL,NULL),(11,'District 9',153,2009,'Eine auserirdische Rasse ist gezwungen auf der Erde in Slums zu leben...','scifi',NULL,NULL),(12,'Fluch der Karibik',143,2003,'Der Schied Will Turner verbündet sich mit dem Piraten \"Captain\" Jack Sparrow\" um seine Geliebte zu retten','abenteuer',NULL,NULL);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_alt`
--

DROP TABLE IF EXISTS `filme_alt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme_alt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titel` varchar(150) DEFAULT NULL,
  `spieldauer` int DEFAULT NULL,
  `erscheinungsjahr` year DEFAULT NULL,
  `kurzbeschreibung` text,
  `genre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titel` (`titel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_alt`
--

LOCK TABLES `filme_alt` WRITE;
/*!40000 ALTER TABLE `filme_alt` DISABLE KEYS */;
INSERT INTO `filme_alt` VALUES (1,'Cube',90,1997,'Sieben völlig Fremde mit sehr unterschiedlichen Charakterzügen werden unfreiwillig in ein endloses kafkaartiges Labyrinth voller Fallen gesteckt.',NULL),(2,'Der Herr der Ringe - Die Gefährten',178,2001,'In einem kleinen Dorf wird einem jungen Hobbit namens Frodo ein uralter, magischer Ring anvertraut. Er muss sich auf eine epische Reise zum Schicksalsberg begeben, um ihn zu zerstören.',NULL);
/*!40000 ALTER TABLE `filme_alt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preiskategorien`
--

DROP TABLE IF EXISTS `preiskategorien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preiskategorien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `preis` decimal(2,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preiskategorien`
--

LOCK TABLES `preiskategorien` WRITE;
/*!40000 ALTER TABLE `preiskategorien` DISABLE KEYS */;
/*!40000 ALTER TABLE `preiskategorien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regisseure`
--

DROP TABLE IF EXISTS `regisseure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regisseure` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `geburtsdatum` date DEFAULT NULL,
  `nachname` varchar(50) NOT NULL,
  `vorname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regisseure`
--

LOCK TABLES `regisseure` WRITE;
/*!40000 ALTER TABLE `regisseure` DISABLE KEYS */;
INSERT INTO `regisseure` VALUES (1,'Vincent Natali','1969-01-06','Natali','Vincent'),(2,'Peter Jackson','1961-10-31','Jackson','Peter');
/*!40000 ALTER TABLE `regisseure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regisseure_alt`
--

DROP TABLE IF EXISTS `regisseure_alt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regisseure_alt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `vorname` varchar(50) DEFAULT NULL,
  `geburtsdatum` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regisseure_alt`
--

LOCK TABLES `regisseure_alt` WRITE;
/*!40000 ALTER TABLE `regisseure_alt` DISABLE KEYS */;
INSERT INTO `regisseure_alt` VALUES (1,'Natali','Vincent','1969-01-06'),(2,'Jackson','Peter','1961-10-31');
/*!40000 ALTER TABLE `regisseure_alt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'filmverleih'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-30  9:13:27
