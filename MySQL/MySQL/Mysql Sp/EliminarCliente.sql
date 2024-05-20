CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCliente`(
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
END