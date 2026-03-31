/*
Lección 4: Consultas agrupadas
*/

-- Usar funciones como SUM(), AVG(), COUNT() sobre la tabla de ventas.
SELECT COUNT(*) AS numero_facturas,
    SUM(total_venta) AS total_vendido,
    SUM(total_venta) / COUNT(*) AS ticket_promedio
FROM Ventas;


-- Agrupar ventas por cliente y por producto.
SELECT c.nombres, p.nombre_producto,
    COUNT(*) As numero_compras, SUM(v.total_venta) As total_ventas
FROM Ventas As v
    LEFT JOIN Clientes As c ON c.cliente_id = v.cliente_id
    LEFT JOIN Productos As p ON p.producto_id = v.producto_id
GROUP BY c.nombres, p.nombre_producto;

-- Calcular el total de ventas por cliente.
SELECT c.nombres, SUM(v.total_venta) As total_ventas
FROM Ventas As v
    LEFT JOIN Clientes As c ON c.cliente_id = v.cliente_id
    LEFT JOIN Productos As p ON p.producto_id = v.producto_id
GROUP BY c.nombres;

SELECT 
    v.venta_id, 
    c.nombres AS cliente, 
    p.nombre_producto AS producto, 
    v.fecha, 
    v.total_venta
FROM Ventas As v
JOIN Clientes As c ON c.cliente_id = v.cliente_id
JOIN Productos As p ON p.producto_id = v.producto_id;
