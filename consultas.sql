-- Consultas operativas --

SELECT mID, mascotanombre, peso, alergias FROM Mascotas, Clientes
WHERE Mascotas.clienteNumID = Clientes.NumID AND Mascotas.clientetID = Clientes.tID;

SELECT Personas.numID, Personas.nombres, Personas.Apellidos, Cantidad
FROM Personas,(SELECT empleadonumID, COUNT(empleadonumID) AS Cantidad FROM Citas
GROUP BY empleadonumID) 
WHERE  Personas.numID = empleadonumID
ORDER BY Cantidad DESC;

--- Consultas gerenciales --

SELECT SUM(PrestacionesServicios.precio) AS TOTAL_VENDIDO 
FROM PrestacionesServicios
WHERE PrestacionesServicios.cita IN (SELECT Solicitud 
FROM Citas 
WHERE (SELECT (to_date(sysdate,'DD/MM/YYYY') - to_date(to_char(Citas.fecha),'DD/MM/YYYY')) from dual) < 365);
