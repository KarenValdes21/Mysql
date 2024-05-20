CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCliente`(
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
END