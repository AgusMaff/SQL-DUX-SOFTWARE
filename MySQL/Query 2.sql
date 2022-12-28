/*Monto total vendido por cliente (mostrar nombre del cliente y monto)*/
/*
DROP VIEW Montos;
*/
CREATE VIEW Montos AS
SELECT id_cliente, SUM(cantidad*precio_unitario) AS monto
FROM venta
GROUP BY id_cliente;

SELECT cliente.nombre, Montos.monto
FROM cliente INNER JOIN Montos
ON cliente.id_cliente = Montos.id_cliente
ORDER BY Montos.monto DESC;