-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: laboratorio_views
-- ------------------------------------------------------
-- Server version	9.7.1

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '7f14c28d-85ff-11f1-b4d0-d0c1b57f60fe:1-318';

--
-- Temporary view structure for view `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!50001 DROP VIEW IF EXISTS `usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `usuarios` AS SELECT 
 1 AS `id`,
 1 AS `login`,
 1 AS `nome_completo`,
 1 AS `telefone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_catalogo_vitrine`
--

DROP TABLE IF EXISTS `vw_catalogo_vitrine`;
/*!50001 DROP VIEW IF EXISTS `vw_catalogo_vitrine`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_catalogo_vitrine` AS SELECT 
 1 AS `id`,
 1 AS `titulo`,
 1 AS `preco`,
 1 AS `marca`,
 1 AS `estoque_disponivel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_vendas_consolidadas`
--

DROP TABLE IF EXISTS `vw_vendas_consolidadas`;
/*!50001 DROP VIEW IF EXISTS `vw_vendas_consolidadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vendas_consolidadas` AS SELECT 
 1 AS `data_pedido`,
 1 AS `cliente`,
 1 AS `categoria`,
 1 AS `total_vendido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_clientes_inadimplentes`
--

DROP TABLE IF EXISTS `vw_clientes_inadimplentes`;
/*!50001 DROP VIEW IF EXISTS `vw_clientes_inadimplentes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_clientes_inadimplentes` AS SELECT 
 1 AS `cliente_id`,
 1 AS `parcelas_atrasadas`,
 1 AS `divida_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_funcionarios_publico`
--

DROP TABLE IF EXISTS `vw_funcionarios_publico`;
/*!50001 DROP VIEW IF EXISTS `vw_funcionarios_publico`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_funcionarios_publico` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `cargo`,
 1 AS `departamento`,
 1 AS `email_corporativo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `usuarios`
--

/*!50001 DROP VIEW IF EXISTS `usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `usuarios` AS select `a`.`id` AS `id`,`a`.`login` AS `login`,`p`.`nome_completo` AS `nome_completo`,`p`.`telefone` AS `telefone` from (`usuarios_auth` `a` join `usuarios_perfil` `p` on((`a`.`id` = `p`.`usuario_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_catalogo_vitrine`
--

/*!50001 DROP VIEW IF EXISTS `vw_catalogo_vitrine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_catalogo_vitrine` AS select `p`.`id` AS `id`,`p`.`titulo` AS `titulo`,`p`.`preco` AS `preco`,`m`.`nome` AS `marca`,`e`.`quantidade` AS `estoque_disponivel` from ((`produtos` `p` left join `marcas` `m` on((`p`.`marca_id` = `m`.`id`))) left join `estoque` `e` on((`p`.`id` = `e`.`produto_id`))) where (`p`.`publicado` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vendas_consolidadas`
--

/*!50001 DROP VIEW IF EXISTS `vw_vendas_consolidadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vendas_consolidadas` AS select `p`.`data_pedido` AS `data_pedido`,`c`.`nome` AS `cliente`,`pr`.`categoria` AS `categoria`,sum((`ip`.`quantidade` * `ip`.`preco_unitario`)) AS `total_vendido` from (((`pedidos` `p` join `clientes` `c` on((`p`.`cliente_id` = `c`.`id`))) join `itens_pedido` `ip` on((`p`.`id` = `ip`.`pedido_id`))) join `produtos` `pr` on((`ip`.`produto_id` = `pr`.`id`))) group by `p`.`data_pedido`,`c`.`nome`,`pr`.`categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_clientes_inadimplentes`
--

/*!50001 DROP VIEW IF EXISTS `vw_clientes_inadimplentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_clientes_inadimplentes` AS select `faturas`.`cliente_id` AS `cliente_id`,count(0) AS `parcelas_atrasadas`,sum(`faturas`.`valor`) AS `divida_total` from `faturas` where (`faturas`.`status` = 'ATRASADA') group by `faturas`.`cliente_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_funcionarios_publico`
--

/*!50001 DROP VIEW IF EXISTS `vw_funcionarios_publico`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_funcionarios_publico` AS select `funcionarios`.`id` AS `id`,`funcionarios`.`nome` AS `nome`,`funcionarios`.`cargo` AS `cargo`,`funcionarios`.`departamento` AS `departamento`,`funcionarios`.`email_corporativo` AS `email_corporativo` from `funcionarios` where (`funcionarios`.`ativo` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-25  8:02:08
