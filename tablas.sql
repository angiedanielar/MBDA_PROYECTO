-- Ciclo 1 --

/* Creacion de Tablas
*/
Create Table Personas(tID varchar(50) not null, numID number not null, nombres varchar(50) not null, apellidos varchar(50) not null, telefonos number not null, direccion varchar(50) not null, correo varchar(50)  not null);
Create Table Telefonos(tID varchar(50) not null, numID number not null,telefono number not null);
Create Table Clientes(tID varchar(50) not null, numID number not null);
Create Table Empleados(cargo varchar(50) not null, tID varchar(50) not null, numID number not null, salario number not null, horario varchar(30) not null);
Create Table Veterinarios(veterinariotID varchar(50) not null, veterinarionumID number not null, especialidad varchar(50)not null);
Create Table AnalistasClinicos(analistaclinicotID varchar(50) not null, analistacliniconumID number not null, tipo varchar(20) not null);
Create Table Peluqueros(peluquerotID varchar(50) not null, peluqueronumID number not null, tipo varchar(20) not null);
Create Table Asistentes (asistentetID varchar(50) not null, asistenteNumID number not null, tipo varchar(20) not null);
Create Table Mascotas (mascotanombre varchar(50) not null, clientetID varchar(50) not null, clienteNumID number not null, mID number not null, tipoAnimal varchar(15) not null, raza varchar(100) not null, edad number not null, alergias varchar(50), sexo varchar(6) NOT NULL, peso number not null);
Create Table Servicios (nombreServicio varchar(100) not null, informacion XMLTYPE);
Create Table Cajeros (cajerotID varchar(50) not null, cajeronumID number not null);
Create Table Citas (fecha date not null, empleadotID varchar(50) not null, empleadoNumID number not null, solicitud number not null);
Create Table Solicitudes (IDsolicitud number not null, fecha date not null, cajerotID varchar(50)not null, cajeroNumID number not null, clienteTID varchar(50) not null, clienteNumID number not null, mascota number NOT NULL);
Create Table SolicitudesDeServicios (solicitud number not null, servicio varchar(20) not null);
Create Table PrestacionesServicios (cita number not null, duracion number not null, precio number not null, materiales varchar(50),observaciones varchar(2000));
