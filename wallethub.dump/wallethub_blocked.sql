-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: wallethub
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blocked`
--

DROP TABLE IF EXISTS `blocked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blocked` (
  `ltime` timestamp NULL DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocked`
--

LOCK TABLES `blocked` WRITE;
/*!40000 ALTER TABLE `blocked` DISABLE KEYS */;
INSERT INTO `blocked` VALUES ('2019-07-03 19:48:03','192.168.162.248','daily threshold crossed(678>500)'),('2019-07-03 19:48:03','192.168.199.209','daily threshold crossed(694>500)'),('2019-07-03 19:48:03','192.168.102.136','daily threshold crossed(554>500)'),('2019-07-03 19:48:03','192.168.38.77','daily threshold crossed(798>500)'),('2019-07-03 19:48:03','192.168.62.176','daily threshold crossed(624>500)'),('2019-07-03 19:48:03','192.168.203.111','daily threshold crossed(652>500)'),('2019-07-03 19:48:03','192.168.185.164','daily threshold crossed(575>500)'),('2019-07-03 19:48:03','192.168.52.153','daily threshold crossed(580>500)'),('2019-07-03 19:48:03','192.168.129.191','daily threshold crossed(804>500)'),('2019-07-03 19:48:03','192.168.206.141','daily threshold crossed(579>500)'),('2019-07-03 19:48:03','192.168.51.205','daily threshold crossed(655>500)'),('2019-07-03 19:48:03','192.168.143.177','daily threshold crossed(800>500)'),('2019-07-03 19:48:03','192.168.31.26','daily threshold crossed(641>500)'),('2019-07-03 19:48:03','192.168.219.10','daily threshold crossed(569>500)'),('2019-07-03 19:48:03','192.168.33.16','daily threshold crossed(628>500)'),('2019-07-03 19:48:24','192.168.106.134','hourly threshold crossed(232>200)'),('2019-07-03 19:48:24','192.168.129.191','hourly threshold crossed(288>200)'),('2019-07-03 19:48:24','192.168.11.231','hourly threshold crossed(211>200)'),('2019-07-03 19:48:24','192.168.185.164','hourly threshold crossed(202>200)'),('2019-07-03 19:48:24','192.168.162.248','hourly threshold crossed(233>200)'),('2019-07-03 19:48:24','192.168.143.177','hourly threshold crossed(275>200)'),('2019-07-03 19:48:24','192.168.52.153','hourly threshold crossed(208>200)'),('2019-07-03 19:48:24','192.168.33.16','hourly threshold crossed(209>200)'),('2019-07-03 19:48:24','192.168.51.205','hourly threshold crossed(238>200)'),('2019-07-03 19:48:24','192.168.31.26','hourly threshold crossed(220>200)'),('2019-07-03 19:48:24','192.168.203.111','hourly threshold crossed(255>200)'),('2019-07-03 19:48:24','192.168.62.176','hourly threshold crossed(234>200)'),('2019-07-03 19:48:24','192.168.219.10','hourly threshold crossed(210>200)'),('2019-07-03 19:48:24','192.168.38.77','hourly threshold crossed(277>200)'),('2019-07-03 19:48:24','192.168.199.209','hourly threshold crossed(245>200)'),('2019-07-03 19:48:24','192.168.180.110','hourly threshold crossed(247>200)'),('2019-07-03 19:48:24','192.168.246.179','hourly threshold crossed(217>200)'),('2019-07-03 19:48:24','192.168.113.80','hourly threshold crossed(234>200)'),('2019-07-03 19:48:24','192.168.224.77','hourly threshold crossed(201>200)'),('2019-07-03 19:48:24','192.168.99.166','hourly threshold crossed(202>200)'),('2019-07-03 19:48:24','192.168.185.253','hourly threshold crossed(227>200)'),('2019-07-03 19:48:24','192.168.253.195','hourly threshold crossed(229>200)'),('2019-07-03 19:48:24','192.168.51.91','hourly threshold crossed(214>200)'),('2019-07-03 19:48:24','192.168.224.201','hourly threshold crossed(208>200)'),('2019-07-03 19:48:24','192.168.14.80','hourly threshold crossed(245>200)'),('2019-07-03 19:48:24','192.168.238.69','hourly threshold crossed(233>200)'),('2019-07-03 19:48:24','192.168.235.156','hourly threshold crossed(224>200)'),('2019-07-03 19:48:24','192.168.129.60','hourly threshold crossed(222>200)'),('2019-07-03 19:48:24','192.168.184.25','hourly threshold crossed(247>200)'),('2019-07-03 19:48:24','192.168.114.17','hourly threshold crossed(204>200)'),('2019-07-03 19:48:24','192.168.246.75','hourly threshold crossed(222>200)'),('2019-07-03 19:48:24','192.168.5.107','hourly threshold crossed(229>200)'),('2019-07-03 19:48:24','192.168.132.251','hourly threshold crossed(208>200)'),('2019-07-03 19:48:24','192.168.41.139','hourly threshold crossed(209>200)'),('2019-07-03 19:48:24','192.168.181.166','hourly threshold crossed(217>200)'),('2019-07-03 19:48:24','192.168.225.93','hourly threshold crossed(215>200)'),('2019-07-03 19:48:24','192.168.236.106','hourly threshold crossed(245>200)'),('2019-07-03 19:48:24','192.168.177.190','hourly threshold crossed(219>200)'),('2019-07-03 19:48:24','192.168.14.145','hourly threshold crossed(235>200)'),('2019-07-03 19:48:24','192.168.147.152','hourly threshold crossed(211>200)'),('2019-07-03 19:48:24','192.168.151.234','hourly threshold crossed(248>200)'),('2019-07-03 19:48:24','192.168.97.7','hourly threshold crossed(234>200)'),('2019-07-03 19:48:24','192.168.73.200','hourly threshold crossed(240>200)'),('2019-07-03 19:48:24','192.168.67.28','hourly threshold crossed(206>200)'),('2019-07-03 19:48:24','192.168.159.230','hourly threshold crossed(236>200)'),('2019-07-03 19:48:24','192.168.122.135','hourly threshold crossed(229>200)'),('2019-07-03 19:56:21','192.168.106.134','hourly threshold crossed(232>200)'),('2019-07-03 19:56:21','192.168.129.191','hourly threshold crossed(288>200)'),('2019-07-03 19:56:21','192.168.11.231','hourly threshold crossed(211>200)'),('2019-07-03 19:56:21','192.168.185.164','hourly threshold crossed(202>200)'),('2019-07-03 19:56:21','192.168.162.248','hourly threshold crossed(233>200)'),('2019-07-03 19:56:21','192.168.143.177','hourly threshold crossed(275>200)'),('2019-07-03 19:56:21','192.168.52.153','hourly threshold crossed(208>200)'),('2019-07-03 19:56:21','192.168.33.16','hourly threshold crossed(209>200)'),('2019-07-03 19:56:21','192.168.51.205','hourly threshold crossed(238>200)'),('2019-07-03 19:56:21','192.168.31.26','hourly threshold crossed(220>200)'),('2019-07-03 19:56:21','192.168.203.111','hourly threshold crossed(255>200)'),('2019-07-03 19:56:21','192.168.62.176','hourly threshold crossed(234>200)'),('2019-07-03 19:56:21','192.168.219.10','hourly threshold crossed(210>200)'),('2019-07-03 19:56:21','192.168.38.77','hourly threshold crossed(277>200)'),('2019-07-03 19:56:21','192.168.199.209','hourly threshold crossed(245>200)'),('2019-07-03 19:56:21','192.168.180.110','hourly threshold crossed(247>200)'),('2019-07-03 19:56:21','192.168.246.179','hourly threshold crossed(217>200)'),('2019-07-03 19:56:21','192.168.113.80','hourly threshold crossed(234>200)'),('2019-07-03 19:56:21','192.168.224.77','hourly threshold crossed(201>200)'),('2019-07-03 19:56:21','192.168.99.166','hourly threshold crossed(202>200)'),('2019-07-03 19:56:21','192.168.185.253','hourly threshold crossed(227>200)'),('2019-07-03 19:56:21','192.168.253.195','hourly threshold crossed(229>200)'),('2019-07-03 19:56:21','192.168.51.91','hourly threshold crossed(214>200)'),('2019-07-03 19:56:21','192.168.224.201','hourly threshold crossed(208>200)'),('2019-07-03 19:56:22','192.168.14.80','hourly threshold crossed(245>200)'),('2019-07-03 19:56:22','192.168.238.69','hourly threshold crossed(233>200)'),('2019-07-03 19:56:22','192.168.235.156','hourly threshold crossed(224>200)'),('2019-07-03 19:56:22','192.168.129.60','hourly threshold crossed(222>200)'),('2019-07-03 19:56:22','192.168.184.25','hourly threshold crossed(247>200)'),('2019-07-03 19:56:22','192.168.114.17','hourly threshold crossed(204>200)'),('2019-07-03 19:56:22','192.168.246.75','hourly threshold crossed(222>200)'),('2019-07-03 19:56:22','192.168.5.107','hourly threshold crossed(229>200)'),('2019-07-03 19:56:22','192.168.132.251','hourly threshold crossed(208>200)'),('2019-07-03 19:56:22','192.168.41.139','hourly threshold crossed(209>200)'),('2019-07-03 19:56:22','192.168.181.166','hourly threshold crossed(217>200)'),('2019-07-03 19:56:22','192.168.225.93','hourly threshold crossed(215>200)'),('2019-07-03 19:56:22','192.168.236.106','hourly threshold crossed(245>200)'),('2019-07-03 19:56:22','192.168.177.190','hourly threshold crossed(219>200)'),('2019-07-03 19:56:22','192.168.14.145','hourly threshold crossed(235>200)'),('2019-07-03 19:56:22','192.168.147.152','hourly threshold crossed(211>200)'),('2019-07-03 19:56:22','192.168.151.234','hourly threshold crossed(248>200)'),('2019-07-03 19:56:22','192.168.97.7','hourly threshold crossed(234>200)'),('2019-07-03 19:56:22','192.168.73.200','hourly threshold crossed(240>200)'),('2019-07-03 19:56:22','192.168.67.28','hourly threshold crossed(206>200)'),('2019-07-03 19:56:22','192.168.159.230','hourly threshold crossed(236>200)'),('2019-07-03 19:56:22','192.168.122.135','hourly threshold crossed(229>200)');
/*!40000 ALTER TABLE `blocked` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04  0:03:28
