ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';

INSERT INTO usuario (nombre, username, contraseña)
VALUES ('Admin', 'admin', SHA1('admin'));

INSERT INTO Cliente (ClienteID, idRegion, idSegmento, idUsuarioCrea)
SELECT DISTINCT 
     `Customer ID`,
    (SELECT id FROM Region WHERE Region = `Sample_ Superstore`.`Region` LIMIT 1) AS idRegion,
    (SELECT id FROM Segmento WHERE Segmento = `Sample_ Superstore`.`Segment` LIMIT 1) AS idSegmento,
    1 AS idUsuarioCrea
FROM `Sample_ Superstore`;


-- Insertar datos en la tabla Producto
INSERT INTO Producto (productoID, NombreProducto, idUsuarioCrea)
SELECT DISTINCT `Product ID`, `Product Name`, 1
FROM `Sample_ Superstore`;

select * from producto;

-- Insertar datos en la tabla Pedido
INSERT INTO pedido (PedidoID, Precio, Cantidad, Descuento, Ganancia, OrdenFecha, EnvioFecha, ModoEnvio, idCliente, idProducto, idUsuarioCrea)
SELECT DISTINCT `Order ID` , Sales, Quantity, Discount, Profit, `Order Date`, `Ship Date`, `Ship Mode`,
    (SELECT id FROM cliente WHERE ClienteID = `Sample_ Superstore`.`Customer ID` LIMIT 1) AS idCliente,
    (SELECT id FROM producto WHERE ProductoID = `Sample_ Superstore`.`Product ID` LIMIT 1) AS idProducto,
    1
FROM supermarket.`sample_ Superstore`;

select * from cliente;

INSERT INTO pais (Pais, idUsuarioCrea)
SELECT DISTINCT Country, 1
FROM `Sample_ Superstore`;

select * from estado;


INSERT INTO Estado (Estado, idPais, idUsuarioCrea)
SELECT DISTINCT State,
    (SELECT id FROM Pais WHERE Pais = `Sample_ Superstore`.`Country` LIMIT 1) AS idPais,
    1
FROM `Sample_ Superstore`;

INSERT INTO ciudad (Ciudad, idUsuarioCrea, idEstado)
SELECT DISTINCT City,
    1 AS idUsuarioCrea,
    (SELECT id FROM Estado WHERE Estado = `Sample_ Superstore`.`State` LIMIT 1) AS idEstado
FROM `Sample_ Superstore`;

INSERT INTO region (Region, idCiudad, idUsuarioCrea)
SELECT DISTINCT Region,
    (SELECT id FROM Ciudad WHERE Ciudad = `Sample_ Superstore`.`City` LIMIT 1) AS idCiudad,
    1 AS idUsuarioCrea
FROM `Sample_ Superstore`;

INSERT INTO Segmento (Segmento, idUsuarioCrea)
SELECT DISTINCT Segment, 1
FROM `Sample_ Superstore`;

select * from  segmento ;

INSERT INTO Subcategoria (Subcategoria, idUsuarioCrea, idCategoria)
SELECT DISTINCT `Sub-Category`, 1,
    (SELECT id FROM Categoria WHERE Categoria = `Sample_ Superstore`.`Category` LIMIT 1) AS idCategoria
FROM `Sample_ Superstore`;

ALTER TABLE sample_superstore
RENAME COLUMN `Sub Category`  to Sub_Category;

-- Mostrar los datos de la tabla Producto
SELECT * FROM supermarket.sample_ superstore;
SELECT * FROM supermarket.`sample_ superstore`;
