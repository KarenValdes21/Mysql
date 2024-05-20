CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarPedido`(
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
END