/*Cantidad de ventas por producto*/
/*
DROP VIEW Cantidades;
*/
CREATE VIEW Cantidades AS
SELECT venta.id_venta, codigo_producto, SUM(cantidad) AS ventas
FROM venta
GROUP BY codigo_producto;

SELECT producto.nombre, Cantidades.ventas
FROM producto INNER JOIN Cantidades
ON producto.codigo = Cantidades.codigo_producto
ORDER BY ventas DESC;