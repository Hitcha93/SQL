CREATE DATABASE  IF NOT EXISTS `jeans_online` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jeans_online`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: jeans_online
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id_articulo` int NOT NULL AUTO_INCREMENT,
  `nombre_articulo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `total` int DEFAULT NULL,
  `id_talle` int DEFAULT NULL,
  `id_precio` int DEFAULT NULL,
  `id_color` int DEFAULT NULL,
  PRIMARY KEY (`id_articulo`),
  KEY `id_talle` (`id_talle`),
  KEY `id_precio` (`id_precio`),
  KEY `id_color` (`id_color`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`id_talle`) REFERENCES `talles` (`id_talle`),
  CONSTRAINT `articulos_ibfk_2` FOREIGN KEY (`id_precio`) REFERENCES `precios` (`id_precio`),
  CONSTRAINT `articulos_ibfk_3` FOREIGN KEY (`id_color`) REFERENCES `colores` (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Ross','short elastizado con rotura',15,28650,1,1,1),(2,'Ross','short elastizado con rotura',0,0,2,1,1),(3,'Ross','short elastizado con rotura',15,28650,3,1,1),(4,'Ross','short elastizado con rotura',15,28650,4,1,1),(5,'California','chupin clasico c/ bolsillo',30,105300,1,4,1),(6,'California','chupin clasico c/ bolsillo',30,105300,2,4,1),(7,'California','chupin clasico c/ bolsillo',0,0,3,4,1),(8,'California','chupin clasico c/ bolsillo',30,105300,4,4,1),(9,'Dakota','Super Oxford Rosa',25,178750,5,10,3),(10,'Dakota','Super Oxford Rosa',25,178750,6,10,3),(11,'Dakota','Super Oxford Rosa',0,0,7,10,3),(12,'Ottawa','chupin con ruedo blanco',20,124600,1,8,5),(13,'Ottawa','chupin con ruedo blanco',20,124600,2,8,5),(14,'Vancouver','chupin con ruedo negro',20,124600,1,8,4),(15,'Vancouver','chupin con ruedo negro',20,124600,2,8,4),(16,'Lena','chupin con rotura tiro bajo gris oscuro',30,128700,1,5,9),(17,'Lena','chupin con rotura tiro bajo gris oscuro',30,128700,2,5,9),(18,'Lena','chupin con rotura tiro bajo gris oscuro',30,128700,3,5,9),(19,'Lolo','chupin con estampa bolsillo ciego color',0,0,1,6,6),(20,'Lolo','chupin con estampa bolsillo ciego color',0,0,2,6,6),(21,'Lolo','chupin con estampa bolsillo ciego color',0,0,3,6,6),(22,'Marylin','talle especial con apliques gris',5,33100,5,9,7),(23,'Marylin','talle especial con apliques gris',5,33100,6,9,7),(24,'Marylin','talle especial con apliques gris',5,33100,7,9,7),(25,'Pampa','semi oxford elastizado',25,131250,1,7,1),(26,'Pampa','semi oxford elastizado',25,131250,2,7,1),(27,'Pampa','semi oxford elastizado',25,131250,3,7,1),(28,'Pampa','semi oxford elastizado',25,131250,4,7,1),(29,'Lara','Short Desflecado',50,152500,1,3,2),(30,'Lara','Short Desflecado',50,152500,2,3,2),(31,'Lara','Short Desflecado',50,152500,3,3,2),(32,'Margaret','Wide leg con bigote',100,623000,2,8,8),(33,'Margaret','Wide leg con bigote',0,0,2,8,8),(34,'Margaret','Wide leg con bigote',0,0,2,8,8),(35,'Rocio','Chupin clasico stone localizado',25,107250,1,5,1),(36,'Rocio','Chupin clasico stone localizado',25,107250,2,5,1),(37,'Rocio','Chupin clasico stone localizado',25,107250,3,5,1),(38,'Rocio','Chupin clasico stone localizado',25,107250,4,5,1),(39,'Rocio','Chupin clasico stone localizado',25,107250,5,5,1),(40,'Rocio','Chupin clasico stone localizado',25,107250,6,5,1),(41,'Rocio','Chupin clasico stone localizado',25,107250,7,5,1),(42,'Rocio','Chupin clasico stone localizado',25,213750,7,11,1);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `DNI` varchar(8) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Curry','Linbohm','12345678','clinbohm0@geocities.jp'),(2,'Stefanie','MacGall','12345679','smacgall1@virginia.edu'),(3,'Donalt','Tschersich','12345680','dtschersich2@google.pl'),(4,'Crystal','Melbourn','12345681','cmelbourn3@flavors.me'),(5,'Jacquelyn','Laurant','12345682','jlaurant4@sohu.com'),(6,'Roma','Gogin','12345683','rgogin5@foxnews.com'),(7,'Zilvia','Burfield','12345684','zburfield6@netscape.com'),(8,'Gilda','Coping','12345685','gcoping7@freewebs.com'),(9,'Kalil','Sneesbie','12345686','ksneesbie8@dagondesign.com'),(10,'Anders','McPaik','12345687','amcpaik9@fema.gov'),(11,'Jenna','Kalderon','12345688','jkalderona@ycombinator.com'),(12,'Gearalt','Boatright','12345689','gboatrightb@samsung.com'),(13,'Dolly','Tatem','12345690','dtatemc@fda.gov'),(14,'Inger','Hallum','12345691','ihallumd@taobao.com'),(15,'Dorolisa','Aysh','12345692','dayshe@timesonline.co.uk'),(16,'Isidoro','Adanez','12345693','iadanezf@illinois.edu'),(17,'Astrix','Camamile','12345694','acamamileg@multiply.com'),(18,'Germayne','Wyburn','12345695','gwyburnh@biglobe.ne.jp'),(19,'Netti','Elarticulol','12345696','nelli@geocities.com'),(20,'Hinze','Aucock','12345697','haucockj@php.net');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colores`
