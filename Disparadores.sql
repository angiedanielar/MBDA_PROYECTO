/* Restricciones procidimentales
*/

-- CRUD MANTENER Personas --

-- No se puede eliminar ningun dato de las personas. --

CREATE OR REPLACE TRIGGER ELI_Personas
BEFORE DELETE ON Personas
BEGIN 
    RAISE_APPLICATION_ERROR(-20056,'No se puede eliminar');
END ELI_Personas;
/

-- CRUD MANTENER Empleados --

-- No se puede eliminar ningun dato de los empleados. --
CREATE OR REPLACE TRIGGER ELI_Empleados
BEFORE DELETE ON Empleados
BEGIN 
    RAISE_APPLICATION_ERROR(-20004,'No se puede eliminar');
END ELI_Empleados;
/

CREATE OR REPLACE TRIGGER ELI_Peluqueros
BEFORE DELETE ON Peluqueros
BEGIN 
    RAISE_APPLICATION_ERROR(-20046,'No se puede eliminar');
END ELI_Peluqueros;
/

CREATE OR REPLACE TRIGGER ELI_AnalistasClinicos
BEFORE DELETE ON AnalistasClinicos
BEGIN 
    RAISE_APPLICATION_ERROR(-20047,'No se puede eliminar');
END ELI_AnalistasClinicos;
/

CREATE OR REPLACE TRIGGER ELI_Veterinarios
BEFORE DELETE ON Veterinarios
BEGIN 
    RAISE_APPLICATION_ERROR(-20005,'No se puede eliminar');
END ELI_Veterinarios;
/

CREATE OR REPLACE TRIGGER ELI_Asistentes
BEFORE DELETE ON Asistentes
BEGIN 
    RAISE_APPLICATION_ERROR(-20007,'No se puede eliminar');
END ELI_Asistentes;
/

CREATE OR REPLACE TRIGGER ELI_Cajeros
BEFORE DELETE ON Cajeros
BEGIN 
    RAISE_APPLICATION_ERROR(-20008,'No se puede eliminar');
END ELI_Cajeros;
/

-- Lo unico que se no se puede modificar es el cargo, el salario y el horario. --

CREATE OR REPLACE TRIGGER MOD_Empleados
BEFORE UPDATE ON Empleados
FOR EACH ROW 
BEGIN 
    IF :OLD.cargo != :NEW.cargo THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar el cargo.');
    END IF;
    IF :OLD.horario != :NEW.horario THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar el horario.');
    END IF;
END MOD_Empleados;
/


-- CRUD MANTENER CLIENTES--

-- No se puede eliminar ningun dato de los clientes. --

CREATE OR REPLACE TRIGGER ELI_Clientes
BEFORE DELETE ON Clientes
BEGIN 
    RAISE_APPLICATION_ERROR(-20006,'No se puede eliminar');
END ELI_Clientes;
/

-- CRUD MANTENER MASCOTAS --

-- No se puede eliminar ningun dato de las mascotas. --

CREATE OR REPLACE TRIGGER ELI_Mascotas
BEFORE DELETE ON Mascotas
BEGIN 
    RAISE_APPLICATION_ERROR(-20002,'No se puede eliminar');
END ELI_Mascotas;
/

-- El tipo de animal y alergias es lo único que se puede modificar. --

CREATE OR REPLACE TRIGGER MOD_Mascotas
BEFORE UPDATE ON Mascotas
FOR EACH ROW 
BEGIN 
    IF :OLD.clientetID != :NEW.clientetID THEN 
    RAISE_APPLICATION_ERROR(-20003,'No se puede modificar el tipo de documento del responsable.');
    END IF;
    IF :OLD.clienteNumID != :NEW.clienteNumID  THEN 
    RAISE_APPLICATION_ERROR(-20003,'No se puede modificar el numero de documento del responsable.');
    END IF;

    IF :OLD.tipoAnimal != :NEW.tipoAnimal THEN 
    RAISE_APPLICATION_ERROR(-20003,'No se puede modificar el tipo de animal.');
    END IF;
    IF :OLD.sexo != :NEW.sexo THEN 
    RAISE_APPLICATION_ERROR(-20003,'No se puede modificar el sexo de la mascota.');
    END IF;
