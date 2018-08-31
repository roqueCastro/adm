-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 10.97.128.75    Database: bomberos
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_contacto` varchar(50) DEFAULT NULL,
  `encuesta1` int(11) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_contacto`),
  KEY `fk_enc_contacto` (`encuesta1`),
  CONSTRAINT `fk_enc_contacto` FOREIGN KEY (`encuesta1`) REFERENCES `encuesta` (`id_encuesta`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,NULL,7,'3214456486486','r@gmail.com'),(2,NULL,11,'3215567913','ra');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `coordenadas`
--

DROP TABLE IF EXISTS `coordenadas`;
/*!50001 DROP VIEW IF EXISTS `coordenadas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `coordenadas` AS SELECT 
 1 AS `id_evento`,
 1 AS `fecha`,
 1 AS `latitud`,
 1 AS `longitud`,
 1 AS `estado`,
 1 AS `encuesta`,
 1 AS `usuario`,
 1 AS `imagen`,
 1 AS `id_encuesta`,
 1 AS `nomb_encta`,
 1 AS `est_encta`,
 1 AS `ADMIN`,
 1 AS `dia`,
 1 AS `mes`,
 1 AS `ano`,
 1 AS `hora`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `encuesta`
--

DROP TABLE IF EXISTS `encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_encta` varchar(80) DEFAULT NULL,
  `est_encta` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (7,'INCENDIO',1,3),(8,'Basuras',1,0),(9,'Estudiantes',1,0),(10,'Evento yamboro',1,3),(11,'Evaluacion',1,3);
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `estadistica_anual`
--

DROP TABLE IF EXISTS `estadistica_anual`;
/*!50001 DROP VIEW IF EXISTS `estadistica_anual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estadistica_anual` AS SELECT 
 1 AS `EVENTO`,
 1 AS `AÑO`,
 1 AS `TOTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `estadistica_diaria`
--

DROP TABLE IF EXISTS `estadistica_diaria`;
/*!50001 DROP VIEW IF EXISTS `estadistica_diaria`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estadistica_diaria` AS SELECT 
 1 AS `EVENTO`,
 1 AS `HORA`,
 1 AS `TOTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `estadistica_evento`
--

DROP TABLE IF EXISTS `estadistica_evento`;
/*!50001 DROP VIEW IF EXISTS `estadistica_evento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estadistica_evento` AS SELECT 
 1 AS `EVENTO`,
 1 AS `MES`,
 1 AS `AÑO`,
 1 AS `MES_NUM`,
 1 AS `TOTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `estadistica_mensual`
--

DROP TABLE IF EXISTS `estadistica_mensual`;
/*!50001 DROP VIEW IF EXISTS `estadistica_mensual`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estadistica_mensual` AS SELECT 
 1 AS `EVENTO`,
 1 AS `MES`,
 1 AS `AÑO`,
 1 AS `MES_NUM`,
 1 AS `TOTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `encuesta` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `fk_evento_encuesta_idx` (`encuesta`),
  KEY `fk_usuario_evento_idx` (`usuario`),
  CONSTRAINT `fk_evento_encuesta` FOREIGN KEY (`encuesta`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_evento` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (500,'2018-08-14 15:01:16',1.8922644,-76.0899811,0,7,1,'imagenes/Foto/fecha(Tue_08_18)/Hora(22_01_20).jpg'),(501,'2018-08-14 15:02:16',37.421998333333335,-122.08400000000002,0,7,1,'imagenes/Foto/fecha(Tue_08_18)/Hora(22_02_20).jpg'),(502,'2018-06-14 15:04:22',37.421998333333335,-122.08400000000002,0,7,1,'imagenes/Foto/fecha(14_08_2018)/Hora(22_04_26).jpg'),(503,'2018-07-14 15:07:16',37.421998333333335,-122.08400000000002,0,7,1,'imagenes/Foto/fecha14_08_2018/Hora/22_07_20.jpg'),(504,'2018-06-14 15:09:30',37.421998333333335,-122.08400000000002,0,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_22_09_34.jpg'),(505,'2018-02-14 15:10:25',1.8922722,-76.08998,0,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_22_10_29.jpg'),(506,'2018-01-14 15:18:26',1.8927349479532931,-76.09033785118253,0,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_22_18_30.jpg'),(507,'2018-08-14 16:11:25',37.421998333333335,-122.08400000000002,0,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_23_11_29.jpg'),(508,'2018-03-14 16:14:59',37.421998333333335,-122.08400000000002,0,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_23_15_03.jpg'),(510,'2018-04-17 13:44:31',1.8926661236662217,-76.08997359380956,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_44_36.jpg'),(511,'2018-02-17 13:46:50',1.8924966224366488,-76.08974569779348,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_46_56.jpg'),(512,'2018-01-17 13:48:22',1.892234471844296,-76.08977821263018,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_48_28.jpg'),(513,'2018-08-17 13:49:40',1.892195745484094,-76.08982861419307,0,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_49_46.jpg'),(514,'2018-08-17 13:54:49',1.8925276392264243,-76.09008656294885,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_54_54.jpg'),(515,'2018-08-21 13:56:48',1.8921219264546132,-76.0900320372836,0,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_56_54.jpg'),(516,'2018-02-17 13:58:34',1.8921255067146947,-76.08948993273448,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_58_39.jpg'),(517,'2018-08-17 13:59:22',1.8922482624034633,-76.08949579913194,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_20_59_27.jpg'),(518,'2018-08-21 14:00:51',1.8924119769727008,-76.0897398684942,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_21_00_56.jpg'),(519,'2017-02-17 14:24:07',1.8922661,-76.0899729,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_21_24_12.jpg'),(520,'2017-04-17 14:35:04',1.892267,-76.0899735,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_21_35_10.jpg'),(521,'2018-03-17 14:37:47',1.8922688,-76.089982,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_21_37_52.jpg'),(522,'2018-03-17 14:39:17',1.892271,-76.0899819,1,7,1,'imagenes/Foto_Fecha_17_08_2018_Hora_21_39_23.jpg'),(523,'2018-08-24 10:54:30',1.8922454,-76.0899857,1,7,1,'imagenes/Foto_Fecha_20_08_2018_Hora_17_54_30.jpg'),(524,'2018-08-24 11:03:04',1.8922463,-76.0899857,1,7,1,'imagenes/Foto_Fecha_20_08_2018_Hora_18_03_05.jpg'),(525,'2018-08-24 11:57:30',1.8923784494083113,-76.0899784616337,1,7,1,'imagenes/Foto_Fecha_20_08_2018_Hora_18_57_30.jpg'),(526,'2018-08-24 12:02:23',1.89238138378416,-76.0900006578175,0,7,1,'imagenes/Foto_Fecha_20_08_2018_Hora_19_02_24.jpg'),(527,'2018-08-24 12:05:54',1.8922571,-76.0899831,1,7,1,'imagenes/Foto_Fecha_20_08_2018_Hora_19_05_55.jpg'),(528,'2018-08-24 13:59:17',1.8923766032917344,-76.0902025442155,0,8,1,'imagenes/Foto_Fecha_20_08_2018_Hora_20_59_18.jpg'),(529,'2018-08-24 14:02:47',1.8924723551988143,-76.09024199169309,1,7,1,'imagenes/Foto_Fecha_20_08_2018_Hora_21_02_48.jpg'),(530,'2018-08-27 10:23:46',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_27_08_2018_Hora_17_23_48.jpg'),(531,'2018-08-27 10:25:01',37.421998333333335,-122.08400000000002,0,8,1,'imagenes/Foto_Fecha_27_08_2018_Hora_17_25_03.jpg'),(532,'2018-08-27 10:28:16',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_27_08_2018_Hora_17_28_18.jpg'),(533,'2018-08-27 10:34:35',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_27_08_2018_Hora_17_34_37.jpg'),(534,'2018-08-27 10:42:01',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_27_08_2018_Hora_17_42_04.jpg'),(535,'2018-08-29 09:26:44',1.8922595,-76.0899852,1,9,1,'imagenes/Foto_Fecha_29_08_2018_Hora_16_26_47.jpg'),(536,'2018-08-29 13:36:21',37.421998333333335,-122.08400000000002,1,9,1,'imagenes/Foto_Fecha_29_08_2018_Hora_20_36_25.jpg'),(537,'2018-08-29 13:51:48',37.421998333333335,-122.08400000000002,1,10,1,'imagenes/Foto_Fecha_29_08_2018_Hora_20_51_51.jpg'),(538,'2018-08-31 10:52:07',1.8922553,-76.0899746,1,7,1,'imagenes/Foto_Fecha_31_08_2018_Hora_17_52_11.jpg'),(539,'2018-08-31 10:58:11',1.8922474,-76.0899896,0,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_17_58_15.jpg'),(540,'2018-08-31 11:01:49',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_18_01_54.jpg'),(541,'2018-08-31 13:44:13',1.8476655,-76.0633043,0,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_20_44_18.jpg'),(542,'2018-08-31 13:46:55',1.8922476,-76.0899919,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_20_47_00.jpg'),(543,'2018-08-31 14:54:34',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_21_54_39.jpg'),(544,'2018-08-31 15:01:22',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_01_27.jpg'),(545,'2018-08-31 15:31:10',37.421998333333335,-122.08400000000002,1,10,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_31_15.jpg'),(546,'2018-08-31 15:33:59',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_34_04.jpg'),(547,'2018-08-31 15:36:21',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_36_26.jpg'),(548,'2018-08-31 15:39:35',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_39_40.jpg'),(549,'2018-08-31 15:46:09',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_46_14.jpg'),(550,'2018-08-31 15:49:11',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_49_16.jpg'),(551,'2018-08-31 15:51:32',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_51_37.jpg'),(552,'2018-08-31 15:57:01',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_57_06.jpg'),(553,'2018-08-31 15:57:33',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_57_38.jpg'),(554,'2018-08-31 15:58:40',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_22_58_45.jpg'),(555,'2018-08-31 16:00:15',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_23_00_20.jpg'),(556,'2018-08-31 16:55:18',37.421998333333335,-122.08400000000002,1,11,1,'imagenes/Foto_Fecha_31_08_2018_Hora_23_55_23.jpg');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `id_pgta` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_pgta` varchar(300) DEFAULT NULL,
  `estado_pgta` varchar(10) DEFAULT NULL,
  `tipo_pregunta` int(11) DEFAULT NULL,
  `encuesta2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pgta`),
  KEY `fk_pgta_tipo_pgta_idx` (`tipo_pregunta`),
  KEY `fk_encta_pgta_idx` (`encuesta2`),
  CONSTRAINT `fk_encta_pgta` FOREIGN KEY (`encuesta2`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pgta_tipo_pgta` FOREIGN KEY (`tipo_pregunta`) REFERENCES `tipo_pregunta` (`id_tipo_pgta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (72,'Nombre de quien reporta?','1',1,7),(73,'Numero telefonico','1',1,7),(74,'Tipo de basura','1',2,8),(75,'Que significado tiene su proyecto de vida','1',2,9),(76,'Causa del incendio','1',2,7),(77,'¿Cuál es el concepto de gestión humana? ¿Realizar la representación gráfica del concepto?','1',2,7),(78,'¿Cuál considera es la principal fuente de conflicto entre el gerente y el área de gestión humana?\n','1',2,7),(79,'¿Cuál considera es la principal fuente de conflicto entre el gerente y el área de gestión humana?\n','1',2,11),(80,'Nombre y apellidos','1',1,11),(81,'Identificacion','1',1,11);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuesta` (
  `id_rpta` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_rpta` varchar(300) DEFAULT NULL,
  `estado_rpta` int(11) DEFAULT NULL,
  `pregunta` int(11) DEFAULT NULL,
  `tipo_dato` enum('numerico','texto','multiple') DEFAULT NULL,
  PRIMARY KEY (`id_rpta`),
  KEY `fk_pgta_rpta_idx` (`pregunta`),
  CONSTRAINT `fk_pgta_rpta` FOREIGN KEY (`pregunta`) REFERENCES `pregunta` (`id_pgta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (33,'texto',1,72,'texto'),(34,'numerico',1,73,'numerico'),(35,'escombros',1,74,'multiple'),(36,'Plasticos',1,74,'multiple'),(37,'Buena',1,75,'multiple'),(38,'mala',1,75,'multiple'),(39,'vela',1,76,'multiple'),(40,'cigarros',1,76,'multiple'),(41,'Es la integración del cambio, de los requisitos del proyecto son generalmente estables,\nnormalmente solo hay pequeños cambios en la lista de priorizada de pendientes del producto.',1,77,'multiple'),(42,'Son componentes del lado del servidor desarrollados en los que se puedan utilizar y ensamblar\nen distintas aplicaciones que requieran para la empresa.',1,77,'multiple'),(43,'1: Se hace para el conjunto de la organización o una independencia, para un cargo independientemente de su tamaño institucional.',1,79,'multiple'),(44,'2: Nos ayuda a considerar el valor que tienen las personas informadas que son dueñas de información perfecta en los procedimientos',1,79,'multiple'),(45,'texto',1,80,'texto'),(46,'numerico',1,81,'numerico');
/*!40000 ALTER TABLE `respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultado` (
  `id_resultado` int(11) NOT NULL AUTO_INCREMENT,
  `evento` int(11) NOT NULL,
  `resultado` varchar(60) DEFAULT NULL,
  `respuesta` int(11) NOT NULL,
  PRIMARY KEY (`id_resultado`),
  UNIQUE KEY `uniq_resultado` (`resultado`,`evento`),
  KEY `fk_resul_rpta_idx` (`respuesta`),
  KEY `fk_resul_event_idx` (`evento`),
  CONSTRAINT `fk_resul_event` FOREIGN KEY (`evento`) REFERENCES `evento` (`id_evento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resul_resp` FOREIGN KEY (`respuesta`) REFERENCES `respuesta` (`id_rpta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (1,505,'Roque',33),(2,506,'Vanessa',33),(3,507,'zxc',33),(4,508,'3215',34),(5,508,'roqueiad',33),(6,510,'Laura',33),(7,511,'1235',34),(8,511,'laboratorio',33),(9,512,'12345',34),(10,512,'montaña',33),(11,513,'45485',34),(12,513,'enlace',33),(13,514,'9948',34),(14,514,'Biotic',33),(15,515,'948488',34),(16,515,'Medio hierta',33),(17,516,'84849',34),(18,516,'Mirador',33),(20,517,'646166',34),(21,517,'Coordinación',33),(22,518,'Baños',33),(23,519,'8454',34),(24,520,'juan',33),(25,521,'programadora tecnoparque',33),(26,522,'9848844',34),(27,522,'Instructor wilson',33),(28,523,'Laura Cristina',33),(29,524,'312188484',34),(30,524,'roque',33),(31,525,'545464',34),(32,525,'bejehs',33),(33,526,'616',34),(34,526,'wilson',33),(35,527,'6464',34),(36,527,'jsysysys',33),(37,528,'36',36),(38,529,'94646646464664',34),(39,529,'hsh',33),(40,533,'558875',34),(41,534,'3215569875',34),(42,534,'juan',33),(43,535,'37',37),(44,536,'38',38),(45,538,'42',42),(46,539,'44',44),(47,541,'43',43),(48,542,'roqe',45),(49,542,'44',44),(50,555,'44',44),(51,555,'55',46),(52,555,'roque',45);
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resultado_encuesta`
--

DROP TABLE IF EXISTS `resultado_encuesta`;
/*!50001 DROP VIEW IF EXISTS `resultado_encuesta`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `resultado_encuesta` AS SELECT 
 1 AS `ID`,
 1 AS `Evento`,
 1 AS `Encuesta`,
 1 AS `IMAGEN`,
 1 AS `Resultado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `resultado_encuesta_solucion`
--

DROP TABLE IF EXISTS `resultado_encuesta_solucion`;
/*!50001 DROP VIEW IF EXISTS `resultado_encuesta_solucion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `resultado_encuesta_solucion` AS SELECT 
 1 AS `ID`,
 1 AS `Evento`,
 1 AS `Encuesta`,
 1 AS `Resultado`,
 1 AS `SEGUIMIENTO`,
 1 AS `FECHA`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `seguimiento`
--

DROP TABLE IF EXISTS `seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguimiento` (
  `id_seguimiento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(80) DEFAULT NULL,
  `evento` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_seguimiento`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimiento`
--

LOCK TABLES `seguimiento` WRITE;
/*!40000 ALTER TABLE `seguimiento` DISABLE KEYS */;
INSERT INTO `seguimiento` VALUES (1,'2018-08-16 09:28:18','Herida gravemente',506),(2,'2018-08-16 09:40:36','Accidentada',506),(3,'2018-08-16 10:03:41','Quemada',505),(4,'2018-08-16 10:04:30','reportera accidentada',506),(5,'2018-08-16 10:05:27','Perro accidentado',506),(6,'2018-08-16 10:15:12','Fuga',506),(7,'2018-08-16 10:16:03','Enfermera',506),(8,'2018-08-16 10:40:45','dat',505),(9,'2018-08-16 10:44:03','MUjer enferma',506),(10,'2018-08-16 10:44:18','new',506),(11,'2018-08-16 10:44:41','Pron',506),(12,'2018-08-16 10:45:05','new register',506),(13,'2018-08-16 10:46:26','Operacion naranja',506),(14,'2018-08-16 10:47:31','qw',506),(15,'2018-08-16 10:47:40','a',506),(16,'2018-08-16 10:50:56','Investigacion',506),(17,'2018-08-16 10:51:29','Nueva',506),(18,'2018-08-16 10:53:33','Enferma Psicologicamente',505),(19,'2018-08-16 10:54:42','Proceso de identidad',505),(20,'2018-08-16 10:55:16','procesossssssss',506),(21,'2018-08-16 10:55:49','nmew resid',505),(22,'2018-08-16 11:03:15','jundamente',506),(23,'2018-08-16 11:06:32','jua',506),(24,'2018-08-16 11:07:06','dfg',506),(25,'2018-08-16 11:19:16','nueva Prioridad',505),(26,'2018-08-16 11:20:05','Ambulancia llego ',505),(27,'2018-08-17 09:04:50','transito pesado',508),(28,'2018-08-17 09:05:18','Terminando fuga de gas',507),(29,'2018-08-17 09:06:34','Operacion sin validacion cancelado',504),(30,'2018-08-17 09:06:58','Evento sin validacion. Evento cancelado',503),(31,'2018-08-17 09:07:21','evento sin validacion',502),(32,'2018-08-17 09:07:38','Cancelado',501),(33,'2018-08-17 14:02:57','Gaver se incendio',513),(34,'2018-08-17 14:25:20','Derrame',519),(35,'2018-08-21 10:21:18','fuga de gas',515),(36,'2018-08-24 12:04:13','ftg',526),(37,'2018-08-24 14:00:16','Llego el carro al sitio',528),(38,'2018-08-31 13:49:42','Calificacion 5.0',541),(39,'2018-08-31 13:51:29','Calificacion 1.0',539);
/*!40000 ALTER TABLE `seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `seguimiento_table`
--

DROP TABLE IF EXISTS `seguimiento_table`;
/*!50001 DROP VIEW IF EXISTS `seguimiento_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `seguimiento_table` AS SELECT 
 1 AS `ID`,
 1 AS `DESCRIPCION`,
 1 AS `FECHA`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `serie`
--

DROP TABLE IF EXISTS `serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `clave_serie` varchar(99) DEFAULT NULL,
  `nombre_empresa` varchar(45) NOT NULL,
  PRIMARY KEY (`id_serie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serie`
--

LOCK TABLES `serie` WRITE;
/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pregunta`
--

DROP TABLE IF EXISTS `tipo_pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_pregunta` (
  `id_tipo_pgta` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_tipo_pgta` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_pgta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pregunta`
--

LOCK TABLES `tipo_pregunta` WRITE;
/*!40000 ALTER TABLE `tipo_pregunta` DISABLE KEYS */;
INSERT INTO `tipo_pregunta` VALUES (1,'Pregunta Abierta'),(2,'Pregunta Opcion Multiple ');
/*!40000 ALTER TABLE `tipo_pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `login` varchar(12) DEFAULT NULL,
  `password` varchar(95) DEFAULT NULL,
  `rol` enum('Administrador','Publico','Funcionario') DEFAULT NULL,
  `serie` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usuario','123','123','Publico',NULL),(3,'Roque Castro','r@gmail.com','12','Administrador',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `coordenadas`
--

/*!50001 DROP VIEW IF EXISTS `coordenadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `coordenadas` AS select `eve`.`id_evento` AS `id_evento`,`eve`.`fecha` AS `fecha`,`eve`.`latitud` AS `latitud`,`eve`.`longitud` AS `longitud`,`eve`.`estado` AS `estado`,`eve`.`encuesta` AS `encuesta`,`eve`.`usuario` AS `usuario`,`eve`.`imagen` AS `imagen`,`enc`.`id_encuesta` AS `id_encuesta`,`enc`.`nomb_encta` AS `nomb_encta`,`enc`.`est_encta` AS `est_encta`,`enc`.`usuario` AS `ADMIN`,dayofmonth(`eve`.`fecha`) AS `dia`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `mes`,year(`eve`.`fecha`) AS `ano`,cast(`eve`.`fecha` as time) AS `hora` from (`evento` `eve` join `encuesta` `enc` on((`enc`.`id_encuesta` = `eve`.`encuesta`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estadistica_anual`
--

/*!50001 DROP VIEW IF EXISTS `estadistica_anual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `estadistica_anual` AS select `enc`.`nomb_encta` AS `EVENTO`,year(`eve`.`fecha`) AS `AÑO`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by year(`eve`.`fecha`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estadistica_diaria`
--

/*!50001 DROP VIEW IF EXISTS `estadistica_diaria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `estadistica_diaria` AS select `enc`.`nomb_encta` AS `EVENTO`,if((hour(`eve`.`fecha`) > 12),concat((hour(`eve`.`fecha`) - 12),' PM'),concat(hour(`eve`.`fecha`),' AM')) AS `HORA`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) where (cast(`eve`.`fecha` as date) = curdate()) group by `enc`.`id_encuesta`,`HORA`,`eve`.`fecha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estadistica_evento`
--

/*!50001 DROP VIEW IF EXISTS `estadistica_evento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `estadistica_evento` AS select `enc`.`nomb_encta` AS `EVENTO`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `MES`,year(`eve`.`fecha`) AS `AÑO`,month(`eve`.`fecha`) AS `MES_NUM`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by `enc`.`id_encuesta`,`MES`,`AÑO`,`MES_NUM` order by `MES_NUM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estadistica_mensual`
--

/*!50001 DROP VIEW IF EXISTS `estadistica_mensual`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `estadistica_mensual` AS select `enc`.`nomb_encta` AS `EVENTO`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `MES`,year(`eve`.`fecha`) AS `AÑO`,month(`eve`.`fecha`) AS `MES_NUM`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by `enc`.`id_encuesta`,`MES`,`AÑO`,`MES_NUM` order by `MES_NUM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resultado_encuesta`
--

/*!50001 DROP VIEW IF EXISTS `resultado_encuesta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `resultado_encuesta` AS select `eve`.`id_evento` AS `ID`,`enc`.`nomb_encta` AS `Evento`,`pgta`.`nomb_pgta` AS `Encuesta`,`eve`.`imagen` AS `IMAGEN`,if((`pgta`.`tipo_pregunta` = 1),`result`.`resultado`,`rpta`.`nomb_rpta`) AS `Resultado` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resultado_encuesta_solucion`
--

/*!50001 DROP VIEW IF EXISTS `resultado_encuesta_solucion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `resultado_encuesta_solucion` AS select `eve`.`id_evento` AS `ID`,`enc`.`nomb_encta` AS `Evento`,`pgta`.`nomb_pgta` AS `Encuesta`,if((`pgta`.`tipo_pregunta` = 1),`result`.`resultado`,`rpta`.`nomb_rpta`) AS `Resultado`,`segui`.`descripcion` AS `SEGUIMIENTO`,`segui`.`fecha` AS `FECHA` from (((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) join `seguimiento` `segui` on((`eve`.`id_evento` = `segui`.`evento`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `seguimiento_table`
--

/*!50001 DROP VIEW IF EXISTS `seguimiento_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`bomberos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `seguimiento_table` AS select `segui`.`evento` AS `ID`,`segui`.`descripcion` AS `DESCRIPCION`,`segui`.`fecha` AS `FECHA` from `seguimiento` `segui` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-31 16:59:46
