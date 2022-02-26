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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `categorytype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_internal_idx` (`parent_id`),
  CONSTRAINT `fk_internal` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (12,'Converse','Converse',NULL,NULL,NULL,NULL,NULL,1,'Converse','sản phẩm'),(13,'Sneaker','Sneaker',NULL,NULL,NULL,NULL,NULL,1,'Sneaker','sản phẩm'),(14,'Nike','Nike',NULL,NULL,NULL,NULL,NULL,1,'Nike','sản phẩm'),(15,'Gucci','Gucci',NULL,NULL,NULL,NULL,NULL,1,'Gucci','sản phẩm'),(16,'EQT','EQT',NULL,NULL,NULL,NULL,NULL,1,'EQT','sản phẩm'),(17,'Alexander McQueen','Alexander McQueen',NULL,NULL,NULL,NULL,NULL,1,'Alexander-McQueen','sản phẩm'),(18,'Balenciaga','Balenciaga',NULL,NULL,NULL,NULL,NULL,1,'Balenciaga','sản phẩm'),(19,'Dolce & Gabbana','Dolce & Gabbana',NULL,NULL,NULL,NULL,NULL,1,'Dolce-and-Gabbana','sản phẩm'),(21,'Dây giày','Dây giày',NULL,NULL,NULL,NULL,NULL,1,'day-giay','phụ kiện khác'),(22,'Bọc giầy.','Bọc giầy',NULL,'2021-01-04 12:42:20',NULL,NULL,NULL,1,'boc-giay-1609738977631','phụ kiện khác'),(23,'Bọt vệ sinh','Bọt vệ sinh',NULL,NULL,NULL,NULL,NULL,0,'bot-ve-sinh','phụ kiện khác'),(24,'Viên khử mùi và hút ẩm','Viên khử mùi và hút ẩm',NULL,NULL,NULL,NULL,NULL,0,'Vien-khu-mui-va-hut-am','phụ kiện khác'),(25,'Lọ tẩy ố 1','Lọ tẩy ố',NULL,'2020-12-06 16:56:25',NULL,NULL,NULL,0,'lo-tay-o-11607248586437','phụ kiện khác'),(26,'Sticker','Sticker',NULL,NULL,NULL,NULL,NULL,0,'Sticker','phụ kiện khác'),(27,'van','van','2020-12-06 16:07:41',NULL,NULL,NULL,NULL,0,'van1607245662205','Sản phẩm'),(28,'van1','van','2020-12-06 16:10:07','2020-12-06 16:56:59',NULL,NULL,NULL,0,'van11607248619650','sản phẩm'),(29,'Adidas','Một thương hiệu nổi tiếng trên thế giới','2020-12-22 10:47:02',NULL,NULL,NULL,NULL,1,'adidas1608608822668','sản phẩm'),(30,'vans','là một nhãn hiệu nổi tiếng.','2020-12-22 22:18:40','2021-01-04 12:44:48',NULL,NULL,NULL,1,'vans1609739378903','sản phẩm');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14 16:13:23
