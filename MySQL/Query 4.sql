/*Cantidad de productos comprados por cliente en el mes actual*/
/*
DROP VIEW Ventas;
*/
CREATE VIEW Ventas AS 
SELECT id_cliente, MONTH(fecha) AS mes, SUM(cantidad) AS cantidad
FROM venta
GROUP BY id_cliente, mes;

SELECT cliente.nombre, Ventas.cantidad, Ventas.mes
FROM cliente INNER JOIN Ventas
ON cliente.id_cliente = Ventas.id_cliente AND mes = MONTH(CURRENT_DATE())
ORDER BY cantidad DESC;