END MOD_Mascotas;
/

-- El id de las mascotas se genera automaticamente. --

CREATE OR REPLACE TRIGGER AUTO_Mascotas
BEFORE INSERT  ON Mascotas
FOR EACH ROW 
DECLARE
    actual NUMBER;
BEGIN
    SELECT COUNT(*) INTO actual FROM Mascotas;
    :NEW.mid := actual+1;
END AUTO_Mascotas;

-- CRUD REGISTRAR SOLICITUD--

-- No se puede modificar el cajero de una solicitud--

CREATE OR REPLACE TRIGGER MOD_Solicitud
BEFORE UPDATE ON Solicitudes
FOR EACH ROW 
BEGIN 
    IF :OLD.cajerotid != :NEW.cajerotid THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar la cajero.');
    END IF;
    IF :OLD.cajeroNumID != :NEW.cajeroNumID THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar el cajero.');
    END IF;
END MOD_Solicitud;
/

--El IDsolicitud y la fecha se generan automaticamente--

CREATE OR REPLACE TRIGGER AUTO_Solicitudes
BEFORE INSERT  ON Solicitudes
FOR EACH ROW 
DECLARE
    actual NUMBER;
BEGIN
    SELECT COUNT(*) INTO actual FROM Solicitudes;
    :NEW.IDSolicitud := actual+1;
    :NEW.fecha := SYSDATE;
END AUTO_Solicitudes;

-- No se puede modificar nada de las solicitudes de servicio --

CREATE OR REPLACE TRIGGER MOD_SolicitudDeServicio
BEFORE UPDATE ON SolicitudesDeServicios
FOR EACH ROW 
BEGIN 
    IF :OLD.servicio != :NEW.servicio  THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar el servicio.');
    END IF;
    IF :OLD.solicitud != :NEW.solicitud  THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar la solicitud.');
    END IF;
END MOD_SolicitudDeServicio;
/

--Solo se pueden asignar citas de Guarderia, Peluqueria, Rayos X, Hospitalizacion y Vacunas a caninos o felinos --

CREATE OR REPLACE TRIGGER CON_SolicitudDeServicio
BEFORE INSERT ON SolicitudesDeServicios  
FOR EACH ROW 
DECLARE
    mascotaSOLICTUD NUMBER(15);
    mascotaCITA VARCHAR(15);
BEGIN
    SELECT mascota INTO mascotaSOLICTUD FROM Solicitudes WHERE :NEW.solicitud = IDsolicitud;
    SELECT tipoAnimal INTO mascotaCITA FROM MASCOTAS WHERE mascotaSOLICTUD = mID;
    IF ((:NEW.servicio = 'Peluqueria' OR :NEW.servicio = 'Guarderia' OR :NEW.servicio = 'RayosX' OR :NEW.servicio = 'Vacunas' OR :NEW.servicio = 'Hospitalizacion') AND mascotaCITA != 'Canino') And ((:NEW.servicio = 'Peluqueria' OR :NEW.servicio = 'Guarderia'OR :NEW.servicio = 'RayosX' OR :NEW.servicio = 'Vacunas' OR :NEW.servicio = 'Hospitalizacion') and mascotaCITA != 'Felino') THEN
    RAISE_APPLICATION_ERROR(-20028,'Animal no valido');
    END IF;
END CON_SolicitudDeServicio;
/
  
-- CRUD REGISTRAR CITA --

-- No se puede modificar la solicitud de una cita --

CREATE OR REPLACE TRIGGER MOD_Cita
BEFORE UPDATE ON Citas
FOR EACH ROW 
BEGIN 
    IF :OLD.solicitud != :NEW.solicitud  THEN 
    RAISE_APPLICATION_ERROR(-20016,'No se puede modificar la solicitud.');
    END IF;
