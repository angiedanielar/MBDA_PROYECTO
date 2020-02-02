-- CRUDI --

-- Paquetes --

CREATE OR REPLACE PACKAGE BODY mantener_persona
IS
   PROCEDURE adicionar_persona(nombres VARCHAR, apellidos VARCHAR, tid VARCHAR, numid NUMBER, telefonos NUMBER, direccion VARCHAR, correo VARCHAR) IS
   BEGIN
   INSERT INTO Personas VALUES(nombres, apellidos, tid, numid, telefonos, direccion, correo);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_persona;
   
   PROCEDURE modificar_persona(NUEVOnombres VARCHAR, NUEVOapellidos VARCHAR, NUEVOtID VARCHAR, NUEVOtelefonos NUMBER, NUEVOdireccion VARCHAR, NUEVOcorreo VARCHAR, NUEVOnumID NUMBER) IS
   BEGIN
   UPDATE Personas SET nombres = NUEVOnombres, apellidos = NUEVOapellidos, tid = NUEVOtID, telefonos = NUEVOtelefonos, direccion = NUEVOdireccion, correo = NUEVOcorreo WHERE numID = NUEVONumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_persona;
END mantener_persona;
/

CREATE OR REPLACE PACKAGE BODY mantener_cliente
IS
   PROCEDURE adicionar_cliente(tTID VARCHAR, NumID NUMBER) IS
   BEGIN
   INSERT INTO Clientes VALUES(tid, numid);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_cliente;
   PROCEDURE modificar_cliente(NUEVOtID VARCHAR, NUEVOnumID NUMBER) IS
   BEGIN
   UPDATE Clientes SET tid = NUEVOtID WHERE numID = NUEVONumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_cliente;
END mantener_cliente;
/

CREATE OR REPLACE PACKAGE BODY mantener_empleado
IS
   PROCEDURE adicionar_empleado(tID VARCHAR, NumID NUMBER, salario NUMBER, horario VARCHAR, cargo VARCHAR) IS
   BEGIN
   INSERT INTO Empleados VALUES(tID, NumID, salario, horario, cargo);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_empleado;
   PROCEDURE modificar_empleado(NUEVOtID VARCHAR, NUEVOsalario NUMBER, NUEVOnumID NUMBER) IS
   BEGIN
   UPDATE Empleados SET tID = NUEVOtID, salario = NUEVOsalario WHERE numID = NUEVOnumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_empleado;
   
   PROCEDURE adicionar_veterinario(veterinariotID VARCHAR, veterinarioNumID NUMBER, especialidad VARCHAR) IS
   BEGIN
   INSERT INTO Veterinarios VALUES(veterinariotID, veterinarioNumID, especialidad);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_veterinario;
   PROCEDURE modificar_veterinario(NUEVOveterinariotID VARCHAR, NUEVOespecialidad VARCHAR, NUEVOveterinarioNumID NUMBER) IS
   BEGIN
   UPDATE Veterinarios SET veterinariotID = NUEVOveterinariotID, especialidad = NUEVOespecialidad WHERE veterinarionumID = NUEVOveterinarionumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_veterinario;
   
   PROCEDURE adicionar_asistente(asistentetID VARCHAR, asistenteNumID NUMBER, tipo VARCHAR) IS
   BEGIN
   INSERT INTO Asistentes VALUES(asistentetID, asistenteNumID, tipo);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_asistente;
   PROCEDURE modificar_asistente(NUEVOasistentetID VARCHAR, NUEVOtipo VARCHAR, NUEVOasistenteNumID NUMBER) IS
   BEGIN
   UPDATE Asistentes SET asistentetID = NUEVOasistentetID, tipo = NUEVOtipo WHERE asistentenumID = NUEVOasistentenumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_asistente;
   
   PROCEDURE adicionar_analistaclinico(analistaclinicotID VARCHAR, analistaclinicoNumID NUMBER, tipo VARCHAR) IS
   BEGIN
   INSERT INTO AnalistasClinicos VALUES(analistaclinicotID, analistaclinicoNumID, tipo);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_analistaclinico;
   PROCEDURE modificar_analistaclinico(NUEVOanalistaclinicotID VARCHAR, NUEVOtipo VARCHAR, NUEVOanalistaclinicoNumID NUMBER) IS
   BEGIN
   UPDATE AnalistasClinicos SET analistaclinicotID = NUEVOanalistaclinicotID, tipo = NUEVOtipo WHERE analistacliniconumID = NUEVOanalistacliniconumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_analistaclinico;

   PROCEDURE adicionar_peluquero(peluquerotID VARCHAR, peluqueroNumID NUMBER, tipo VARCHAR) IS
   BEGIN
   INSERT INTO Peluqueros VALUES(peluquerotID, peluqueroNumID, tipo);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_peluquero;
   PROCEDURE modificar_peluquero(NUEVOpeluquerotID VARCHAR, NUEVOtipo VARCHAR, NUEVOpeluqueroNumID NUMBER) IS
   BEGIN
   UPDATE Peluqueros SET peluquerotID = NUEVOpeluquerotID, tipo = NUEVOtipo WHERE peluqueronumID = NUEVOpeluqueronumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_peluquero;
    
   PROCEDURE adicionar_cajero(cajerotID VARCHAR, cajeroNumID NUMBER) IS
   BEGIN
   INSERT INTO Cajeros VALUES(cajerotID, cajeroNumID);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_cajero;
   PROCEDURE modificar_cajero(NUEVOcajerotID VARCHAR, NUEVOcajeroNumID NUMBER) IS
   BEGIN
   UPDATE Cajeros SET cajerotID = NUEVOcajerotID WHERE cajeronumID = NUEVOcajeronumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_cajero;   