--

DROP TABLE IF EXISTS `colores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colores` (
  `id_color` int NOT NULL AUTO_INCREMENT,
  `tipo_color` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colores`
--

LOCK TABLES `colores` WRITE;
/*!40000 ALTER TABLE `colores` DISABLE KEYS */;
INSERT INTO `colores` VALUES (1,'azul'),(2,'verde'),(3,'rosa'),(4,'negra'),(5,'blanco'),(6,'amarillo'),(7,'gris'),(8,'celeste'),(9,'gris oscuro'),(10,'magenta');
/*!40000 ALTER TABLE `colores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios`
--

DROP TABLE IF EXISTS `envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios` (
  `id_envio` int NOT NULL AUTO_INCREMENT,
  `tipo_envio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_envio`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (1,'encomienda'),(2,'correo'),(3,'retira sucursal'),(4,'moto'),(5,'rappi'),(6,'uber');
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_in`
--

DROP TABLE IF EXISTS `log_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_in` (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `id_ubicacion` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_login`),
  KEY `id_ubicacion` (`id_ubicacion`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `log_in_ibfk_1` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`),
  CONSTRAINT `log_in_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `clientes` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_in`
--

LOCK TABLES `log_in` WRITE;
/*!40000 ALTER TABLE `log_in` DISABLE KEYS */;
INSERT INTO `log_in` VALUES (1,'lverriour0','i189kVfNCSR','2022-12-30 12:00:00',1,1),(2,'agladdolph1','icWm1D','2022-12-30 12:00:01',2,2),(3,'jmarian2','sZxv3yz','2022-12-30 12:00:02',3,3),(4,'rerett3','sS2GB46BMh','2022-12-30 12:00:03',4,4),(5,'cjojic4','gMmx4qytcoXC','2022-12-30 12:00:04',5,5),(6,'dmerigot5','erJmHHOw','2022-12-30 12:00:05',6,6),(7,'sbatter6','b9dzVrzEw','2022-12-30 12:00:06',7,7),(8,'aguerre7','rBAx2G78lJut','2022-12-30 12:00:07',8,8),(9,'cpilipets8','z3lwfwbbOV','2022-12-30 12:00:08',9,9),(10,'ryakovlev9','szu4wGNI0hiS','2022-12-30 12:00:09',10,10),(11,'mfreegarda','90uu0hVOb4','2022-12-30 12:00:10',11,11),(12,'harnallb','5xNp1l','2022-12-30 12:00:11',12,12),(13,'ggarnettc','q0VFX0swm','2022-12-30 12:00:12',13,13),(14,'broelvinkd','JO7cDs','2022-12-30 12:00:13',14,14),(15,'kfaughnane','KhckKA97AE','2022-12-30 12:00:14',15,15),(16,'jkinetonf','IwFOtbIDCt','2022-12-30 12:00:15',16,16),(17,'sroutleyg','gu009lEd','2022-12-30 12:00:16',17,17),(18,'gkinnockh','ubsZjA2fwGdB','2022-12-30 12:00:17',18,18),(19,'eweblingi','Y5L4plJbg','2022-12-30 12:00:18',19,19),(20,'mmatyjaj','0lcXdnt','2022-12-30 12:00:19',20,20);
/*!40000 ALTER TABLE `log_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_online`
--

DROP TABLE IF EXISTS `pagina_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagina_online` (
  `id_pagina` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_login` int DEFAULT NULL,
  `id_ubicacion` int DEFAULT NULL,
  PRIMARY KEY (`id_pagina`),
  KEY `id_user` (`id_user`),
  KEY `id_login` (`id_login`),
  KEY `id_ubicacion` (`id_ubicacion`),
  CONSTRAINT `pagina_online_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `clientes` (`id_user`),
  CONSTRAINT `pagina_online_ibfk_2` FOREIGN KEY (`id_login`) REFERENCES `log_in` (`id_login`),
  CONSTRAINT `pagina_online_ibfk_3` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_online`
--

LOCK TABLES `pagina_online` WRITE;
/*!40000 ALTER TABLE `pagina_online` DISABLE KEYS */;
INSERT INTO `pagina_online` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,11,11,11),(12,12,12,12),(13,13,13,13),(14,14,14,14),(15,15,15,15),(16,16,16,16),(17,17,17,17),(18,18,18,18),(19,19,19,19),(20,20,20,20);
/*!40000 ALTER TABLE `pagina_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `cantidad_total` int NOT NULL,
  `seguimiento` varchar(80) DEFAULT NULL,
  `id_user` int NOT NULL,
  `id_articulo` int DEFAULT NULL,
  `id_ubicacion` int DEFAULT NULL,
  `id_vendedor` int DEFAULT NULL,
  `id_envio` int DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_user` (`id_user`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_ubicacion` (`id_ubicacion`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_envio` (`id_envio`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `clientes` (`id_user`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_articulo`) REFERENCES `articulos` (`id_articulo`),
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`),
  CONSTRAINT `pedidos_ibfk_4` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedores` (`id_vendedor`),
  CONSTRAINT `pedidos_ibfk_5` FOREIGN KEY (`id_envio`) REFERENCES `envios` (`id_envio`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,5,'5323037e-2c0c-41ee-bd27-5dbcb751b555',1,1,1,1,2),(2,5,'5323037e-2c0c-41ee-bd27-5dbcb751b555',1,12,1,1,2),(3,5,'5323037e-2c0c-41ee-bd27-5dbcb751b555',1,31,1,1,2),(4,5,'6a2a838d-1da7-49a0-8b65-29df28c16c39',2,7,2,6,4),(5,2,'6a2a838d-1da7-49a0-8b65-29df28c16c40',2,25,2,6,4),(6,5,'2cade3f7-9af9-4a8c-8839-de2b006ce722',3,41,3,4,2),(7,2,'2cade3f7-9af9-4a8c-8839-de2b006ce723',3,28,3,4,2),(8,7,'2cade3f7-9af9-4a8c-8839-de2b006ce724',3,31,3,4,2),(9,14,'2cade3f7-9af9-4a8c-8839-de2b006ce725',3,2,3,4,2),(10,5,'a8a21d73-2c50-44ff-87bc-c19b387fde15',4,25,4,3,6),(11,5,'a8a21d73-2c50-44ff-87bc-c19b387fde16',4,26,4,3,6),(12,5,'a8a21d73-2c50-44ff-87bc-c19b387fde17',4,27,4,3,6),(13,5,'a8a21d73-2c50-44ff-87bc-c19b387fde18',4,28,4,3,6),(14,3,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,16,5,2,3),(15,6,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,17,5,2,3),(16,8,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,25,5,2,3),(17,1,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,30,5,2,3),(18,25,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,39,5,2,3),(19,4,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,9,5,2,3),(20,15,'018a1c75-94fc-4083-a4fe-a23d97fae8db',5,12,5,2,3);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `id_precio` int NOT NULL AUTO_INCREMENT,
  `precio` decimal(6,2) NOT NULL,
  `tipo_moneda` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_precio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,1910.00,'ARS'),(2,2170.00,'ARS'),(3,3050.00,'ARS'),(4,3510.00,'ARS'),(5,4290.00,'ARS'),(6,4600.00,'ARS'),(7,5250.00,'ARS'),(8,6230.00,'ARS'),(9,6620.00,'ARS'),(10,7150.00,'ARS'),(11,8550.00,'ARS');
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talles`
--

DROP TABLE IF EXISTS `talles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talles` (
  `id_talle` int NOT NULL AUTO_INCREMENT,
  `talle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_talle`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talles`
--

LOCK TABLES `talles` WRITE;
/*!40000 ALTER TABLE `talles` DISABLE KEYS */;
INSERT INTO `talles` VALUES (1,'36'),(2,'38'),(3,'40'),(4,'42'),(5,'50'),(6,'52'),(7,'54');
/*!40000 ALTER TABLE `talles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicacion`
--

DROP TABLE IF EXISTS `ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicacion` (
  `id_ubicacion` int NOT NULL AUTO_INCREMENT,
  `localidad` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (1,'CABA','33 Derek Plaza'),(2,'Caseros','53095 Granby Junction'),(3,'CABA','2881 Victoria Trail'),(4,'Ramon Mejia','72152 Transport Hill'),(5,'CABA','08703 Moose Lane'),(6,'Caseros','85691 Cardinal Drive'),(7,'Caseros','0306 Walton Avenue'),(8,'Caseros','66889 Manley Park'),(9,'Caseros','1 Ridge Oak Terrace'),(10,'CABA','89517 Kings Way'),(11,'Avellaneda','067 Ryan Terrace'),(12,'Avellaneda','9 Loftsgordon Center'),(13,'Avellaneda','70754 Forster Park'),(14,'Avellaneda','60565 Springview Junction'),(15,'Lanus','9 Darwin Lane'),(16,'Quilmes','91643 Schmedeman Drive'),(17,'Quilmes','351 Banding Point'),(18,'Quilmes','2 Glacier Hill Place'),(19,'Quilmes','0 Briar Crest Terrace'),(20,'Lanus','28 Moland Way');
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedores`
--

DROP TABLE IF EXISTS `vendedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedores` (
  `id_vendedor` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1,'aylen','v1'),(2,'richard','v2'),(3,'leo','v3'),(4,'ariel','v4'),(5,'monica','v5'),(6,'romina','v6');
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'jeans_online'
--

--
-- Dumping routines for database 'jeans_online'
--
/*!50003 DROP FUNCTION IF EXISTS `stock_level` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `stock_level`(cantidad decimal (10,2)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
begin
declare stock_level varchar (100);

if cantidad < 5 then set stock_level = 'low';
elseif (cantidad >= 5 and cantidad < 25) then set stock_level = 'Medium';
elseif cantidad < 40 then set stock_level = 'High';
end if;

return (stock_level);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `articulos_con_precio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `articulos_con_precio`()
begin 
select * from articulos;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_articulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_articulo`(
	IN v_nombre varchar(50),
    in v_descripcion varchar(50),
    in v_cantidad double,
    in v_talle varchar(50),
    in v_precio decimal(6,2),
    in v_moneda varchar(20),
    in v_color varchar(30))
    READS SQL DATA
begin
	declare v_id_talle int;
	declare v_id_precio int;
    declare v_id_color int;
    
    -- si el talle existe asigna el id correspondiente a v_id_talle, si no crea el talle y le asigna el id
	set v_id_talle = (select id_talle from talles WHERE talle like v_talle);
    if (v_id_talle is null) then
		insert into talles (talle) values (v_talle);
        set v_id_talle = (select id_talle from talles WHERE talle like v_talle);
	end if;
    
    -- si el precio existe asigna el id correspondiente a v_id_precio, si no crea el precio y le asigna el id
	set v_id_precio = (select id_precio from precios where precio = v_precio and tipo_moneda like v_moneda);
    if (v_id_precio is null) then
		insert into precios (precio, tipo_moneda) values (v_precio, v_moneda);
        set v_id_precio = (select id_precio from precios where precio = v_precio and tipo_moneda like v_moneda);
	end if;
    
    -- si el color existe asigna el id correspondiente a v_id_color, si no crea el color y le asigna el id
	set v_id_color = (select id_color from colores where tipo_color like v_color);
    if (v_id_color is null) then
		insert into colores (tipo_color) values (v_color);
        set v_id_color = (select id_color from colores where tipo_color like v_color);
	end if;
    
    -- crea el nuevo artículo
    insert into articulos (nombre_articulo, descripcion, cantidad, id_talle, id_precio, id_color)
    values (v_nombre, v_descripcion, v_cantidad, v_id_talle, v_id_precio, v_id_color);
    
    -- muestra mensaje con el id del nuevo articulo
    select concat('nuevo articulo creado con id: ', last_insert_id());
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_precio_cant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_precio_cant`()
    READS SQL DATA
BEGIN    
    DECLARE lastRows INT DEFAULT 0;
    DECLARE startRows INT DEFAULT 0;    
SELECT COUNT(*) FROM articulos INTO lastRows;
ALTER TABLE articulos ADD COLUMN total int AFTER cantidad;
		SET startRows=1;
		WHILE startRows <lastRows DO
			UPDATE articulos SET total = (cantidad*(select precio from precios where id_precio =startRows)) where id_precio = startRows;
			SET startRows=startRows+1;
		END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `stock_level` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `stock_level`(
in nombre_articulo varchar (50),
out stock_level int
)
begin
declare cantidad dec(10,2) default 0;

select stock_level into cantidad
from articulos
where stock_level = stock;

set stock_level = stock_level(cantidad);
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

-- Dump completed on 2022-11-29 20:48:53
