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
-- Temporary view structure for view `orders_morethan2`
--

DROP TABLE IF EXISTS `orders_morethan2`;
/*!50001 DROP VIEW IF EXISTS `orders_morethan2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_morethan2` AS SELECT 
 1 AS `MENU_ITEM_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_with_quant_more_than2`
--

DROP TABLE IF EXISTS `orders_with_quant_more_than2`;
/*!50001 DROP VIEW IF EXISTS `orders_with_quant_more_than2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_with_quant_more_than2` AS SELECT 
 1 AS `ORDER_ID`,
 1 AS `QUANTITY`,
 1 AS `TOTAL_COST`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orders_cost_morethan150`
--

DROP TABLE IF EXISTS `orders_cost_morethan150`;
/*!50001 DROP VIEW IF EXISTS `orders_cost_morethan150`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_cost_morethan150` AS SELECT 
 1 AS `CUSTOMER_ID`,
 1 AS `FullName`,
 1 AS `ORDER_ID`,
 1 AS `TOTAL_COST`,
 1 AS `MENU_ITEM_NAME`,
 1 AS `CATEGORY_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `orders_morethan2`
--

/*!50001 DROP VIEW IF EXISTS `orders_morethan2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_morethan2` AS select `menu`.`MENU_ITEM_NAME` AS `MENU_ITEM_NAME` from (`tb_orders` `orders` join `tb_menu` `menu` on((`menu`.`MENU_ITEM_ID` = `orders`.`MENU_ITEM_ID`))) where `orders`.`QUANTITY` > any (select `tb_orders`.`QUANTITY` from `tb_orders` where (`tb_orders`.`QUANTITY` > 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_with_quant_more_than2`
--

/*!50001 DROP VIEW IF EXISTS `orders_with_quant_more_than2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_with_quant_more_than2` AS select `tb_orders`.`ORDER_ID` AS `ORDER_ID`,`tb_orders`.`QUANTITY` AS `QUANTITY`,`tb_orders`.`TOTAL_COST` AS `TOTAL_COST` from `tb_orders` where (`tb_orders`.`QUANTITY` > 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_cost_morethan150`
--

/*!50001 DROP VIEW IF EXISTS `orders_cost_morethan150`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_cost_morethan150` AS select `customer`.`CUSTOMER_ID` AS `CUSTOMER_ID`,concat(`customer`.`CUSTOMER_NAME`,' ',`customer`.`CUSTOMER_SURNAME`) AS `FullName`,`orders`.`ORDER_ID` AS `ORDER_ID`,`orders`.`TOTAL_COST` AS `TOTAL_COST`,`menu`.`MENU_ITEM_NAME` AS `MENU_ITEM_NAME`,`mencat`.`CATEGORY_NAME` AS `CATEGORY_NAME` from (((`tb_customer_details` `customer` join `tb_orders` `orders` on((`orders`.`CUSTOMER_ID` = `customer`.`CUSTOMER_ID`))) join `tb_menu` `menu` on((`menu`.`MENU_ITEM_ID` = `orders`.`MENU_ITEM_ID`))) join `menu_item_categories` `mencat` on((`menu`.`MENU_ITEM_ID` = `mencat`.`CATEGORY_ID`))) where (`orders`.`TOTAL_COST` > 150.00) order by `orders`.`TOTAL_COST` */;
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

-- Dump completed on 2024-04-28 20:21:19
