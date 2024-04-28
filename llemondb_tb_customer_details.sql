-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: llemondb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `tb_customer_details`
--

DROP TABLE IF EXISTS `tb_customer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_customer_details` (
  `CUSTOMER_ID` int NOT NULL AUTO_INCREMENT,
  `TB_CUSTOMER_DETAILScol` varchar(45) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(155) DEFAULT NULL,
  `CUSTOMER_SURNAME` varchar(155) DEFAULT NULL,
  `CUSTOMER_PHONE_NUMBER` varchar(155) DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customer_details`
--

LOCK TABLES `tb_customer_details` WRITE;
/*!40000 ALTER TABLE `tb_customer_details` DISABLE KEYS */;
INSERT INTO `tb_customer_details` VALUES (1,NULL,'John','Doe','1234567890','john.doe@example.com'),(2,NULL,'Jane','Smith','0987654321','jane.smith@example.com'),(3,NULL,'Michael','Johnson','5551234567','michael.johnson@example.com'),(4,NULL,'Emily','Williams','9876543210','emily.williams@example.com'),(5,NULL,'David','Brown','7778889999','david.brown@example.com');
/*!40000 ALTER TABLE `tb_customer_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-28 20:21:17
