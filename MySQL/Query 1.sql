/*Todos los productos del rubro "librería", creados hoy.*/

SELECT rubro.rubro, producto.nombre, producto.fecha_creacion
FROM rubro INNER JOIN producto
ON rubro.id_rubro = producto.id_rubro AND rubro.rubro = 'libreria' AND producto.fecha_creacion = CURRENT_DATE();