END MOD_Cita;
/

--Si el servicio es de cirugia lo debe atender un veterinario especialista. Los servicios de guarderia lo atienden sus respectivos asistentes. Los servicios de rayos x, hospitalizacion y vacunas los atienden sus repectivos analistasclinicos. Y los servicios de peluqueria los atienden sus repectivos peluqueros. Segun el XML --

CREATE OR REPLACE TRIGGER XML_CITAS
BEFORE INSERT ON Citas
FOR EACH ROW 
DECLARE
    especialistas NUMBER;
    sservicio VARCHAR(20);
    mascotaSOLICTUD NUMBER(15);
    rural NUMBER;
    mascotaCITA VARCHAR(15) ;
    domestico NUMBER;
    peluquero NUMBER;
    asistente NUMBER;
    asisten NUMBER;
    vacunas NUMBER;
    labo NUMBER;
    cuidador NUMBER;
BEGIN
    SELECT COUNT(*) INTO especialistas FROM VETERINARIOS WHERE veterinarioNumID = :NEW.empleadoNumID AND especialidad = 'Especialista';
    SELECT servicio INTO sservicio FROM SolicitudesDeServicios WHERE solicitud = :NEW.solicitud;
    SELECT mascota INTO mascotaSOLICTUD FROM Solicitudes WHERE :NEW.solicitud = IDsolicitud;
    SELECT COUNT(*) INTO rural FROM VETERINARIOS WHERE veterinarioNumID = :NEW.empleadoNumID AND especialidad = 'Rural';
    
    SELECT tipoAnimal INTO mascotaCITA FROM MASCOTAS WHERE mascotaSOLICTUD = mID;
    SELECT COUNT(*) INTO domestico FROM VETERINARIOS WHERE veterinarioNumID = :NEW.empleadoNumID AND especialidad = 'Domestico';
    SELECT COUNT(*) INTO peluquero FROM peluqueros WHERE peluqueroNumID = :NEW.empleadoNumID AND tipo = 'Peluqueria';
    SELECT COUNT(*) INTO asistente FROM Asistentes WHERE asistenteNumID = :NEW.empleadoNumID AND tipo = 'Rayos X';
    SELECT COUNT(*) INTO asisten FROM AnalistasClinicos WHERE analistaclinicoNumID = :NEW.empleadoNumID AND tipo = 'Hospitalizacion';
    SELECT COUNT(*) INTO vacunas FROM AnalistasClinicos WHERE analistaclinicoNumID = :NEW.empleadoNumID AND tipo = 'Vacunas';
    SELECT COUNT(*) INTO cuidador FROM ASISTENTES WHERE asistenteNumID = :NEW.empleadoNumID AND tipo = 'Guarderia';
    SELECT COUNT(*) INTO labo FROM AnalistasClinicos WHERE analistaclinicoNumID = :NEW.empleadoNumID AND tipo = 'Laboratorio Clinico';
    IF especialistas = 0 AND sservicio = 'Cirugia' THEN
    RAISE_APPLICATION_ERROR(-20014,'Cirugia no valida');
    ELSIF sservicio = 'Consulta Veterinaria' AND ((domestico = 0 AND mascotaCITA != 'Bovino') AND (domestico = 0 AND mascotaCITA != 'Equino')) THEN
    RAISE_APPLICATION_ERROR(-20015,'Veterinario no valido');
    ELSIF sservicio = 'Consulta Veterinaria' AND ((rural = 0 AND mascotaCITA = 'Bovino') OR (rural = 0 AND mascotaCITA = 'Equino')) THEN
    RAISE_APPLICATION_ERROR(-20015,'Veterinario no valido');
    ELSIF sservicio = 'Peluqueria' AND ((peluquero = 0 AND mascotaCITA = 'Felino') OR (peluquero = 0 AND mascotaCITA = 'Canino')) THEN
    RAISE_APPLICATION_ERROR(-20013,'Peluquero no valido');
    ELSIF sservicio = 'RayosX' AND ((asistente = 0 AND mascotaCITA = 'Felino') OR (asistente = 0 AND mascotaCITA = 'Canino')) THEN
    RAISE_APPLICATION_ERROR(-20013,'Asistente no valida');
    ELSIF sservicio = 'Hospitalizacion' AND ((asisten = 0 AND mascotaCITA = 'Felino') OR (asisten = 0 AND mascotaCITA = 'Canino')) THEN
    RAISE_APPLICATION_ERROR(-20013,'Analista clinico no valido');
    ELSIF sservicio = 'Guarderia' AND ((cuidador = 0 AND mascotaCITA = 'Felino') OR (cuidador = 0 AND mascotaCITA = 'Canino'))THEN
    RAISE_APPLICATION_ERROR(-20013,'Asistente no valida');
    ELSIF sservicio = 'Vacunas' AND ((vacunas = 0 AND mascotaCITA = 'Felino') OR (vacunas = 0 AND mascotaCITA = 'Canino'))THEN
    RAISE_APPLICATION_ERROR(-20013,'Analista clinico no valido');
    ELSIF sservicio = 'Laboratorio Clinico' AND ((labo = 0 AND mascotaCITA = 'Felino') OR (labo = 0 AND mascotaCITA = 'Canino'))THEN
    RAISE_APPLICATION_ERROR(-20013,'Analista clinico no valido');
    END IF;
