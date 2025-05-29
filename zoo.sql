-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: zoo
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `alimentacion`
--

DROP TABLE IF EXISTS `alimentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimentacion` (
  `id_alimentacion` int NOT NULL AUTO_INCREMENT,
  `id_animal` int DEFAULT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `tipo_alimento` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_alimentacion`),
  KEY `id_animal` (`id_animal`),
  CONSTRAINT `alimentacion_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id_animal`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentacion`
--

LOCK TABLES `alimentacion` WRITE;
/*!40000 ALTER TABLE `alimentacion` DISABLE KEYS */;
INSERT INTO `alimentacion` VALUES (15,16,'2025-05-01 00:00:00.000000','Carne roja','5 kg','Comió bien'),(16,17,'2025-05-01 00:00:00.000000','Heno y frutas','50 kg','Sin novedad'),(17,18,'2025-05-01 00:00:00.000000','Frutas','2 kg','Dejó parte'),(18,19,'2025-05-01 00:00:00.000000','Carne fresca','6 kg','Muy hambriento'),(19,20,'2025-05-01 00:00:00.000000','Hojas de acacia','25 kg','Normal'),(20,21,'2025-05-01 00:00:00.000000','Pescado','4 kg','Activo después de comer'),(21,22,'2025-05-01 00:00:00.000000','Semillas','300 g','Comió todo'),(22,23,'2025-05-01 00:00:00.000000','Frutas y carne','5 kg','Sin apetito'),(23,24,'2025-05-01 00:00:00.000000','Peces pequeños','3 kg','Come bien'),(24,25,'2025-05-01 00:00:00.000000','Hierba','30 kg','Sin observaciones'),(25,26,'2025-05-01 00:00:00.000000','Roedores','500 g','Voraz'),(26,27,'2025-05-01 00:00:00.000000','Insectos','100 g','Activo'),(27,28,'2025-05-01 00:00:00.000000','Alga marina','2 kg','Come con normalidad'),(28,29,'2025-05-01 00:00:00.000000','Carne congelada','1.5 kg','Come lento');
/*!40000 ALTER TABLE `alimentacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animales`
--

DROP TABLE IF EXISTS `animales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animales` (
  `id_animal` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `id_especie` int DEFAULT NULL,
  `id_habitat` int DEFAULT NULL,
  `id_cuidador` int DEFAULT NULL,
  `dieta` enum('Herbívoro','Carnívoro','Omnívoro') NOT NULL,
  `peso` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `id_especie` (`id_especie`),
  KEY `id_habitat` (`id_habitat`),
  KEY `id_cuidador` (`id_cuidador`),
  CONSTRAINT `animales_ibfk_1` FOREIGN KEY (`id_especie`) REFERENCES `especies` (`id_especie`) ON DELETE SET NULL,
  CONSTRAINT `animales_ibfk_2` FOREIGN KEY (`id_habitat`) REFERENCES `habitats` (`id_habitat`) ON DELETE SET NULL,
  CONSTRAINT `animales_ibfk_3` FOREIGN KEY (`id_cuidador`) REFERENCES `cuidadores` (`id_cuidador`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animales`
--

LOCK TABLES `animales` WRITE;
/*!40000 ALTER TABLE `animales` DISABLE KEYS */;
INSERT INTO `animales` VALUES (16,'León Simba',1,1,1,'Carnívoro','190 kg','leon.jpg'),(17,'Elefanta Lola',2,2,2,'Herbívoro','2800 kg','elefante.jpg'),(18,'Mono Coco',3,3,3,'Omnívoro','35 kg','mono.jpg'),(19,'Tigre Rayas',4,1,1,'Carnívoro','220 kg','tigre.jpg'),(20,'Jirafa Linda',5,2,2,'Herbívoro','800 kg','jirafa.jpg'),(21,'Cocodrilo Max',6,4,3,'Carnívoro','500 kg','cocodrilo.jpg'),(22,'Guacamaya Azul',7,5,4,'Herbívoro','1.2 kg','guacamaya.jpg'),(23,'Oso Bruno',8,6,5,'Omnívoro','350 kg','oso.jpg'),(24,'Pingüino Polo',9,7,6,'Carnívoro','30 kg','pinguino.jpg'),(25,'Cebra Raya',10,2,2,'Herbívoro','300 kg','cebra.jpg'),(26,'Águila Real',11,5,4,'Carnívoro','6 kg','aguila.jpg'),(27,'Rana Verde',12,8,7,'Carnívoro','0.3 kg','rana.jpg'),(28,'Tortuga Marina',13,9,6,'Herbívoro','200 kg','tortuga.jpg'),(29,'Zorro Ártico',14,10,8,'Carnívoro','12 kg','zorro.jpg'),(30,'Mapache',NULL,NULL,NULL,'Omnívoro','5',NULL),(31,'Panda Rojo',NULL,NULL,NULL,'Omnívoro','5',NULL),(32,'Panda Rojo',NULL,NULL,NULL,'Omnívoro','5',NULL),(33,'Oso Panda',NULL,NULL,NULL,'Omnívoro','10',NULL),(34,'Oso Panditaaa',NULL,NULL,NULL,'Omnívoro','13',NULL),(35,'aguila',NULL,NULL,NULL,'Carnívoro','8',NULL);
/*!40000 ALTER TABLE `animales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuidadores`
--

DROP TABLE IF EXISTS `cuidadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuidadores` (
  `id_cuidador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cuidador`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuidadores`
--

LOCK TABLES `cuidadores` WRITE;
/*!40000 ALTER TABLE `cuidadores` DISABLE KEYS */;
INSERT INTO `cuidadores` VALUES (1,'Carlos Ramírez','55-1234-5678','carlos.ramirez@zookora.com','carlos.jpg'),(2,'Ana Torres','55-2345-6789','ana.torres@zookora.com','ana.jpg'),(3,'Luis Pérez','55-3456-7890','luis.perez@zookora.com','luis.jpg'),(4,'María Gómez','55-4567-8901','maria.gomez@zookora.com','maria.jpg'),(5,'Juan López','55-5678-9012','juan.lopez@zookora.com','juan.jpg'),(6,'Lucía Martínez','55-6789-0123','lucia.martinez@zookora.com','lucia.jpg'),(7,'Pedro Sánchez','55-7890-1234','pedro.sanchez@zookora.com','pedro.jpg'),(8,'Sofía Herrera','55-8901-2345','sofia.herrera@zookora.com','sofia.jpg'),(9,'José García','55-9012-3456','jose.garcia@zookora.com','jose.jpg'),(10,'Diana Ruiz','55-0123-4567','diana.ruiz@zookora.com','diana.jpg');
/*!40000 ALTER TABLE `cuidadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especies`
--

DROP TABLE IF EXISTS `especies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especies` (
  `id_especie` int NOT NULL AUTO_INCREMENT,
  `nombre_cientifico` varchar(255) DEFAULT NULL,
  `nombre_comun` varchar(255) DEFAULT NULL,
  `clase` enum('Mamífero','Ave','Reptil','Anfibio','Pez','Invertebrado') NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_especie`),
  UNIQUE KEY `nombre_cientifico` (`nombre_cientifico`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especies`
--

LOCK TABLES `especies` WRITE;
/*!40000 ALTER TABLE `especies` DISABLE KEYS */;
INSERT INTO `especies` VALUES (1,'Panthera leo','León','Mamífero','leon.jpg'),(2,'Loxodonta africana','Elefante africano','Mamífero','elefante.jpg'),(3,'Cebus capucinus','Mono capuchino','Mamífero','mono.jpg'),(4,'Panthera tigris','Tigre','Mamífero','tigre.jpg'),(5,'Giraffa camelopardalis','Jirafa','Mamífero','jirafa.jpg'),(6,'Crocodylus niloticus','Cocodrilo','Reptil','cocodrilo.jpg'),(7,'Ara ararauna','Guacamaya azul','Ave','guacamaya.jpg'),(8,'Ursus arctos','Oso pardo','Mamífero','oso.jpg'),(9,'Spheniscus demersus','Pingüino','Ave','pinguino.jpg'),(10,'Equus zebra','Cebra','Mamífero','cebra.jpg'),(11,'Aquila chrysaetos','Águila real','Ave','aguila.jpg'),(12,'Hyla arborea','Rana verde','Anfibio','rana.jpg'),(13,'Chelonia mydas','Tortuga marina','Reptil','tortuga.jpg'),(14,'Vulpes lagopus','Zorro ártico','Invertebrado',NULL),(16,'machapaaa','Mapache','Mamífero',NULL);
/*!40000 ALTER TABLE `especies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitats`
--

DROP TABLE IF EXISTS `habitats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitats` (
  `id_habitat` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `continente` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_habitat`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitats`
--

LOCK TABLES `habitats` WRITE;
/*!40000 ALTER TABLE `habitats` DISABLE KEYS */;
INSERT INTO `habitats` VALUES (1,'Sabana Africana','África','sabana.jpg'),(2,'Selva del Congo','África','selva.jpg'),(3,'Amazonas','América','amazonas.jpg'),(4,'Delta del Nilo','África','nilo.jpg'),(5,'Bosques Andinos','América','andinos.jpg'),(6,'Bosque Boreal','Europa','boreal.jpg'),(7,'Antártida','Antártida','antartida.jpg'),(8,'Manglares','Asia','manglares.jpg'),(9,'Islas Galápagos','América','galapagos.jpg'),(10,'Tundra Ártica','Ártico','tundra.jpg'),(11,'Desierto del Sahara','África',NULL);
/*!40000 ALTER TABLE `habitats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salud`
--

DROP TABLE IF EXISTS `salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salud` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `id_animal` int DEFAULT NULL,
  `id_cuidador` int DEFAULT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `estado` enum('Saludable','Enfermo','Tratamiento','Recuperado') DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `id_animal` (`id_animal`),
  KEY `id_cuidador` (`id_cuidador`),
  CONSTRAINT `salud_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animales` (`id_animal`) ON DELETE CASCADE,
  CONSTRAINT `salud_ibfk_2` FOREIGN KEY (`id_cuidador`) REFERENCES `cuidadores` (`id_cuidador`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salud`
--

LOCK TABLES `salud` WRITE;
/*!40000 ALTER TABLE `salud` DISABLE KEYS */;
INSERT INTO `salud` VALUES (1,16,1,'2025-04-30 00:00:00.000000','Saludable','Sin síntomas visibles'),(2,17,2,'2025-04-30 00:00:00.000000','Tratamiento','Tratamiento desparasitante'),(3,18,3,'2025-04-30 00:00:00.000000','Recuperado','Ya camina con normalidad'),(4,19,1,'2025-04-30 00:00:00.000000','Saludable','Actitud activa'),(5,20,2,'2025-04-30 00:00:00.000000','Enfermo','Con falta de apetito'),(6,21,3,'2025-04-30 00:00:00.000000','Saludable','Sin heridas'),(7,22,4,'2025-04-30 00:00:00.000000','Saludable','Muy activo'),(8,23,5,'2025-04-30 00:00:00.000000','Tratamiento','Con infección tratada'),(9,24,6,'2025-04-30 00:00:00.000000','Saludable','Ronda normalmente'),(10,25,2,'2025-04-30 00:00:00.000000','Recuperado','Buen estado general'),(11,26,4,'2025-04-30 00:00:00.000000','Saludable','Buena alimentación'),(12,27,7,'2025-04-30 00:00:00.000000','Enfermo','Con hongos en piel'),(13,28,6,'2025-04-30 00:00:00.000000','Saludable','Buen comportamiento'),(14,29,8,'2025-04-30 00:00:00.000000','Saludable','Ningún signo de enfermedad');
/*!40000 ALTER TABLE `salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` enum('ADMINISTRADOR','CUIDADOR') NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Corazon Garcia','cora@zookora.com','$2a$10$0xOJRcn7afnVKRsw063Oj.yT9TlOhFNO2cobMtZ7uKsemkcUa8wC2','ADMINISTRADOR',1),(2,'José Manuel','josemanuel@zookora.com','$2a$10$0xOJRcn7afnVKRsw063Oj.yT9TlOhFNO2cobMtZ7uKsemkcUa8wC2','ADMINISTRADOR',1),(3,'Carlos Ramírez','carlos.ramirez@zookora.com','$2a$10$i2RpR81iX2o3OWUia38VuuJy4trvK6cQNXNI1FmhYyls.XEGTmjkC','CUIDADOR',1),(4,'Ana Torres','ana.torres@zookora.com','$2a$10$i2RpR81iX2o3OWUia38VuuJy4trvK6cQNXNI1FmhYyls.XEGTmjkC','CUIDADOR',1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitantes`
--

DROP TABLE IF EXISTS `visitantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitantes` (
  `id_visitante` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_visitante`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitantes`
--

LOCK TABLES `visitantes` WRITE;
/*!40000 ALTER TABLE `visitantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 23:32:26
