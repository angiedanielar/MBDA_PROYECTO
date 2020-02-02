--Disparadores NoOk--

insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CE','Juana Gabriela','Contreras Garzon','flore@hotmail.com','cll 160','3206727241','42703930');
UPDATE Personas SET numID = '1119150998' WHERE NumId = 42703930;
UPDATE Personas SET tID = 'CC' WHERE NumId = 42703930;

insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Maria de los Angeles','Ortiz Daza','mariadelosangeles@yahoo.com','cll 160bis','3108964589','99081604815');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Mario','Castiblanco Galeano','mariobenett@gmail.com','crr 165 d','8839900','1019150666');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Angela Mabel','Heredia Castrellon','mabe@hotmail.com','Chia Canelon villa pinos','3187894500','3019160998');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Freddie','Armero Rojas','guarin@hotmail.com','crr 7ma 22-13','3117894500','42703939');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CE','Juliana','Hernandez Castro','juel@hotmail.com','ofc 134 Hayuelos CC','87874560','20034567');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Miguel','Gomez Garzon','elnegri@hotmail.com','cll 190 11b','3011367570','13671367');

insert into Empleados (cargo, tID, salario, horario, numid) values ('Veterinario','CC','1500000','Diurno','99081604815');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Asistente','CC','850000','Nocturno','1019150666');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Peluquero','CC','750000','Diurno','3019160998');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Analista Clinico','CC','750000','Diurno','42703939');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Cajero','CE','750000','Diurno','20034567');

UPDATE Empleados SET cargo = 'Veterinario' WHERE NumId = 3019160998;
UPDATE Empleados SET horario = 'Nocturno' WHERE NumId = 99081604815;
UPDATE Empleados SET salario = '10000000' WHERE NumId = 1019150666;

insert into Veterinarios (veterinariotID, veterinarioNumid, especialidad) values ('CC','99081604815','Domestico');

insert into Asistentes (asistentetID, asistenteNumid, tipo) values ('CC','1019150666','Guarderia');

insert into Cajeros (cajerotID, cajeroNumid) values ('CE','20034567');

insert into Peluqueros (peluquerotID, peluqueroNumid, tipo) values ('CC','3019160998','Peluqueria');

insert into AnalistasClinicos (analistaclinicotID, analistaclinicoNumid, tipo) values ('CC','42703939','Vacunas');

insert into Clientes (tID, numid) values ('CE','42703930');
insert into Clientes (tID, numid) values ('CC','13671367');


insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, sexo , peso) values ('Bansho','CE','42703930','9','Equino','PasoFino','1','Macho','30');
insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, sexo , peso) values ('Teo','CC','13671367','3','Felino','Angora','3','Macho','15');

UPDATE Mascotas SET clientetID = 'CC' WHERE mID = 2;
UPDATE Mascotas SET clienteNumID = '123467890' WHERE mID = 2;
UPDATE Mascotas SET mID = '3' WHERE mID = 2;
UPDATE Mascotas SET sexo = 'Hembra' WHERE mID = 2;
UPDATE Mascotas SET tipoAnimal = 'Felino' WHERE mID = 2;

insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('2','23-08-2018','20034567','CE','CC','42703930','2');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('3','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('4','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('5','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('6','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('7','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('8','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('9','23-08-2018','20034567','CE','CC','13671367','3');
insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('10','23-08-2018','20034567','CE','CC','13671367','3');

UPDATE Solicitudes SET cajerotID = 'CC' WHERE IDSolicitud = 2;
UPDATE Solicitudes SET cajeronumID = '9898790' WHERE IDSolicitud = 2;

insert into SolicitudesDeServicios (solicitud, servicio) values ('2','RayosX');
insert into SolicitudesDeServicios (solicitud, servicio) values ('2','Hospitalizacion');
insert into SolicitudesDeServicios (solicitud, servicio) values ('2','Vacunas');
insert into SolicitudesDeServicios (solicitud, servicio) values ('2','Guarderia');
insert into SolicitudesDeServicios (solicitud, servicio) values ('2','Peluqueria');

insert into SolicitudesDeServicios (solicitud, servicio) values ('3','RayosX');
insert into SolicitudesDeServicios (solicitud, servicio) values ('4','Hospitalizacion');
insert into SolicitudesDeServicios (solicitud, servicio) values ('5','Vacunas');
insert into SolicitudesDeServicios (solicitud, servicio) values ('6','Guarderia');
insert into SolicitudesDeServicios (solicitud, servicio) values ('7','Peluqueria');
insert into SolicitudesDeServicios (solicitud, servicio) values ('8','Cirugia');
insert into SolicitudesDeServicios (solicitud, servicio) values ('9','Consulta Veterinaria');
insert into SolicitudesDeServicios (solicitud, servicio) values ('10','Laboratorio Clinico');

insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','99081604815','3');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','99081604815','4');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CE','20034567','5');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CE','20034567','6');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','42703939','7');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','42703939','8');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','3019160998','9');
insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','3019160998','10');

UPDATE Citas SET solicitud = '4' WHERE solicitud = 3;

DELETE Personas;
DELETE Empleados;
DELETE Clientes;
DELETE Veterinarios;
DELETE Peluqueros;
DELETE AnalistasClinicos;
DELETE Asistentes;
DELETE Cajeros;
DELETE Mascotas;
DELETE Solicitudes WHERE IDsolicitud = 1;
DELETE PrestacionesServicios;