END XML_CITAS;

-- CRUD REGISTRAR PRESTACION DE SERIVICIOS --

--No se puede eliminar una prestacion de servicios--

CREATE OR REPLACE TRIGGER ELI_PrestacionesServicios
BEFORE DELETE ON PrestacionesServicios
BEGIN 
    RAISE_APPLICATION_ERROR(-20010,'No se puede eliminar');
END ELI_PrestacionesServicios;
/

--El precio de la prestacion de servicios se genera automaticamente. Segun el XML --

CREATE OR REPLACE TRIGGER IN_PRESTACION_SERVICIO
BEFORE INSERT ON PrestacionesServicios 
FOR EACH ROW
DECLARE
    empleado NUMBER;
    servicioo VARCHAR(20);
    mascotacita NUMBER;
    peso NUMBER;
BEGIN
    SELECT COUNT(*) INTO empleado FROM Solicitudes WHERE IDsolicitud = :NEW.cita AND (clienteNumID IN(SELECT numID FROM Empleados));
    SELECT servicio INTO servicioo FROM SolicitudesDeServicios WHERE solicitud = :NEW.cita;
    SELECT mascota INTO mascotacita FROM solicitudes WHERE IDsolicitud = :NEW.cita;
    SELECT peso INTO peso FROM Mascotas WHERE mID = mascotacita;
    IF servicioo = 'Consulta Medica Veterinaria' THEN 
    :NEW.precio := 30000;
    ELSIF servicioo = 'Cirugía' THEN
    :NEW.precio := 300000+ (:NEW.materiales*0.1);
    ELSIF servicioo = 'RayosX' THEN
    :NEW.precio := 50000;
    ELSIF servicioo = 'Hospitalizacion' THEN
    :NEW.precio := 100000;
    ELSIF servicioo = 'Laboratorio Clínico' THEN
    :NEW.precio := 15000;
    ELSIF servicioo = 'Vacunas' THEN
    :NEW.precio := 15000;
    ELSIF servicioo = 'Guarderia' THEN
    :NEW.precio := 20000;
    ELSIF servicioo = 'Peluquería' AND peso >= 20 AND peso <= 30 THEN
    :NEW.precio := 40000;
    ELSIF servicioo = 'Peluquería' AND peso > 30 THEN
    :NEW.precio := 50000;
    ELSIF servicioo = 'Peluquería' AND peso < 20 THEN
    :NEW.precio := 30000;
    END IF;
END IN_PRESTACION_SERVICIO;
/
