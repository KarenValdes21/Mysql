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
END