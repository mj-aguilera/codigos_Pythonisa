/*
Lección 3: Consultas a tablas relacionadas
*/

-- Crear las tablas Productos y Ventas

CREATE TABLE IF NOT EXISTS Productos (
    producto_id INTEGER PRIMARY KEY,
    nombre_producto TEXT NOT NULL,
    categoria TEXT,
    precio_unitario REAL,
    fecha_ingreso DATE
);

CREATE TABLE IF NOT EXISTS Ventas (
    venta_id INTEGER PRIMARY KEY,
    cliente_id INTEGER,
    producto_id INTEGER,
    fecha DATE,
    cantidad INTEGER,
    impuesto REAL,
    descuento REAL,
    total_venta INTEGER,
    
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES Productos(producto_id)
);

-- Establecer claves primarias y foráneas.
/*
ALTER TABLE Ventas
ADD CONSTRAINT fk_ventas_cliente
FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id);
ALTER TABLE Ventas
ADD CONSTRAINT fk_ventas_producto
FOREIGN KEY (producto_id) REFERENCES Productos(producto_id);
*/

-- Agregar registros/filas a las tablas
/*
INSERT INTO Productos
(producto_id, nombre_producto, categoria, precio_unitario, fecha_ingreso)
VALUES
(1, 'Notebook', 'Tecnologia', 800000, '2026-01-15'),
(2, 'Mouse', 'Accesorios', 15000, '2026-01-15'),
(3, 'Teclado', 'Accesorios', 30000, '2026-01-15');
*/
/*
INSERT INTO Ventas
(venta_id, cliente_id, producto_id, fecha, cantidad, total_venta)
VALUES
(1, 1, 1, '2026-02-10', 1, 800000),
(2, 1, 2, '2026-02-15', 2, 15000),
(3, 2, 2, '2026-02-25', 1, 15000),
(4, 3, 3, '2026-03-10', 1, 30000),
(5, 1, 3, '2026-03-15', 1, 790000)
*/

-- Verificar integridad referencial
-- No debe permitir agregar un registro que
-- producto_id = 5, porque el id 5 no existe en Productos
/*
INSERT INTO Ventas
(venta_id, cliente_id, producto_id, fecha, cantidad, total_venta)
VALUES
(1, 1, 5, '2026-02-10', 1, 800000)
*/

--SELECT * FROM Productos


-- Ejecutar consultas con JOIN para obtener: qué cliente compró qué producto y cuándo.
/*
SELECT v.venta_id, v.fecha, c.nombres, p.nombre_producto, v.cantidad, v.total_venta
FROM Ventas As v
    LEFT JOIN Clientes As c ON c.cliente_id = v.cliente_id
    LEFT JOIN Productos As p ON p.producto_id = v.producto_id
*/

-- Agregamos más ventas
/*
INSERT INTO Ventas
(venta_id, cliente_id, producto_id, fecha, cantidad, total_venta)
VALUES
(6, 2, 2, '2026-02-28', 1, 17000)
*/
INSERT INTO Ventas
(venta_id, cliente_id, producto_id, fecha, cantidad, total_venta)
VALUES
(7, 2, 3, '2026-02-28', 1, 25000)


INSERT INTO Productos
(producto_id, nombre_producto, categoria, precio_unitario, fecha_ingreso)
VALUES
(1, 'Notebook', 'Tecnologia', 800000, '2026-01-15'),
(2, 'Mouse', 'Accesorios', 15000, '2026-01-15'),
(3, 'Teclado', 'Accesorios', 30000, '2026-01-15');


INSERT INTO Ventas
(venta_id, cliente_id, producto_id, fecha, cantidad, total_venta)
VALUES
(1, 1, 1, '2026-02-10', 1, 800000),
(2, 1, 2, '2026-02-15', 2, 15000),
(3, 2, 2, '2026-02-25', 1, 15000),
(4, 3, 3, '2026-03-10', 1, 30000),
(5, 1, 3, '2026-03-15', 1, 790000),
(6, 2, 2, '2026-02-28', 1, 17000),
(7, 2, 3, '2026-02-28', 1, 25000);
