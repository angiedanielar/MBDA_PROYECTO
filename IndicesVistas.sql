--Indices--

CREATE INDEX INDX_MASCOTAS ON Mascotas(mascotanombre);
CREATE INDEX INDX_Personas ON Personas(nombres,apellidos);

--Vistas segun las consultas mas pensadas--

CREATE OR REPLACE VIEW CITAS_ATENTIDAS AS (
SELECT Clientes.NumID, Clientes.nombre , Cantidad
FROM Clientes,( SELECT empleado, COUNT(empleado) AS Cantidad
FROM Citas GROUP BY empleado) 
WHERE  Clientes.NumID = empleado);

CREATE OR REPLACE VIEW INFO_MASCOTAS AS(
SELECT nombre, peso, alergias
FROM Mascotas, Clientes
WHERE Mascotas.cleinteNumID = Clientes.NumID);