/*Cantidad de productos comprados por cliente en el mes actual*/
/*
DROP VIEW Ventas;
*/
CREATE VIEW Ventas AS 
SELECT id_cliente, MONTH(fecha) AS mes, YEAR(fecha) AS ano, SUM(cantidad) AS cantidad
FROM venta
GROUP BY id_cliente, mes, ano;

SELECT cliente.nombre, Ventas.cantidad, Ventas.mes
FROM cliente INNER JOIN Ventas
ON cliente.id_cliente = Ventas.id_cliente AND mes = MONTH(CURRENT_DATE()) AND ano = YEAR(current_date())
ORDER BY cantidad DESC;