END mantener_empleado;
/

CREATE OR REPLACE PACKAGE BODY mantener_mascota
IS
   PROCEDURE adicionar_mascota(mascotanombre VARCHAR, clientetID VARCHAR, clienteNumID NUMBER, tipoAnimal VARCHAR, raza VARCHAR, edad NUMBER, alergias VARCHAR, sexo VARCHAR, peso NUMBER) IS
   BEGIN
   INSERT INTO Mascotas VALUES(mascotanombre, clientetID, clienteNumID, tipoAnimal, raza, edad, alergias, sexo, peso);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_mascota;
   PROCEDURE modificar_mascota(NUEVOmascotanombre VARCHAR, NUEVOedad NUMBER, NUEVOraza VARCHAR, NUEVOalergias VARCHAR, NUEVOpeso NUMBER, NUEVOmID NUMBER) IS
   BEGIN
   UPDATE Mascotas SET mascotanombre = NUEVOmascotanombre, edad = NUEVOedad, raza = NUEVOraza, alergias = NUEVOalergias, peso = NUEVOpeso WHERE mID = NUEVOmID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_mascota;
END mantener_mascota;
/

CREATE OR REPLACE PACKAGE BODY registrar_solicitud
IS
   PROCEDURE adicionar_solicitud(cajerotID VARCHAR, cajeroNumID NUMBER, clienteNumID NUMBER, clientetID VARCHAR, mascota NUMBER) IS
   BEGIN
   INSERT INTO Solicitudes VALUES(cajerotID, cajeroNumID, clienteNumID, clientetID, mascota);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_solicitud;
   PROCEDURE modificar_solicitud(NUEVOclientetID VARCHAR,NUEVOmascota NUMBER, NUEVOclienteNumID NUMBER) IS
   BEGIN
   UPDATE Solicitudes SET clientetID = NUEVOclientetID, mascota = NUEVOmascota WHERE clienteNumID = NUEVOclienteNumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_solicitud;
   
   PROCEDURE adicionar_solicitudDeServicio(servicio VARCHAR) IS
   BEGIN
   INSERT INTO SolicitudesDeServicios VALUES(servicio);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END adicionar_solicitudDeServicio;
END registrar_solicitud;
/

CREATE OR REPLACE PACKAGE BODY registrar_cita
IS
   PROCEDURE adicionar_cita(fecha DATE, empleadotID VARCHAR, empleadoNumID NUMBER, solicitud NUMBER) IS
   BEGIN
   INSERT INTO Citas VALUES(fecha, empleadotID, empleadoNumID, solicitud);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_cita;
   PROCEDURE modificar_cita(NUEVOfecha DATE, NUEVOempleadotID VARCHAR, NUEVOempleadoNumID NUMBER) IS
   BEGIN
   UPDATE Citas SET fecha = NUEVOfecha, empleadotID = NUEVOempleadotID WHERE empleadoNumID = NUEVOempleadoNumID;
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081, 'VALOR INGRESADO NO VALIDO');
   END modificar_cita;
END registrar_cita;
/

CREATE OR REPLACE PACKAGE BODY registrar_prestaciondeservicio
IS
   PROCEDURE adicionar_prestacionServicio(cita NUMBER, duracion NUMBER, materiales VARCHAR, observaciones VARCHAR) IS
   BEGIN
   INSERT INTO PrestacionesServicios VALUES(cita, duracion, materiales, observaciones);
   COMMIT;
   EXCEPTION
   WHEN OTHERS THEN
   ROLLBACK;
   raise_application_error(-20081,'VALOR INGRESADO NO VALIDO');
   END adicionar_prestacionServicio;
END registrar_prestaciondeservicio;
/
