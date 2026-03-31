
/*
Lección 2 - Consultas a una sola tabla
*/

-- Crear la tabla Clientes con al menos 5 campos

CREATE TABLE IF NOT EXISTS Clientes (
    cliente_id INTEGER PRIMARY KEY,
    nombres TEXT NOT NULL,
    ciudad TEXT NOT NULL,
    region TEXT NOT NULL,
    genero TEXT,
    telefono TEXT,
    email TEXT,
    fecha_registro DATE
);

/*
INSERT - Inserta o agrega registros nuevos
UPDATE - Modifica registros que existen
DELETE - Borra registros que existen
*/

-- Insertar al menos 3 registros.
/*
INSERT INTO Clientes
 (cliente_id, nombres, ciudad, region, genero, telefono, email, fecha_registro)
VALUES
 (1, "Carlos Soto", "La Serena", "Coquimbo", "M", "+569-7940-3675", "algo@algo.com", "2026-02-10"),
 (2, "Fabiana Díaz", "Santiago", "Santiago", "F", "999999", "fabiana@algo.com", "2026-02-20"),
 (3, "Mariana Villalobos", "Santiago", "Santiago", "F", "888888", "mariana@algo.com", "2026-03-05")
*/

-- Realizar consultas simples para seleccionar:
--  todos los clientes
--SELECT * FROM Clientes

--  filtrar por ciudad
--SELECT * FROM Clientes WHERE ciudad = "La Serena"

--  filtrar por nombre
--SELECT * FROM Clientes WHERE nombres like "%Mariana%"

INSERT INTO Clientes
 (cliente_id, nombres, ciudad, region, genero, telefono, email, fecha_registro)
VALUES
 (1, 'Carlos Soto', 'La Serena', 'Coquimbo', 'M', '+569-7940-3675', 'algo@algo.com', '2026-02-10'),
 (2, 'Fabiana Díaz', 'Santiago', 'Santiago', 'F', '999999', 'fabiana@algo.com', '2026-02-20'),
 (3, 'Mariana Villalobos', 'Santiago', 'Santiago', 'F', '888888', 'mariana@algo.com', '2026-03-05');
