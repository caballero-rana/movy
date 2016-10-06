-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: movy
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
-- Table structure for table `comunas`
--

DROP TABLE IF EXISTS `comunas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comunas` (
  `idComuna` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionComunas` varchar(45) DEFAULT NULL,
  `idRegion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idComuna`),
  UNIQUE KEY `idComuna_UNIQUE` (`idComuna`),
  KEY `fk_com_reg_idx` (`idRegion`),
  CONSTRAINT `com_reg_fk` FOREIGN KEY (`idRegion`) REFERENCES `regiones` (`idRegion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunas`
--

LOCK TABLES `comunas` WRITE;
/*!40000 ALTER TABLE `comunas` DISABLE KEYS */;
INSERT INTO `comunas` VALUES (1,'Arica',15),(2,'Camarones',15),(3,'Putre',15),(4,'General Lagos',15),(5,'Iquique',1),(6,'Camiña',1),(7,'Colchane',1),(8,'Huara',1),(9,'Pica',1),(10,'Pozo Almonte',1),(11,'Alto Hospicio',1),(12,'Antofagasta',2),(13,'Mejillones',2),(14,'Sierra Gorda',2),(15,'Taltal',2),(16,'Calama',2),(17,'Ollagüe',2),(18,'San Pedro de Atacama',2),(19,'Tocopilla',2),(20,'María Elena',2),(21,'Copiapó',3),(22,'Caldera',3),(23,'Tierra Amarilla',3),(24,'Chañaral',3),(25,'Diego de Almagro',3),(26,'Vallenar',3),(27,'Alto del Carmen',3),(28,'Freirina',3),(29,'Huasco',3),(30,'La Serena',4),(31,'Coquimbo',4),(32,'Andacollo',4),(33,'La Higuera',4),(34,'Paiguano',4),(35,'Vicuña',4),(36,'Illapel',4),(37,'Canela',4),(38,'Los Vilos',4),(39,'Salamanca',4),(40,'Ovalle',4),(41,'Combarbalá',4),(42,'Monte Patria',4),(43,'Punitaqui',4),(44,'Río Hurtado',4),(45,'Valparaíso',5),(46,'Casablanca',5),(47,'Concón',5),(48,'Juan Fernández',5),(49,'Puchuncaví',5),(50,'Quilpué',5),(51,'Quintero',5),(52,'Villa Alemana',5),(53,'Viña del Mar',5),(54,'Isla  de Pascua',5),(55,'Los Andes',5),(56,'Calle Larga',5),(57,'Rinconada',5),(58,'San Esteban',5),(59,'La Ligua',5),(60,'Cabildo',5),(61,'Papudo',5),(62,'Petorca',5),(63,'Zapallar',5),(64,'Quillota',5),(65,'Calera',5),(66,'Hijuelas',5),(67,'La Cruz',5),(68,'Limache',5),(69,'Nogales',5),(70,'Olmué',5),(71,'San Antonio',5),(72,'Algarrobo',5),(73,'Cartagena',5),(74,'El Quisco',5),(75,'El Tabo',5),(76,'Santo Domingo',5),(77,'San Felipe',5),(78,'Catemu',5),(79,'Llaillay',5),(80,'Panquehue',5),(81,'Putaendo',5),(82,'Santa María',5),(83,'Rancagua',6),(84,'Codegua',6),(85,'Coinco',6),(86,'Coltauco',6),(87,'Doñihue',6),(88,'Graneros',6),(89,'Las Cabras',6),(90,'Machalí',6),(91,'Malloa',6),(92,'Mostazal',6),(93,'Olivar',6),(94,'Peumo',6),(95,'Pichidegua',6),(96,'Quinta de Tilcoco',6),(97,'Rengo',6),(98,'Requínoa',6),(99,'San Vicente',6),(100,'Pichilemu',6),(101,'La Estrella',6),(102,'Litueche',6),(103,'Marchihue',6),(104,'Navidad',6),(105,'Paredones',6),(106,'San Fernando',6),(107,'Chépica',6),(108,'Chimbarongo',6),(109,'Lolol',6),(110,'Nancagua',6),(111,'Palmilla',6),(112,'Peralillo',6),(113,'Placilla',6),(114,'Pumanque',6),(115,'Santa Cruz',6),(116,'Talca',7),(117,'Constitución',7),(118,'Curepto',7),(119,'Empedrado',7),(120,'Maule',7),(121,'Pelarco',7),(122,'Pencahue',7),(123,'Río Claro',7),(124,'San Clemente',7),(125,'San Rafael',7),(126,'Cauquenes',7),(127,'Chanco',7),(128,'Pelluhue',7),(129,'Curicó',7),(130,'Hualañé',7),(131,'Licantén',7),(132,'Molina',7),(133,'Rauco',7),(134,'Romeral',7),(135,'Sagrada Familia',7),(136,'Teno',7),(137,'Vichuquén',7),(138,'Linares',7),(139,'Colbún',7),(140,'Longaví',7),(141,'Parral',7),(142,'Retiro',7),(143,'San Javier',7),(144,'Villa Alegre',7),(145,'Yerbas Buenas',7),(146,'Concepción',8),(147,'Coronel',8),(148,'Chiguayante',8),(149,'Florida',8),(150,'Hualqui',8),(151,'Lota',8),(152,'Penco',8),(153,'San Pedro de la Paz',8),(154,'Santa Juana',8),(155,'Talcahuano',8),(156,'Tomé',8),(157,'Hualpén',8),(158,'Lebu',8),(159,'Arauco',8),(160,'Cañete',8),(161,'Contulmo',8),(162,'Curanilahue',8),(163,'Los Álamos',8),(164,'Tirúa',8),(165,'Los Ángeles',8),(166,'Antuco',8),(167,'Cabrero',8),(168,'Laja',8),(169,'Mulchén',8),(170,'Nacimiento',8),(171,'Negrete',8),(172,'Quilaco',8),(173,'Quilleco',8),(174,'San Rosendo',8),(175,'Santa Bárbara',8),(176,'Tucapel',8),(177,'Yumbel',8),(178,'Alto Biobío',8),(179,'Chillán',8),(180,'Bulnes',8),(181,'Cobquecura',8),(182,'Coelemu',8),(183,'Coihueco',8),(184,'Chillán Viejo',8),(185,'El Carmen',8),(186,'Ninhue',8),(187,'Ñiquén',8),(188,'Pemuco',8),(189,'Pinto',8),(190,'Portezuelo',8),(191,'Quillón',8),(192,'Quirihue',8),(193,'Ránquil',8),(194,'San Carlos',8),(195,'San Fabián',8),(196,'San Ignacio',8),(197,'San Nicolás',8),(198,'Treguaco',8),(199,'Yungay',8),(200,'Temuco',9),(201,'Carahue',9),(202,'Cunco',9),(203,'Curarrehue',9),(204,'Freire',9),(205,'Galvarino',9),(206,'Gorbea',9),(207,'Lautaro',9),(208,'Loncoche',9),(209,'Melipeuco',9),(210,'Nueva Imperial',9),(211,'Padre Las Casas',9),(212,'Perquenco',9),(213,'Pitrufquén',9),(214,'Pucón',9),(215,'Saavedra',9),(216,'Teodoro Schmidt',9),(217,'Toltén',9),(218,'Vilcún',9),(219,'Villarrica',9),(220,'Cholchol',9),(221,'Angol',9),(222,'Collipulli',9),(223,'Curacautín',9),(224,'Ercilla',9),(225,'Lonquimay',9),(226,'Los Sauces',9),(227,'Lumaco',9),(228,'Purén',9),(229,'Renaico',9),(230,'Traiguén',9),(231,'Victoria',9),(232,'Valdivia',14),(233,'Corral',14),(234,'Futrono',14),(235,'La Unión',14),(236,'Lago Ranco',14),(237,'Lanco',14),(238,'Los Lagos',14),(239,'Máfil',14),(240,'Mariquina',14),(241,'Paillaco',14),(242,'Panguipulli',14),(243,'Río Bueno',14),(244,'Puerto Montt',10),(245,'Calbuco',10),(246,'Cochamó',10),(247,'Fresia',10),(248,'Frutillar',10),(249,'Los Muermos',10),(250,'Llanquihue',10),(251,'Maullín',10),(252,'Puerto Varas',10),(253,'Castro',10),(254,'Ancud',10),(255,'Chonchi',10),(256,'Curaco de Vélez',10),(257,'Dalcahue',10),(258,'Puqueldón',10),(259,'Queilén',10),(260,'Quellón',10),(261,'Quemchi',10),(262,'Quinchao',10),(263,'Osorno',10),(264,'Puerto Octay',10),(265,'Purranque',10),(266,'Puyehue',10),(267,'Río Negro',10),(268,'San Juan de la Costa',10),(269,'San Pablo',10),(270,'Chaitén',10),(271,'Futaleufú',10),(272,'Hualaihué',10),(273,'Palena',10),(274,'Coihaique',11),(275,'Lago Verde',11),(276,'Aisén',11),(277,'Cisnes',11),(278,'Guaitecas',11),(279,'Cochrane',11),(280,'OHiggins',11),(281,'Tortel',11),(282,'Chile Chico',11),(283,'Río Ibáñez',11),(284,'Punta Arenas',12),(285,'Laguna Blanca',12),(286,'Río Verde',12),(287,'San Gregorio',12),(288,'Cabo de Hornos',12),(289,'Antártica',12),(290,'Porvenir',12),(291,'Primavera',12),(292,'Timaukel',12),(293,'Natales',12),(294,'Torres del Paine',12),(295,'Santiago',13),(296,'Cerrillos',13),(297,'Cerro Navia',13),(298,'Conchalí',13),(299,'El Bosque',13),(300,'Estación Central',13),(301,'Huechuraba',13),(302,'Independencia',13),(303,'La Cisterna',13),(304,'La Florida',13),(305,'La Granja',13),(306,'La Pintana',13),(307,'La Reina',13),(308,'Las Condes',13),(309,'Lo Barnechea',13),(310,'Lo Espejo',13),(311,'Lo Prado',13),(312,'Macul',13),(313,'Maipú',13),(314,'Ñuñoa',13),(315,'Pedro Aguirre Cerda',13),(316,'Peñalolén',13),(317,'Providencia',13),(318,'Pudahuel',13),(319,'Quilicura',13),(320,'Quinta Normal',13),(321,'Recoleta',13),(322,'Renca',13),(323,'San Joaquín',13),(324,'San Miguel',13),(325,'San Ramón',13),(326,'Vitacura',13),(327,'Puente Alto',13),(328,'Pirque',13),(329,'San José de Maipo',13),(330,'Colina',13),(331,'Lampa',13),(332,'Tiltil',13),(333,'San Bernardo',13),(334,'Buin',13),(335,'Calera de Tango',13),(336,'Paine',13),(337,'Melipilla',13),(338,'Alhué',13),(339,'Curacaví',13),(340,'María Pinto',13),(341,'San Pedro',13),(342,'Talagante',13),(343,'El Monte',13),(344,'Isla de Maipo',13),(345,'Padre Hurtado',13),(346,'Peñaflor',13);
/*!40000 ALTER TABLE `comunas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `rutPersona` int(11) NOT NULL,
  `calle` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `dpto` varchar(45) DEFAULT NULL,
  `idComuna` int(11) NOT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `fijo` varchar(45) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  KEY `fk_dir_per_idx` (`rutPersona`),
  KEY `fk_dir_com_idx` (`idComuna`),
  CONSTRAINT `fk_dir_com` FOREIGN KEY (`idComuna`) REFERENCES `comunas` (`idComuna`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_per_dir` FOREIGN KEY (`rutPersona`) REFERENCES `usuarios` (`rutPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_planillas`
--

DROP TABLE IF EXISTS `historico_planillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_planillas` (
  `idPlanilla` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `patente` varchar(10) NOT NULL,
  `rutPersona` int(11) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `pagada` bit(1) NOT NULL DEFAULT b'0',
  `activa` bit(1) DEFAULT b'0',
  `numeroMovil` int(11) NOT NULL,
  `comentario` text,
  `editable` bit(1) DEFAULT b'1',
  `rutUsuarioGraba` int(11) DEFAULT NULL,
  `rutUsuarioElimina` int(11) DEFAULT NULL,
  `rutUsuarioCobra` int(11) DEFAULT NULL,
  `fechaPago` timestamp NULL DEFAULT NULL,
  `fechaElimina` timestamp NULL DEFAULT NULL,
  `fechaMigracion` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `idPlanilla_UNIQUE` (`idPlanilla`),
  KEY `per_gra_idx` (`rutUsuarioGraba`),
  KEY `per_del_idx` (`rutUsuarioElimina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_planillas`
--

LOCK TABLES `historico_planillas` WRITE;
/*!40000 ALTER TABLE `historico_planillas` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_planillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ins_usu_rol`
--

DROP TABLE IF EXISTS `ins_usu_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_usu_rol` (
  `idRol` int(11) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  `rutPersona` int(11) NOT NULL,
  `activo` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`idRol`,`idInstitucion`,`rutPersona`),
  KEY `fk_cruce_ins_idx` (`idInstitucion`),
  KEY `fk_cruce_per_idx` (`rutPersona`),
  CONSTRAINT `fk_cruce_ins` FOREIGN KEY (`idInstitucion`) REFERENCES `instituciones` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cruce_per` FOREIGN KEY (`rutPersona`) REFERENCES `usuarios` (`rutPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cruce_rol` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ins_usu_rol`
--

LOCK TABLES `ins_usu_rol` WRITE;
/*!40000 ALTER TABLE `ins_usu_rol` DISABLE KEYS */;
INSERT INTO `ins_usu_rol` VALUES (1,1,13828647,''),(1,1,17498583,'');
/*!40000 ALTER TABLE `ins_usu_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituciones`
--

DROP TABLE IF EXISTS `instituciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituciones` (
  `idInstitucion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionInstituciones` varchar(200) NOT NULL,
  `nombreCorto` varchar(45) NOT NULL,
  `urlIcono` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idInstitucion`),
  UNIQUE KEY `idInstituciones_UNIQUE` (`idInstitucion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituciones`
--

LOCK TABLES `instituciones` WRITE;
/*!40000 ALTER TABLE `instituciones` DISABLE KEYS */;
INSERT INTO `instituciones` VALUES (1,'Movy','Movy','');
/*!40000 ALTER TABLE `instituciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `idNotificaciones` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcionNotificacion` varchar(200) NOT NULL,
  `rutPersonaDestino` int(11) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  `rutPersonaIngresa` int(11) NOT NULL,
  `fecha` varchar(45) DEFAULT 'sysdate()',
  PRIMARY KEY (`idNotificaciones`),
  KEY `fk_not_per_idx` (`rutPersonaDestino`),
  KEY `fk_not_ins_idx` (`idInstitucion`),
  KEY `fk_not_per_in_idx` (`rutPersonaIngresa`),
  CONSTRAINT `fk_not_ins` FOREIGN KEY (`idInstitucion`) REFERENCES `instituciones` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_not_per` FOREIGN KEY (`rutPersonaDestino`) REFERENCES `usuarios` (`rutPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_not_per_in` FOREIGN KEY (`rutPersonaIngresa`) REFERENCES `usuarios` (`rutPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planillas`
--

DROP TABLE IF EXISTS `planillas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planillas` (
  `idPlanilla` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `patente` varchar(10) NOT NULL,
  `rutPersona` int(11) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `pagada` bit(1) NOT NULL DEFAULT b'0',
  `activa` bit(1) DEFAULT b'0',
  `numeroMovil` int(11) NOT NULL,
  `comentario` text,
  `editable` bit(1) DEFAULT b'1',
  `rutUsuarioGraba` int(11) DEFAULT NULL,
  `rutUsuarioElimina` int(11) DEFAULT NULL,
  `rutUsuarioCobra` int(11) DEFAULT NULL,
  `fechaPago` timestamp NULL DEFAULT NULL,
  `fechaElimina` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `idPlanilla_UNIQUE` (`idPlanilla`),
  KEY `per_gra_idx` (`rutUsuarioGraba`),
  KEY `per_del_idx` (`rutUsuarioElimina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planillas`
--

LOCK TABLES `planillas` WRITE;
/*!40000 ALTER TABLE `planillas` DISABLE KEYS */;
/*!40000 ALTER TABLE `planillas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_veh_ins`
--

DROP TABLE IF EXISTS `pro_veh_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_veh_ins` (
  `rutPersona` int(11) NOT NULL,
  `patente` varchar(10) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  PRIMARY KEY (`rutPersona`,`patente`,`idInstitucion`),
  KEY `fk_pvi_v_idx` (`patente`),
  KEY `fk_pvi_i_idx` (`idInstitucion`),
  CONSTRAINT `fk_pvi_i` FOREIGN KEY (`idInstitucion`) REFERENCES `instituciones` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pvi_p` FOREIGN KEY (`rutPersona`) REFERENCES `usuarios` (`rutPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pvi_v` FOREIGN KEY (`patente`) REFERENCES `vehiculos` (`patente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_veh_ins`
--

LOCK TABLES `pro_veh_ins` WRITE;
/*!40000 ALTER TABLE `pro_veh_ins` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_veh_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regiones` (
  `idRegion` int(11) NOT NULL,
  `descripcionRegion` varchar(45) NOT NULL,
  PRIMARY KEY (`idRegion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (1,'Tarapacá'),(2,'Antofagasta'),(3,'Atacama'),(4,'Coquimbo'),(5,'Valparaíso'),(6,'OHiggins'),(7,'Maule'),(8,'Bío-Bío'),(9,'La Araucanía'),(10,'Los Lagos'),(11,'Aysén'),(12,'Magallanes'),(13,'Metropolitana de Santiago'),(14,'Los Ríos'),(15,'Arica y Parinacota');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcionRol` varchar(45) NOT NULL,
  `seleccionable` int(11) DEFAULT '0',
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `idRol_UNIQUE` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'DIOS',0),(2,'Adminisrador',0),(3,'Caja',1),(4,'Conductor',1),(5,'Propietario',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas` (
  `idInstitucion` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `tipo` char(1) DEFAULT NULL,
  KEY `ins_tar_idx` (`idInstitucion`),
  CONSTRAINT `ins_tar` FOREIGN KEY (`idInstitucion`) REFERENCES `instituciones` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `nombre` varchar(45) NOT NULL,
  `apellidoPaterno` varchar(45) NOT NULL,
  `apellidoMaterno` varchar(45) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `rutPersona` int(11) NOT NULL,
  `dv` varchar(1) NOT NULL,
  `nombreUsuario` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `idPersonaIngresa` int(11) NOT NULL,
  `fechaVencimiento` date DEFAULT NULL,
  PRIMARY KEY (`rutPersona`),
  UNIQUE KEY `rut_UNIQUE` (`rutPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('Orlando','Opazo','Moncada','1980-02-01',13828647,'9','caballero-rana','',0,'2050-12-31'),('Jose','Tolosa','Tolosa','1990-09-20',17498583,'9','yuidarlean','',0,'2050-12-31');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veh_cho_ins`
--

DROP TABLE IF EXISTS `veh_cho_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veh_cho_ins` (
  `rutPersona` int(11) NOT NULL,
  `patente` varchar(10) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  `activo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`rutPersona`,`patente`,`idInstitucion`),
  KEY `fk_match_per_vehi_idx` (`rutPersona`),
  KEY `fk_match_vehi_per_idx` (`patente`),
  KEY `fk_per_veh_ins_idx` (`idInstitucion`),
  CONSTRAINT `mez_ins` FOREIGN KEY (`idInstitucion`) REFERENCES `instituciones` (`idInstitucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `mez_per` FOREIGN KEY (`rutPersona`) REFERENCES `usuarios` (`rutPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `mez_veh` FOREIGN KEY (`patente`) REFERENCES `vehiculos` (`patente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veh_cho_ins`
--

LOCK TABLES `veh_cho_ins` WRITE;
/*!40000 ALTER TABLE `veh_cho_ins` DISABLE KEYS */;
/*!40000 ALTER TABLE `veh_cho_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculos` (
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `patente` varchar(10) NOT NULL,
  `anio` int(11) NOT NULL,
  `numeroMovil` int(11) NOT NULL,
  `activo` bit(1) DEFAULT b'0',
  PRIMARY KEY (`patente`),
  UNIQUE KEY `patente_UNIQUE` (`patente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'movy'
--

--
-- Dumping routines for database 'movy'
--
/*!50003 DROP PROCEDURE IF EXISTS `activarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `activarUsuario`(
	
	 in p_institucion int
	,in p_rutPersona int
)
Begin

update
	ins_usu_rol
set
	 activo = true
where
	idInstitucion = p_institucion
and	rutPersona = p_rutPersona;





end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `autenticar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `autenticar`(

	in user varchar(15),
	in pass varchar(200)
)
Begin

SELECT 
    nombre,
    apellidoPaterno,
    apellidoMaterno,
    fechaNacimiento,
    rutPersona,
    dv,
    nombreUsuario
FROM usuarios u 
where	nombreUsuario = user
and	password = pass;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambioDeContrasena` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `cambioDeContrasena`(

	 in p_usuario varchar(45)
	,in p_password varchar(200)
	,in p_passwordNuevo varchar(200)
	,in p_rut int

)
Begin


update
	personas
set
	`password` = p_passwordNuevo
where	
	nombreUsuario = p_usuario
and	`password` = p_password
and rutPersona = p_rut;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `desactivarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `desactivarUsuario`(
	
	 in p_institucion int
	,in p_rutPersona int
)
Begin

update
	ins_usu_rol
set
	 activo = false
where
	idInstitucion = p_institucion
and	rutPersona = p_rutPersona;





end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarChoferDelVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `eliminarChoferDelVehiculo`(

	 in p_patente varchar(10)
	,in p_idInstitucion int
)
Begin

DECLARE v_registro int;

delete from veh_cho_ins
where  patente = p_patente
and idInstitucion =  p_idInstitucion;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPlanilla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `eliminarPlanilla`(

	 in p_idPlanilla int
	,in p_rutUsuarioElimina int
	,in p_fechaElimina timestamp

)
Begin

Update
	planillas
Set
	 activa = false
	,rutUsuarioElimina = p_rutUsuarioElimina
	,fechaElimina = p_fechaElimina
where	
	idPlanilla = p_idPlanilla;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarRol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `eliminarRol`(

	 in p_rutPersona int
	,in p_idInstitucion int	
	,in p_idRol int
)
Begin

delete from ins_usu_rol
where
	rutPersona = p_rutPersona
and	idInstitucion = p_idInstitucion
and idRol = p_idRol;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `existeUsuarioRutInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `existeUsuarioRutInstitucion`(

	 in p_rut int
	,in p_dv varchar(1)
	,in p_idInstitucion int
	
)
Begin

select distinct
	p.rutPersona
from 
	personas p inner join ins_usu_rol m on m.rutPersona = p.rutPersona
where p.rutPersona = p_rut
and	p.dv = p_dv
and m.idInstitucion = p_idInstitucion;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getChoferesPorInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getChoferesPorInstitucion`(

	 in p_institucion int

)
Begin

select
	 p.nombre
	,p.apellidoPaterno
	,p.apellidoMaterno
	,p.rutPersona
	,p.dv
FROM
	ins_usu_rol m inner join personas p on p.rutPersona = m.rutPersona
where	
	m.idInstitucion = p_institucion
and	m.idRol = 4
order by
	nombre;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getChoferPorIdPersonaIdIntitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getChoferPorIdPersonaIdIntitucion`(

	 in p_numeroMovil int
	,in p_idIntitucion int

)
Begin

select 
	 p.nombre
	,p.apellidoPaterno
	,p.apellidoMaterno
	,p.rutPersona
	,p.dv
from 
	personas p inner join veh_cho_ins m on m.rutPersona = p.rutPersona
	inner join vehiculos v on v.idVehiculo = m.idVehiculo and v.idInstitucion = m.idInstitucion
where
	v.numeroMovil = p_numeroMovil
and	m.idInstitucion = p_idIntitucion;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getComunas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getComunas`(

	in p_idRegion int
)
Begin

select 
	 idComuna
	,descripcionComunas
	,idRegion
from
	comunas
where 
	idRegion = p_idRegion;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataPlanilla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getDataPlanilla`(

	 in p_numeroMovil int
	,in p_idInstitucion int
)
Begin

SELECT 
	 v.marca
	,v.modelo
	,v.anio
	,p.nombre
	,p.apellidoPaterno
	,p.apellidoMaterno
	,t.valor
FROM vehiculos v inner join veh_cho_ins mv on mv.idVehiculo = v.idVehiculo and mv.idInstitucion = v.idInstitucion
	inner join personas p on p.idPersona = mv.idPersona
	inner join tarifas t on t.idInstitucion = v.idInstitucion
where	
	v.numeroMovil = p_numeroMovil
and v.idInstitucion = p_idInstitucion;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDireccionPorIdPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getDireccionPorIdPersona`(

	 in p_idPersona int
)
Begin

select 
	 d.idDireccion
	,d.idPersona
	,d.calle
	,d.numero
	,d.dpto
	,d.idComuna
	,d.referencia
from 
	direcciones d 
	where d.idPersona = p_idPersona;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getNotificaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getNotificaciones`(

	 in p_rutPersona int
	,in p_idInstitucion int
    
)
BEGIN

SELECT 
	 descripcionNotificacion
    ,fecha
	,rutPersonaIngresa
	,p.nombre as nombreIngresa
    ,p.apellidoPaterno as paternoIngresa
    ,p.apellidoMaterno as maternoIngresa
FROM notificaciones n inner join instituciones i on i.idInstitucion = n.idInstitucion
left join personas p on p.rutPersona = n.rutPersonaIngresa
where n.rutPersonaDestino = p_rutPersona
and	  i.idInstitucion = p_idInstitucion
order by n.fecha desc
limit 50;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPersonaPorInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getPersonaPorInstitucion`(

	 in p_idInstitucion int
)
Begin

select distinct
	p.nombre
	,p.apellidoPaterno
	,p.apellidoMaterno
	,p.fechaNacimiento
	,p.rutPersona
	,p.dv
	,p.nombreUsuario
	,d.idComuna
	,c.descripcionComunas
	,d.calle
	,d.numero
	,d.dpto
	,d.celular
	,d.fijo
	,rg.idRegion
	,rg.descripcionRegion
	,m.activo
from 
	personas p left join ins_usu_rol m on m.rutPersona = p.rutPersona
	left join direcciones d on d.rutPersona = p.rutPersona 
	left join comunas c on c.idComuna = d.idComuna
	left join regiones rg on rg.idRegion = c.idRegion
	where m.idInstitucion = p_idInstitucion;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPersonaPorRut` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getPersonaPorRut`(

	 in p_rut int
	,in p_dv varchar(1)
)
Begin

select 
	 p.idPersona
	,p.nombre
	,p.apellidoPaterno
	,p.apellidoMaterno
	,p.fechaNacimiento
	,p.rut
	,p.dv
	,p.nombreUsuario
	,d.idComuna
	,c.descripcionComunas
	,d.calle
	,d.numero
	,d.dpto
	,d.celular
	,d.fijo
	,rg.idRegion
	,rg.descripcionRegion
from 
	personas p left join direcciones d on d.idPersona = p.idPersona 
	left join comunas c on c.idComuna = d.idComuna
	left join regiones rg on rg.idRegion = c.idRegion
where p.rut = p_rut
and	p.dv = p_dv	;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPlanillasPorFiltro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getPlanillasPorFiltro`(

	 in p_fecha_desde varchar(20)
	,in p_fecha_hasta varchar(20)
	,in p_numeroMovil int
	,in p_rutChofer int
	,in p_idInstitucion int
	,in p_activas bit

)
Begin

select
	p.idPlanilla,
    p.fecha,
    p.patente,
	v.marca,
	v.modelo,
    pe.rutPersona,
	pe.nombre,
	pe.apellidoPaterno,
	pe.apellidoMaterno,
    p.idInstitucion,
	i.nombreCorto,
	p.valor,
    p.pagada,
    p.activa,
	p.numeroMovil,
	p.comentario
FROM
	planillas p left join vehiculos v on v.patente = p.patente
	left join personas pe on pe.rutPersona = p.rutPersona
	left join instituciones i on i.idInstitucion =p.idInstitucion

where	
		p.fecha between STR_TO_DATE(p_fecha_desde, '%Y-%m-%d %H:%i:%s') and STR_TO_DATE(p_fecha_hasta, '%Y-%m-%d %H:%i:%s')
 and   	p.numeroMovil  = case when p_numeroMovil = 0 then p.numeroMovil else p_numeroMovil end
 and   	p.rutPersona = case when p_rutChofer = 0 then p.rutPersona else p_rutChofer end
 and   	p.idInstitucion =  case when p_idInstitucion = 0 then p.idInstitucion else p_idInstitucion end
 and   	p.activa = case when p_activas = 0 then p.activa else p_activas end

order by	
	p.fecha
desc;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPlanillasPorFiltroProp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getPlanillasPorFiltroProp`(

	 in p_fecha_desde varchar(20)
	,in p_fecha_hasta varchar(20)
	,in p_numeroMovil int
	,in p_rutChofer int
	,in p_idInstitucion int
	,in p_activas bit
	,in p_rutPropietario int

)
Begin

select
	p.idPlanilla,
    p.fecha,
    p.patente,
	v.marca,
	v.modelo,
    pe.rutPersona,
	pe.nombre,
	pe.apellidoPaterno,
	pe.apellidoMaterno,
    p.idInstitucion,
	i.nombreCorto,
	p.valor,
    p.pagada,
    p.activa,
	p.numeroMovil,
	p.comentario
FROM
	planillas p left join vehiculos v on v.patente = p.patente
	left join personas pe on pe.rutPersona = p.rutPersona
	left join instituciones i on i.idInstitucion =p.idInstitucion
	inner join pro_veh_ins mp on mp.idInstitucion = i.idInstitucion

where	
		p.fecha between STR_TO_DATE(p_fecha_desde, '%Y-%m-%d %H:%i:%s') and STR_TO_DATE(p_fecha_hasta, '%Y-%m-%d %H:%i:%s')
 and   	p.numeroMovil  = case when p_numeroMovil = 0 then p.numeroMovil else p_numeroMovil end
 and   	p.rutPersona = case when p_rutChofer = 0 then p.rutPersona else p_rutChofer end
 and   	p.idInstitucion =  case when p_idInstitucion = 0 then p.idInstitucion else p_idInstitucion end
 and   	p.activa = case when p_activas = 0 then p.activa else p_activas end
 and	mp.rutPersona = p_rutPropietario 

order by	
	p.fecha
desc;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRegiones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getRegiones`(

)
Begin

select 
	 idRegion
	,descripcionRegion
from
regiones;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRolesPorIdPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getRolesPorIdPersona`(

	in p_rutPersona int
)
Begin

SELECT 
	 i.nombreCorto
	,i.idInstitucion
	,r.idRol
	,r.descripcionRol
FROM ins_usu_rol m inner join instituciones i on i.idInstitucion = m.idInstitucion
inner join personas p on p.rutPersona = m.rutPersona
inner join roles r on r.idRol = m.idRol
where p.rutPersona = p_rutPersona
and m.activo = 1;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRolPorInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getRolPorInstitucion`(

	 in p_rutPersona int
	,in p_idInstitucion int
)
Begin

SELECT 
	 i.nombreCorto
	,i.idInstitucion
	,r.idRol
	,r.descripcionRol
FROM ins_usu_rol m inner join instituciones i on i.idInstitucion = m.idInstitucion
inner join personas p on p.rutPersona = m.rutPersona
inner join roles r on r.idRol = m.idRol
where p.rutPersona = p_rutPersona
and	   i.idInstitucion = p_idInstitucion	
and m.activo = 1;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getValorPlanilla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getValorPlanilla`(

	in p_idInstitucion int
)
Begin

SELECT 
	valor
FROM tarifas 
where idInstitucion = p_idInstitucion;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVehiculoByIdPersonaIdInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getVehiculoByIdPersonaIdInstitucion`(
				 
	in p_rutPersona int,
	in p_idInstitucion int
)
Begin

SELECT 
	v.marca,
	v.modelo,
	v.patente,
	v.anio,
	v.numeroMovil,
	v.activo,
	m.idInstitucion
from veh_cho_ins m inner join vehiculos v on v.patente = m.patente
where	m.rutPersona = p_rutPersona
and	m.idInstitucion = p_idInstitucion;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVehiculoByNumeroMovilInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getVehiculoByNumeroMovilInstitucion`(

	in p_numeroMovil int,
	in p_idInstitucion int
)
Begin

SELECT 
	v.marca,
	v.modelo,
	v.patente,
	v.anio,
	m.idInstitucion,
	v.numeroMovil
from vehiculos v inner join veh_cho_ins m on m.patente = v.patente 
where v.numeroMovil = p_numeroMovil
and	m.idInstitucion = p_idInstitucion
limit 1;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVehiculosPorInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `getVehiculosPorInstitucion`(

	 in p_institucion int

)
Begin

select
	 v.marca
	,v.modelo
	,v.patente
	,v.anio
	,v.numeroMovil
	,m.activo
FROM
	veh_cho_ins m inner join vehiculos v on v.patente = m.patente
where	
	m.idInstitucion = p_institucion;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarDireccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insertarDireccion`(

	 in p_rutPersona int
	,in p_calle varchar(45)
	,in p_numero varchar(45)
	,in p_dpto varchar(45)
	,in p_idComuna int
	,in p_referencia varchar(100)
)
Begin

insert into
	direcciones
	(
		 rutPersona
		,calle
		,numero
		,dpto
		,idComuna
		,referencia
	)
values
	(
	 p_idPersona 
	,p_calle
	,p_numero
	,p_dpto
	,p_idComuna
	,p_referencia
	);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insertarPersona`(

	 in p_nombre varchar(45)
	,in p_paterno varchar(45)
	,in p_materno varchar(45)
	,in p_nacimiento date
	,in p_rut int
	,in p_dv varchar(1)
	,in p_usuario varchar(45)
	,in p_password varchar(100)
	,in p_idUsuario int

)
Begin

insert into personas
(
	 nombre
	,apellidoPaterno
	,apellidoMaterno
	,fechaNacimiento
	,rutPersona
	,dv
	,nombreUsuario
	,password
	,idPersonaIngresa
)
values(

	 p_nombre
	,p_paterno
	,p_materno
	,p_nacimiento
	,p_rut
	,p_dv
	,p_usuario
	,p_password
	,p_idUsuario
);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarRol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insertarRol`(

	 in p_idRol int
	,in p_idInstitucion int
	,in p_rutPersona int

)
Begin

insert into ins_usu_rol

values(

	 p_idRol 
	,p_idInstitucion 
	,p_rutPersona 
	,1
);



end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDireccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insertDireccion`(

	 in p_rutPersona int
	,in p_calle varchar(45)
	,in p_numero varchar(45)
	,in p_dpto varchar(45)
	,in p_idComuna int
	,in p_celular varchar(45)
	,in p_fijo varchar(45)
	,in p_referencia varchar(100)
)
Begin

insert into
	direcciones
(
	 rutPersona
	,calle
	,numero
	,dpto
	,idComuna
	,celular
	,fijo
	,referencia

)
values
(
	 p_rutPersona
	,p_calle
	,p_numero
	,p_dpto
	,p_idComuna
	,p_celular
	,p_fijo
	,p_referencia
);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPlanilla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insertPlanilla`(

	 p_fecha			timestamp
	,p_patente			varchar(10)
	,p_rutPersona		int
	,p_idInstitucion 	int 
	,p_valor			int
	,p_pagada			bit
	,p_activa			bit
	,p_numeroMovil		int
	,p_comentario		text
	,p_editable			bit
	,p_usuario_graba	int
)
Begin


Insert Into planillas
(
	 fecha			
	,patente		
	,rutPersona		
	,idInstitucion 	
	,valor			
	,pagada			
	,activa			
	,numeroMovil		
	,comentario		
	,editable	
	,rutUsuarioGraba
)
Values
(
	 p_fecha			
	,p_patente		
	,p_rutPersona		
	,p_idInstitucion 	
	,p_valor			
	,p_pagada			
	,p_activa			
	,p_numeroMovil		
	,p_comentario		
	,p_editable			
	,p_usuario_graba
);




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insertVehiculo`(

	 in p_marca varchar(45)
	,in p_modelo varchar(45)
	,in p_patente varchar(10)
	,in p_anio int
	,in p_idInsitucion int
	,in p_numeroMovil int
	,in p_activo bit
)
Begin

insert into
	vehiculos
	(
		 marca
		,modelo
		,patente
		,anio
		,idInstitucion
		,numeroMovil
		,activo
	)
values
	(
	 p_marca
	,p_modelo
	,p_patente
	,p_anio
	,p_idInsitucion
	,p_numeroMovil
	,p_activo
	);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insNotificacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `insNotificacion`(
	 in p_descripcion varchar(200)
	,in p_rutDestino int
    ,in p_idInstitucion int
	,in p_rutIngresa int
	)
BEGIN


insert into 
	notificaciones
    (
	 descripcionNotificacion
	,rutPersonaDestino
	,idInstitucion
	,rutPersonaIngresa
	,fecha
    )
values
(

	 p_descripcion
	,p_rutDestino 
    ,p_idInstitucion
	,p_rutIngresa 
	,sysdate()
);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pagarPlanilla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `pagarPlanilla`(

	 in p_idPlanilla int
	,in p_idUsuarioCobra int
	,in p_fechaPago TimeStamp

)
Begin

Update
	planillas
Set
	 pagada = true
	,rutUsuarioCobra = p_idUsuarioCobra
	,fechaPago = p_fechaPago
where	
	idPlanilla = p_idPlanilla;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrarVehiculosPorInstitucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `registrarVehiculosPorInstitucion`(

	 in p_rutPersona int
	,in p_patente varchar(10)
	,in p_idInstitucion int
)
Begin

DECLARE v_registro int;

if not exists(select rutPersona  from veh_cho_ins where rutPersona = p_rutPersona and patente = p_patente and idInstitucion = p_idInstitucion) then
	insert into
			veh_cho_ins (rutPersona, patente, idInstitucion, activo)
	values
			(p_rutPersona, p_patente, p_idInstitucion, true);
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selectChoferPorNumeroMovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `selectChoferPorNumeroMovil`(

	 p_numeroMovil		int
	,p_idInstitucion	int
)
Begin


select 

	 p.rutPersona
	,p.nombre
	,p.apellidoPaterno
	,p.apellidoMaterno

from 
	personas p inner join veh_cho_ins m on m.rutPersona = p.rutPersona
	inner join vehiculos v on v.patente = m.patente

where
	m.idInstitucion = p_idInstitucion
and v.numeroMovil = p_numeroMovil;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selectPlanillaActual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `selectPlanillaActual`(

	 p_fecha_ini		varchar(19)
	, p_fecha_fin		varchar(19)
	,p_idInstitucion 	int 
	,p_numeroMovil		int
)
Begin


select 

	 p.idPlanilla
	,p.activa
	,p.comentario
	,p.editable
	,p.fecha
	,p.idInstitucion
	,i.nombreCorto
	,p.rutPersona
	,pe.nombre
	,pe.apellidoPaterno
	,pe.apellidoMaterno
	,p.patente
	,v.marca
	,v.modelo
	,v.anio
	,p.numeroMovil
	,p.pagada
	,p.valor

from 

planillas p left join instituciones i on i.idInstitucion = p.idInstitucion
left join personas pe on pe.rutPersona = p.rutPersona
left join vehiculos v on v.patente = p.patente
 

where
	p.fecha between STR_TO_DATE(p_fecha_ini, '%Y-%m-%d %H:%i:%s') and STR_TO_DATE(p_fecha_fin, '%Y-%m-%d %H:%i:%s')
and p.idInstitucion = p_idInstitucion
and p.numeroMovil = p_numeroMovil;




end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateDireccion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `updateDireccion`(

	 in p_rutPersona int
	,in p_calle varchar(45)
	,in p_numero varchar(45)
	,in p_dpto varchar(45)
	,in p_idComuna int
	,in p_celular varchar(45)
	,in p_fijo varchar(45)
	,in p_referencia varchar(100)
)
Begin

update
	direcciones
set
	 calle = p_calle
	,numero = p_numero
	,dpto = p_dpto
	,idComuna = p_idComuna
	,referencia = p_referencia
	,celular = p_celular
	,fijo = p_fijo
	
where
	rutPersona = p_rutPersona;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `updatePersona`(
	
	 in p_nombre varchar(45)
	,in p_apellidoPaterno varchar(45)
	,in p_apellidoMaterno varchar(45)
	,in p_fechaNacimiento Date
	,in p_rutPersona int
	,in p_dv varchar(1)
	,in p_nombreUsuario varchar(45)
	,in p_idPersonaIngresa int
)
Begin

update
	personas
set
	 nombre = p_nombre
	,apellidoPaterno = p_apellidoPaterno
	,apellidoMaterno = p_apellidoMaterno
	,fechaNacimiento = p_fechaNacimiento
	,rutPersona = p_rutPersona
	,dv = p_dv
	,nombreUsuario = p_nombreUsuario
	,idPersonaIngresa = p_idPersonaIngresa
where
	rutPersona = p_rutPersona;





end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE  PROCEDURE `updateVehiculo`(
	
	 in p_marca varchar(45)
	,in p_modelo varchar(45)
	,in p_patente varchar(10)
	,in p_anio int
	,in p_idInsitucion int
	,in p_numeroMovil int
	,in p_activo bit
)
Begin

update
	vehiculos
	set
		 marca = p_marca
		,modelo = p_modelo
		,patente = p_patente
		,anio = p_anio
		,idInstitucion = p_idInstitucion 
		,numeroMovil = p_numeroMovil
		,activo = p_activo
where
	patente = p_patente;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-06 16:54:16
