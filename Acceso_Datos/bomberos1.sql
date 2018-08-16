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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
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
 1 AS `est_encta`*/;
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
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (7,'INCENDIO',1);
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=510 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (500,'2018-08-14 15:01:16',1.8922644,-76.0899811,1,7,1,'imagenes/Foto/fecha(Tue_08_18)/Hora(22_01_20).jpg'),(501,'2018-08-14 15:02:16',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto/fecha(Tue_08_18)/Hora(22_02_20).jpg'),(502,'2018-08-14 15:04:22',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto/fecha(14_08_2018)/Hora(22_04_26).jpg'),(503,'2018-08-14 15:07:16',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto/fecha14_08_2018/Hora/22_07_20.jpg'),(504,'2018-08-14 15:09:30',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_22_09_34.jpg'),(505,'2018-08-14 15:10:25',1.8922722,-76.08998,1,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_22_10_29.jpg'),(506,'2018-08-14 15:18:26',1.8927349479532931,-76.09033785118253,1,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_22_18_30.jpg'),(507,'2018-08-14 16:11:25',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_23_11_29.jpg'),(508,'2018-08-14 16:14:59',37.421998333333335,-122.08400000000002,1,7,1,'imagenes/Foto_Fecha_14_08_2018_Hora_23_15_03.jpg');
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
  `nomb_pgta` varchar(80) DEFAULT NULL,
  `estado_pgta` varchar(10) DEFAULT NULL,
  `tipo_pregunta` int(11) DEFAULT NULL,
  `encuesta2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pgta`),
  KEY `fk_pgta_tipo_pgta_idx` (`tipo_pregunta`),
  KEY `fk_encta_pgta_idx` (`encuesta2`),
  CONSTRAINT `fk_encta_pgta` FOREIGN KEY (`encuesta2`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pgta_tipo_pgta` FOREIGN KEY (`tipo_pregunta`) REFERENCES `tipo_pregunta` (`id_tipo_pgta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (72,'Nombre de quien reporta?','1',1,7),(73,'Numero telefonico','1',1,7);
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
  `nomb_rpta` varchar(45) DEFAULT NULL,
  `estado_rpta` int(11) DEFAULT NULL,
  `pregunta` int(11) DEFAULT NULL,
  `tipo_dato` enum('numerico','texto','multiple') DEFAULT NULL,
  PRIMARY KEY (`id_rpta`),
  KEY `fk_pgta_rpta_idx` (`pregunta`),
  CONSTRAINT `fk_pgta_rpta` FOREIGN KEY (`pregunta`) REFERENCES `pregunta` (`id_pgta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta`
--

LOCK TABLES `respuesta` WRITE;
/*!40000 ALTER TABLE `respuesta` DISABLE KEYS */;
INSERT INTO `respuesta` VALUES (33,'texto',1,72,'texto'),(34,'numerico',1,73,'numerico');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (1,505,'Roque',33),(2,506,'Vanessa',33),(3,507,'zxc',33),(4,508,'3215',34),(5,508,'roqueiad',33);
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
 1 AS `Resultado`*/;
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimiento`
--

LOCK TABLES `seguimiento` WRITE;
/*!40000 ALTER TABLE `seguimiento` DISABLE KEYS */;
INSERT INTO `seguimiento` VALUES (1,'2018-08-16 09:28:18','Herida gravemente',506),(2,'2018-08-16 09:40:36','Accidentada',506),(3,'2018-08-16 10:03:41','Quemada',505),(4,'2018-08-16 10:04:30','reportera accidentada',506),(5,'2018-08-16 10:05:27','Perro accidentado',506),(6,'2018-08-16 10:15:12','Fuga',506),(7,'2018-08-16 10:16:03','Enfermera',506),(8,'2018-08-16 10:40:45','dat',505),(9,'2018-08-16 10:44:03','MUjer enferma',506),(10,'2018-08-16 10:44:18','new',506),(11,'2018-08-16 10:44:41','Pron',506),(12,'2018-08-16 10:45:05','new register',506),(13,'2018-08-16 10:46:26','Operacion naranja',506),(14,'2018-08-16 10:47:31','qw',506),(15,'2018-08-16 10:47:40','a',506),(16,'2018-08-16 10:50:56','Investigacion',506),(17,'2018-08-16 10:51:29','Nueva',506),(18,'2018-08-16 10:53:33','Enferma Psicologicamente',505),(19,'2018-08-16 10:54:42','Proceso de identidad',505),(20,'2018-08-16 10:55:16','procesossssssss',506),(21,'2018-08-16 10:55:49','nmew resid',505),(22,'2018-08-16 11:03:15','jundamente',506),(23,'2018-08-16 11:06:32','jua',506),(24,'2018-08-16 11:07:06','dfg',506),(25,'2018-08-16 11:19:16','nueva Prioridad',505),(26,'2018-08-16 11:20:05','Ambulancia llego ',505);
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
  `identificacion` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `login` varchar(12) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `identificacion_UNIQUE` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,123,'wilson','123','123');
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
/*!50001 VIEW `coordenadas` AS select `eve`.`id_evento` AS `id_evento`,`eve`.`fecha` AS `fecha`,`eve`.`latitud` AS `latitud`,`eve`.`longitud` AS `longitud`,`eve`.`estado` AS `estado`,`eve`.`encuesta` AS `encuesta`,`eve`.`usuario` AS `usuario`,`eve`.`imagen` AS `imagen`,`enc`.`id_encuesta` AS `id_encuesta`,`enc`.`nomb_encta` AS `nomb_encta`,`enc`.`est_encta` AS `est_encta` from (`evento` `eve` join `encuesta` `enc` on((`enc`.`id_encuesta` = `eve`.`encuesta`))) */;
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
/*!50001 VIEW `estadistica_evento` AS select `enc`.`nomb_encta` AS `EVENTO`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `MES`,year(`eve`.`fecha`) AS `AÑO`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by `enc`.`id_encuesta`,`MES`,`AÑO` */;
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
/*!50001 VIEW `resultado_encuesta` AS select `eve`.`id_evento` AS `ID`,`enc`.`nomb_encta` AS `Evento`,`pgta`.`nomb_pgta` AS `Encuesta`,if((`pgta`.`tipo_pregunta` = 1),`result`.`resultado`,`rpta`.`nomb_rpta`) AS `Resultado` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) */;
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

-- Dump completed on 2018-08-16 12:06:13
