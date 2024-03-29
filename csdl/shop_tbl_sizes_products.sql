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
-- Table structure for table `tbl_sizes_products`
--

DROP TABLE IF EXISTS `tbl_sizes_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sizes_products` (
  `product_id` int NOT NULL,
  `size_id` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_product_idx` (`product_id`),
  KEY `fk_size_idx` (`size_id`),
  CONSTRAINT `fk_productsize` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`),
  CONSTRAINT `fk_sizeproduct` FOREIGN KEY (`size_id`) REFERENCES `tbl_size` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sizes_products`
--

LOCK TABLES `tbl_sizes_products` WRITE;
/*!40000 ALTER TABLE `tbl_sizes_products` DISABLE KEYS */;
INSERT INTO `tbl_sizes_products` VALUES (159,16,214),(159,17,215),(159,18,216),(161,16,257),(161,17,258),(161,18,259),(161,19,260),(160,16,261),(160,17,262),(160,18,263),(160,19,264),(158,16,333),(158,17,334),(158,18,335),(163,16,344),(163,17,345),(163,18,346),(163,19,347),(162,20,348),(162,16,349),(162,17,350),(162,18,351),(149,16,390),(149,17,391),(149,18,392),(149,19,393),(150,16,394),(150,17,395),(150,18,396),(150,19,397),(151,20,398),(151,16,399),(151,17,400),(151,18,401),(151,19,402),(152,17,403),(152,18,404),(152,19,405),(153,16,406),(153,17,407),(153,18,408),(153,19,409),(154,16,425),(154,17,426),(154,18,427),(154,19,428),(155,20,429),(155,16,430),(155,17,431),(155,18,432),(156,16,433),(156,17,434),(156,18,435),(156,19,436),(157,16,437),(157,17,438),(157,18,439),(177,20,446),(177,16,447),(177,17,448),(177,18,449);
/*!40000 ALTER TABLE `tbl_sizes_products` ENABLE KEYS */;
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
