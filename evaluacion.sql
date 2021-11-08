-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: evaluacion
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'musica'),(2,'moda'),(3,'deporte'),(4,'politica'),(5,'economia'),(6,'arte'),(7,'famosos'),(8,'autos'),(9,'animales'),(10,'historia'),(11,'ciencia'),(12,'filosofia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `id_usuario` int NOT NULL,
  `id_validar_eliminacion` tinyint(1) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `ultima_modificacion` datetime NOT NULL,
  `fecha_eliminacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_validar_eliminacion_idx` (`id_validar_eliminacion`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `id_validar_eliminacion` FOREIGN KEY (`id_validar_eliminacion`) REFERENCES `validar_eliminacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Lorem ipsum dolor sit','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',2,0,'2010-01-14 00:00:00','2021-11-08 11:44:41',NULL),(2,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',10,1,'2018-01-14 03:45:00','2019-09-05 03:45:00','2021-03-25 22:45:00'),(3,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',1,1,'2021-11-08 11:48:24','2021-11-08 11:48:24',NULL),(4,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',6,0,'2008-11-27 06:00:00','2021-11-08 11:48:58',NULL),(5,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',9,0,'1995-10-07 00:00:00','2000-01-14 03:45:00',NULL),(6,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',7,1,'1999-06-07 09:10:50','2005-01-14 03:45:00',NULL),(7,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',3,0,'1999-06-07 23:59:50','2015-11-04 03:45:00',NULL),(8,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',4,0,'2019-04-19 12:19:40','2021-11-04 00:45:00',NULL),(9,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',5,1,'2001-06-19 12:19:40','2021-11-08 11:52:31','2021-11-08 11:52:31'),(10,'Lorem ipsum dolor sit amet consectetur','Morbi dui praesent sociosqu vehicula convallis taciti varius nullam potenti penatibus non per, habitant eleifend imperdiet augue justo pulvinar nulla commodo habitasse cubilia congue. Ullamcorper himenaeos aptent blandit suscipit senectus nec potenti torquent fames, facilisis fermentum vel morbi penatibus ligula condimentum. Iaculis per pretium fusce class ante nisi dictum taciti luctus, ac ad blandit cubilia tellus pulvinar molestie egestas, elementum interdum non auctor facilisis erat lacus habitasse.',5,1,'2001-06-19 12:19:40','2021-11-08 11:53:00','2021-11-08 11:53:00');
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_nota` int NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_nota_idx` (`id_nota`),
  KEY `id_categoria_idx` (`id_categoria`),
  CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `id_nota` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,9,6),(2,5,5),(3,7,3),(4,1,7),(5,2,2),(6,1,3),(7,9,5),(8,6,2),(9,4,5),(10,2,3);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Manuel Vargas','manuelv@hotmail.com'),(2,'Alfonso Diaz','alfodiaz@yahoo.com.ar'),(3,'Julieta Praga','pagra122@yahoo.com.ar'),(4,'Santiago Lopes','sntlpz@gmail.com'),(5,'Barbie Girl','barbieworld@gmail.com'),(6,'Bruno Alvarez','brunitoZ09@gmail.com'),(7,'Juan Perez','juanpee@gmail.com'),(8,'Viviana Gimenez','viviana_g@gmail.com'),(9,'Bianca Piedragrande','piedrachica@gmail.com'),(10,'Carlos Prieto','prieto.carlos@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validar_eliminacion`
--

DROP TABLE IF EXISTS `validar_eliminacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validar_eliminacion` (
  `id` tinyint(1) NOT NULL,
  `respuesta` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validar_eliminacion`
--

LOCK TABLES `validar_eliminacion` WRITE;
/*!40000 ALTER TABLE `validar_eliminacion` DISABLE KEYS */;
INSERT INTO `validar_eliminacion` VALUES (0,'no'),(1,'si');
/*!40000 ALTER TABLE `validar_eliminacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-08 20:05:31
