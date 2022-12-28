/*Rubros que no tienen ventas en los últimos 2 meses.*/
USE prueba_tecnica;
/*
DROP VIEW ProductosRubros;

CREATE VIEW ProductosRubros AS
SELECT producto.codigo, rubro.rubro, producto.nombre
FROM rubro INNER JOIN producto
ON rubro.id_rubro = producto.id_rubro;
*/
SELECT venta.id_venta, ProductosRubros.nombre, ProductosRubros.rubro, venta.fecha 
FROM ProductosRubros INNER JOIN venta
ON venta.codigo_producto = ProductosRubros.codigo AND MONTH(CURRENT_DATE())-MONTH(venta.fecha) > 2 AND YEAR(current_date()) = YEAR(venta.fecha)
ORDER BY venta.fecha DESC;
