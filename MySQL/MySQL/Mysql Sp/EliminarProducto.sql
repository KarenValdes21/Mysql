SET SQL_SAFE_UPDATES = 0;

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_EliminarProducto`(
    IN _ProductoID VARCHAR(255)
)
BEGIN
UPDATE producto
SET estatus = 0,
	fechaModifica = NOW()
WHERE ProductoID = _ProductoID;
END