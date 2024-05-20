CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarProducto`(
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
END