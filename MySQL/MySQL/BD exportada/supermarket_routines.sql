-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Temporary view structure for view `vw_datoscliente`
--

DROP TABLE IF EXISTS `vw_datoscliente`;
/*!50001 DROP VIEW IF EXISTS `vw_datoscliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_datoscliente` AS SELECT 
 1 AS `id`,
 1 AS `Cliente_Identificador`,
 1 AS `NombrePais`,
 1 AS `NombreEstado`,
 1 AS `NombreCiudad`,
 1 AS `NombreRegion`,
 1 AS `NombreSegmento`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_datoscliente`
--

/*!50001 DROP VIEW IF EXISTS `vw_datoscliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_datoscliente` AS select `c`.`id` AS `id`,`c`.`ClienteID` AS `Cliente_Identificador`,`p`.`Pais` AS `NombrePais`,`e`.`Estado` AS `NombreEstado`,`ci`.`Ciudad` AS `NombreCiudad`,`r`.`Region` AS `NombreRegion`,`s`.`Segmento` AS `NombreSegmento` from (((((`cliente` `c` join `region` `r` on((`c`.`idRegion` = `r`.`id`))) join `ciudad` `ci` on((`r`.`idCiudad` = `ci`.`id`))) join `estado` `e` on((`ci`.`idEstado` = `e`.`id`))) join `pais` `p` on((`e`.`idPais` = `p`.`id`))) join `segmento` `s` on((`c`.`idSegmento` = `s`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'supermarket'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_AgregarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AgregarCliente`(
IN _ClienteID VARCHAR(30),
    IN _UsuarioCrea INT
)
BEGIN
    -- Insertar el nuevo cliente
    INSERT INTO cliente (ClienteID, idUsuarioCrea)
    VALUES (_ClienteID, _UsuarioCrea);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AgregarPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AgregarPedido`(
	IN PedidoID VARCHAR(30),
    IN Precio DECIMAL(18, 2),
    IN Cantidad INT,
    IN Descuento DECIMAL(18, 2),
    IN Ganancia DECIMAL(18, 2),
    IN OrdenFecha DATETIME,
    IN EnvioFecha DATETIME,
    IN ModoEnvio NVARCHAR(100)
)
BEGIN
    -- Insertar el nuevo pedido
   INSERT INTO Pedido (PedidoID, Precio, Cantidad, Descuento, Ganancia, OrdenFecha, EnvioFecha, ModoEnvio)
    VALUES (PedidoID, Precio, Cantidad, Descuento, Ganancia, OrdenFecha, EnvioFecha, ModoEnvio);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_AgregarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AgregarProducto`(
    IN ProductoID VARCHAR(30),
    IN NombreProducto VARCHAR(255),
    IN IdUsuarioCrea INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Ocurrió un error al intentar agregar el producto.' AS ErrorMessage;
    END;

    START TRANSACTION;

    -- Insertar el nuevo producto
    INSERT INTO Producto (ProductoID, NombreProducto, idUsuarioCrea)
    VALUES (ProductoID, NombreProducto, IdUsuarioCrea);

    COMMIT;
    SELECT 'El producto se ha agregado correctamente.' AS SuccessMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EditarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EditarCliente`(
IN _id INT,
	IN _ClienteID VARCHAR(30),
    IN NuevoIdUsuarioModifica INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Ocurrió un error al intentar actualizar el cliente.' AS ErrorMessage;
    END;

    START TRANSACTION;

    -- Actualizar el nombre del producto y el usuario que lo modificó
    UPDATE cliente 
    SET ClienteID = _ClienteID,
        idUsuarioModifica = NuevoIdUsuarioModifica,
        fechaModifica = NOW()
    WHERE id = _id;

    COMMIT;
    SELECT 'El producto ha sido actualizado correctamente.' AS SuccessMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EditarPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EditarPedido`(
IN _PedidoID VARCHAR(30),
    IN _Precio DECIMAL(18, 2),
    IN _Cantidad INT,
    IN _Descuento DECIMAL(18, 2),
    IN _Ganancia DECIMAL(18, 2),
    IN _OrdenFecha DATETIME,
    IN _EnvioFecha DATETIME,
    IN _ModoEnvio VARCHAR(100),
    IN _idUsarioModifica INT
)
BEGIN
    -- Actualizar el pedido existente
    UPDATE Pedido
    SET Precio = _Precio,
        Cantidad = _Cantidad,
        Descuento = _Descuento,
        Ganancia = _Ganancia,
        OrdenFecha = _OrdenFecha,
        EnvioFecha = _EnvioFecha,
        ModoEnvio = _ModoEnvio,
        idUsuarioModifica = _idUsarioModifica,
        fechaModifica = NOW()
    WHERE PedidoID = _PedidoID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EditarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EditarProducto`(
 IN _ProductoID VARCHAR(30),
    IN NuevoNombreProducto VARCHAR(255),
    IN NuevoIdUsuarioModifica INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Ocurrió un error al intentar actualizar el producto.' AS ErrorMessage;
    END;

    START TRANSACTION;

    -- Actualizar el nombre del producto y el usuario que lo modificó
    UPDATE producto 
    SET NombreProducto = NuevoNombreProducto,
        idUsuarioModifica = NuevoIdUsuarioModifica,
        fechaModifica = NOW()
    WHERE ProductoID = _ProductoID;

    COMMIT;
    SELECT 'El producto ha sido actualizado correctamente.' AS SuccessMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EliminarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarCliente`(

    IN ClienteID INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Ocurrió un error al intentar eliminar el cliente y sus datos relacionados.' AS ErrorMessage;
    END;

    START TRANSACTION;

    -- Eliminar los registros relacionados en la tabla Segmento
    DELETE FROM segmento WHERE id = (SELECT id FROM cliente WHERE id = ClienteID);

    -- Eliminar los registros relacionados en la tabla Region
    DELETE FROM region WHERE id = (SELECT id FROM cliente WHERE id = ClienteID);

    -- Eliminar los registros relacionados en la tabla Estado
    DELETE FROM estado WHERE id IN (SELECT id FROM ciudad WHERE id = (SELECT id FROM cliente WHERE id = ClienteID));

    -- Eliminar los registros relacionados en la tabla Ciudad
    DELETE FROM ciudad WHERE id = (SELECT id FROM cliente WHERE id = clienteID);

    -- Eliminar los registros relacionados en la tabla Pais
    DELETE FROM pais WHERE id IN (SELECT id FROM estado WHERE id IN (SELECT id FROM ciudad WHERE id = (SELECT id FROM cliente WHERE id = ClienteID)));

    -- Eliminar el registro de la tabla Cliente
    DELETE FROM cliente WHERE id = ClienteID;

    COMMIT;
    SELECT 'El cliente y sus datos relacionados han sido eliminados correctamente.' AS SuccessMessage;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EliminarPedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarPedido`(
	IN _PedidoID VARCHAR(255)
)
BEGIN
UPDATE pedido 
    SET estatus = 0,
        idUsuarioModifica = 1, -- Actualiza el ID del usuario que lo modificó
        fechaModifica = NOW() -- Actualiza la fecha de modificación
    WHERE PedidoID = _PedidoID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EliminarProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarProducto`(

    IN _ProductoID VARCHAR(255)
)
BEGIN
UPDATE producto
SET estatus = 0,
	fechaModifica = NOW()
WHERE ProductoID = _ProductoID;
END ;;
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

-- Dump completed on 2024-05-14  0:26:16
