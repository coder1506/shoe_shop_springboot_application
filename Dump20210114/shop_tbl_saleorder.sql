-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `total` decimal(13,2) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `customer_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `seo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cutomer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pay` tinyint(1) DEFAULT '1',
  `customer_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (27,'sp8',8,2400000.00,'2020-12-22 12:12:59',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',0,0),(28,'sp8',8,2400000.00,'2020-12-22 12:17:02',NULL,NULL,NULL,0,'pham van a','thai duong - binh giang - hai duong',NULL,'1234-123-123','duc5061@gmail.com',1,1),(29,'sp8',8,5200000.00,'2020-12-22 12:24:14',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',1,1),(30,'sp8',8,5200000.00,'2020-12-22 12:27:08',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',1,1),(31,'sp8',8,5200000.00,'2020-12-22 12:28:09',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',1,1),(32,'sp8',8,5200000.00,'2020-12-22 12:30:21',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',0,1),(33,'sp8',8,5200000.00,'2020-12-22 12:33:30',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',0,0),(34,'sp7',7,18000000.00,'2020-12-22 12:34:46',NULL,NULL,NULL,0,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','admin@gmail.com',0,0),(35,'sp7',7,15600000.00,'2020-12-27 16:02:45',NULL,NULL,NULL,0,'duy','thai duong - binh giang - hai duong',NULL,'1234-123-123','admin@gmail.com',0,0),(36,'sp7',7,4850000.00,'2021-01-03 16:12:36',NULL,NULL,NULL,1,'dao duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','admin@gmail.com',1,0),(37,'sp8',8,2300000.00,'2021-01-03 16:18:07',NULL,NULL,NULL,1,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',1,1),(38,'sp8',8,2800000.00,'2021-01-04 13:15:08',NULL,NULL,NULL,1,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc5061@gmail.com',1,1),(39,'sp8',8,5900000.00,'2021-01-05 17:08:27',NULL,NULL,NULL,1,'dao dinh duc','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc50612@gmail.com',0,1),(40,'sp8',8,7800000.00,'2021-01-05 17:55:47',NULL,NULL,NULL,1,'pham van a','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc50612@gmail.com',1,1),(41,'sp8',8,2800000.00,'2021-01-05 18:11:47',NULL,NULL,NULL,1,'pham van b','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc50612@gmail.com',0,1),(42,'sp8',8,2800000.00,'2021-01-06 16:08:38',NULL,NULL,NULL,1,'pham van c','thai duong - binh giang - hai duong',NULL,'0366-100-615','duc50612@gmail.com',0,1);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 16:13:22
