CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_AgregarCliente`(
	IN _ClienteID VARCHAR(30),
    IN _UsuarioCrea INT
)
BEGIN
    -- Insertar el nuevo cliente
    INSERT INTO cliente (ClienteID, idUsuarioCrea)
    VALUES (_ClienteID, _UsuarioCrea);
END