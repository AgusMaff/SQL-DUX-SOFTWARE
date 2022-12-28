/*Ventas que tienen al menos un producto del rubro "bazar"*/
/*
DROP VIEW ProductosBazar;
*/
CREATE VIEW ProductosBazar AS
SELECT producto.codigo, rubro.rubro, producto.nombre
FROM rubro INNER JOIN producto 
ON rubro.id_rubro = producto.id_rubro AND rubro.rubro = 'bazar';

SELECT venta.id_venta, ProductosBazar.nombre, ProductosBazar.rubro, SUM(venta.cantidad) AS SumCantidad
FROM ProductosBazar INNER JOIN venta
ON venta.codigo_producto = ProductosBazar.codigo
GROUP BY venta.id_venta, ProductosBazar.nombre, ProductosBazar.rubro
ORDER BY SumCantidad DESC;
