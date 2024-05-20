CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPedido`(
	IN _PedidoID VARCHAR(255)
)
BEGIN
UPDATE pedido 
    SET estatus = 0,
        idUsuarioModifica = 1, -- Actualiza el ID del usuario que lo modificó
        fechaModifica = NOW() -- Actualiza la fecha de modificación
    WHERE PedidoID = _PedidoID;
END