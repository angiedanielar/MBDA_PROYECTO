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

/* LLaves Primarias
*/

Alter Table Personas Add Constraint PK_Personas Primary Key(tID, numID);
Alter Table Personas Add Constraint UK_Personas_Correo UNIQUE(correo);
Alter Table Clientes Add Constraint PK_Clientes Primary Key(tID, numID);
Alter Table Empleados Add Constraint PK_Empleados Primary Key(tID, numID);
Alter Table Veterinarios Add Constraint PK_Veterinarios Primary Key(veterinariotID, veterinarionumID);
Alter Table Mascotas Add Constraint PK_Mascotas Primary Key(mID);
Alter Table Servicios Add Constraint PK_Servicios Primary Key(nombreServicio);
Alter Table Cajeros Add Constraint PK_Cajeros Primary Key(cajerotID, cajeronumID);
Alter Table AnalistasClinicos Add Constraint PK_AnalistasClinicos Primary Key(analistaclinicotID, analistacliniconumID);
Alter Table Peluqueros Add Constraint PK_Peluqueros Primary Key(peluquerotID, peluqueronumID);
Alter Table Telefonos Add Constraint PK_Telefonos Primary Key(tID, numID);
Alter Table Telefonos Add Constraint UK_Telefonos_Tel UNIQUE(telefono);
Alter Table Citas Add Constraint PK_Citas Primary Key(solicitud);
Alter Table Solicitudes Add Constraint PK_Solicitudes Primary Key(IDsolicitud);
Alter Table Asistentes Add Constraint PK_Asistentes Primary Key(asistentetID, asistenteNumID);
Alter Table SolicitudesDeServicios Add Constraint PK_SolDeServicios Primary Key(solicitud);
Alter Table PrestacionesServicios Add Constraint PK_PresServicios Primary Key(cita);

/* LLaves Foraneas 
*/

Alter Table Telefonos Add Constraint FK_Telefonos_Personas Foreign Key(tid,numid) references Telefonos(tid,numid);
Alter Table Clientes Add Constraint FK_Clientes_Personas Foreign Key(tID,numID) references Personas(tID,numID);
Alter Table Empleados Add Constraint FK_Empleados_Personas Foreign Key(tID,numID) references Personas(tID,numID);
Alter Table Veterinarios Add Constraint FK_Veterinarios_Empleados Foreign Key(veterinariotID,veterinarioNumID) references Empleados(tID,numID);
Alter Table Asistentes Add Constraint FK_Asistentes_Empleados Foreign Key(asistentetID,asistenteNumID) references Empleados(tID,numID);
Alter Table Cajeros Add Constraint FK_Cajeros_Empleados Foreign Key(cajerotID,cajeroNumID) references Empleados(tID,numID);
Alter Table AnalistasClinicos Add Constraint FK_AnalistasClinicos_Empleados Foreign Key(analistaclinicotID,analistaclinicoNumID) references Empleados(tID,numID);
Alter Table Peluqueros Add Constraint FK_Peluqueros_Empleados Foreign Key(peluquerotID,peluqueroNumID) references Empleados(tID,numID);
Alter Table Mascotas Add Constraint FK_Mascotas_Clientes Foreign Key(clientetID, clienteNumID) references Clientes(tID,numID);
Alter Table Citas Add Constraint FK_Citas_Empleados Foreign Key(empleadotID, empleadoNumID) references Empleados(tID,numID);
Alter Table Citas Add Constraint FK_Citas_Solicitudes Foreign Key(solicitud) references Solicitudes(IDsolicitud);
Alter Table Solicitudes Add Constraint FK_Solicitudes_Cajeros Foreign Key(cajerotID,cajeroNumID) references Cajeros(cajerotID,cajeroNumID);
Alter Table SolicitudesDeServicios Add Constraint FK_SolDeServicios_Solicitudes Foreign Key(solicitud) references Solicitudes(IDsolicitud);
Alter Table SolicitudesDeServicios Add Constraint FK_SolDeServicios_Servicios Foreign Key(servicio) references Servicios(nombreServicio);
Alter Table PrestacionesServicios Add Constraint FK_PrestServicios_Citas Foreign Key(cita) references Citas(solicitud);

/* Restricciones declarativas y sus Verificaciones
*/

ALTER TABLE Personas ADD CONSTRAINT CK_Personas_numID CHECK (numID > 0);
ALTER TABLE Personas ADD CONSTRAINT CK_Personas_tID CHECK (tID = 'CC' OR tID = 'CE');
ALTER TABLE Personas Add Constraint CK_Personas_Correo Check(correo like '%_@_%._%');

ALTER TABLE Telefonos ADD CONSTRAINT CK_Telefonos_numID CHECK (numID > 0);
ALTER TABLE Telefonos ADD CONSTRAINT CK_Telefonos_tID CHECK (tID = 'CC' OR tID = 'CE');
ALTER TABLE Telefonos ADD CONSTRAINT CK_Telefonos_telefono CHECK (telefono > 0);

ALTER TABLE Clientes ADD CONSTRAINT CK_Clientes_numID CHECK (numID > 0);
ALTER TABLE Clientes ADD CONSTRAINT CK_Clientes_tID CHECK (tID = 'CC' OR tID = 'CE');

ALTER TABLE Empleados ADD CONSTRAINT CK_Empleados_numID CHECK (numID > 0);
ALTER TABLE Empleados ADD CONSTRAINT CK_Empleados_salario CHECK (salario > 0);
ALTER TABLE Empleados ADD CONSTRAINT CK_Empleados_tID CHECK (tID = 'CC' OR tID = 'CE');
ALTER TABLE Empleados ADD CONSTRAINT CK_Empleados_cargo CHECK (cargo = 'Veterinario' OR cargo = 'Cajero' OR cargo = 'Asistente' OR cargo = 'Peluquero' OR cargo = 'Analista Clinico');
ALTER TABLE Empleados ADD CONSTRAINT CK_Empleados_horario CHECK (horario = 'Diurno' OR horario = 'Nocturno');

ALTER TABLE Veterinarios ADD CONSTRAINT CK_Veterinarios_numID CHECK (veterinarionumID > 0);
ALTER TABLE Veterinarios ADD CONSTRAINT CK_Veterinarios_tID CHECK (veterinariotID = 'CC' OR veterinariotID = 'CE');
ALTER TABLE Veterinarios ADD CONSTRAINT CK_Veterinarios_especialidad CHECK (especialidad = 'Domestico' OR especialidad = 'Rural' OR especialidad = 'Especialista');

ALTER TABLE Asistentes ADD CONSTRAINT CK_Asistentes_numID CHECK (asistentenumID > 0);
ALTER TABLE Asistentes ADD CONSTRAINT CK_Asistentes_tID CHECK (asistentetID = 'CC' OR asistentetID = 'CE');
ALTER TABLE Asistentes ADD CONSTRAINT CK_Asistentes_tipo CHECK (tipo = 'Guarderia' OR tipo = 'Rayos X');

ALTER TABLE Cajeros ADD CONSTRAINT CK_Cajeros_NumID CHECK (cajeroNumID > 0);
ALTER TABLE Cajeros ADD CONSTRAINT CK_Cajeros_tID CHECK (cajerotID = 'CC' OR cajerotID = 'CE');

ALTER TABLE Peluqueros ADD CONSTRAINT CK_Peluqueros_NumID CHECK (peluqueroNumID > 0);
ALTER TABLE Peluqueros ADD CONSTRAINT CK_Peluqueros_tID CHECK (peluquerotID = 'CC' OR peluquerotID = 'CE');
ALTER TABLE Peluqueros ADD CONSTRAINT CK_Peluqueros_tipo CHECK (tipo = 'Peluqueria');

ALTER TABLE AnalistasClinicos ADD CONSTRAINT CK_AnalistasClinicos_NumID CHECK (analistaclinicoNumID > 0);
ALTER TABLE AnalistasClinicos ADD CONSTRAINT CK_AnalistasClinicos_tID CHECK (analistaclinicotID = 'CC' OR analistaclinicotID = 'CE');
ALTER TABLE AnalistasClinicos ADD CONSTRAINT CK_AnalistasClinicos_tipo CHECK (tipo = 'Vacunas' OR tipo = 'Hospitalizacion');

ALTER TABLE Mascotas ADD CONSTRAINT CK_Mascotas_tipoAnimal CHECK (tipoAnimal = 'Canino' OR tipoAnimal = 'Felino' OR tipoAnimal = 'Acuatico' OR tipoAnimal = 'Roedor' OR tipoAnimal = 'Bovino' OR tipoAnimal = 'Equino' OR tipoAnimal = 'Ave');
ALTER TABLE Mascotas ADD CONSTRAINT CK_Mascotas_sexo CHECK (sexo = 'Macho' OR sexo = 'Hembra');
ALTER TABLE Mascotas ADD CONSTRAINT CK_Mascotas_peso CHECK (peso > 0 AND peso < 200);
ALTER TABLE Mascotas ADD CONSTRAINT CK_Mascotas_clientetID CHECK (clientetID = 'CC' OR clientetID = 'CE');
ALTER TABLE Mascotas ADD CONSTRAINT CK_Mascotas_clientetNumID CHECK (clienteNumID  > 0);

ALTER TABLE PrestacionesServicios ADD CONSTRAINT CK_PrestServicios_precio CHECK (precio > 0);
ALTER TABLE PrestacionesServicios ADD CONSTRAINT CK_PrestServicios_duracion CHECK (duracion > 0);

/* Poblar
*/

insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CE','Oscar Eduardo','Ruiz Bermudez','oeruiz@hotmail.com','cll 160 64-40','6727241','52703936');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Maria Alexandra','Matinez Mendoza','maye@yahoo.com','cll 160bis','3204345693','99081504825');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Fabian Alonso','Bernal Duenas','oefab@mail.escuelaing.edu.com','cll 64 23 10','3221457','1019150978');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Nancy Yuliana ','Carvajal Montes','nana@hotmail.com','cll 134 14-23','3179894579','1019160998');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Laura Milena','Ramirez Rincon','lauda@hotmail.com','vereda chuntame cajica','3204347893','52703939');
insert into Personas (tID, nombres, apellidos, correo, direccion, telefonos, numid) values ('CC','Angie Daniela','Ruiz Alfonso','angied.ruiz@gmail.com','cll 181a 11a-91','3178484579','1019150998');

insert into Telefonos (tID, telefono, numid) values ('CE','67272412','52703936');
insert into Telefonos (tID, telefono, numid) values ('CC','3204345697','99081504815');
insert into Telefonos (tID, telefono, numid) values ('CC','3223457','1019150978');
insert into Telefonos (tID, telefono, numid) values ('CC','3109894579','1019160998');
insert into Telefonos (tID, telefono, numid) values ('CC','3014347893','52703939');
insert into Telefonos (tID, telefono, numid) values ('CC','3178884579','1019150998');

insert into Empleados (cargo, tID, salario, horario, numid) values ('Cajero','CE','850000','Diurno','52703936');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Veterinario','CC','1500000','Diurno','99081504825');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Asistente','CC','850000','Nocturno','1019150978');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Peluquero','CC','750000','Diurno','1019160998');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Analista Clinico','CC','750000','Diurno','52703939');

insert into Veterinarios (veterinariotID, veterinarioNumid, especialidad) values ('CC','99081504825','Domestico');

insert into Asistentes (asistentetID, asistenteNumid, tipo) values ('CC','1019150978','Guarderia');

insert into Cajeros (cajerotID, cajeroNumid) values ('CE','52703936');

insert into Peluqueros (peluquerotID, peluqueroNumid, tipo) values ('CC','1019160998','Peluqueria');

insert into AnalistasClinicos (analistaclinicotID, analistaclinicoNumid, tipo) values ('CC','52703939','Vacunas');

insert into Clientes (tID, numid) values ('CC','1019150998');

insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, sexo , peso, alergias) values ('Koto','CC','1019150998','1','Canino','Akita','5','Hembra','50','Picadura de las pulgas');

INSERT INTO Servicios VALUES ('Consulta Veterinaria', XMLTYPE('
<Informacion>
	<Tipo> Consulta Medica Veterinaria </Tipo>
	<Costo precio = "30000"> </Costo>
	<Descripcion>
	Nos preocupamos por la prevención, diagnóstico y tratamiento de enfermedades, trastornos y lesiones en los animales de compañía, caninos y felinos.  
    El servicio de diagnóstico cuenta con personal médico veterinario general, especialistas para interconsulta, auxiliares veterinarios, y personal idóneo en cada una de las áreas de la clínica.
	</Descripcion>
</Informacion>') );

INSERT INTO Servicios VALUES ('RayosX', XMLTYPE('
<Informacion>
	<Tipo> RayosX </Tipo>
	<Costo precio = "50000"> </Costo>
	<Descripcion>
	Una radiografía es una imagen de las estructuras internas del cuerpo producida por la exposición a una fuente controlada de los rayos X y que se registra en un sistema digital, después puede visualizarse en un ordenador, para el diagnóstico, pronóstico y el tratamiento de algunos tipos de  enfermedad.
    Contamos con un moderno equipo con flat panel, que permite obtener imágenes sin necesidad de revelado o de impresión en películas especiales, de esta forma contribuye a el cuidado del medio ambiente y hace practico el envió de resultados de los pacientes a través de correo electronico
    Exámenes que realizamos: Rx simples y Rx con medio de contraste, cada uno de los rayosx tiene el mismo costo. 
	</Descripcion>
</Informacion>') );

INSERT INTO Servicios VALUES ('Cirugia', XMLTYPE('
<Información>
	<Tipo> Cirugía </Tipo>
	<Costo precio = "300000 + materiales * +10%"> </Costo>
	<Descripción>
	La cirugía general comprende el diagnóstico y tratamiento de enfermedades que se resuelven por procedimientos quirúrgicos o potencialmente quirúrgicos, tanto electivos como de urgencia.
	Nuestros cirujanos generales poseen una sólida formación en los aspectos básicos de la cirugía, los conocimientos y destrezas para tratar los problemas quirúrgicos de mayor prevalencia. 
	</Descripción>
</Información>') );

INSERT INTO Servicios VALUES ('Hospitalizacion', XMLTYPE('
<Informacion>
	<Tipo> Hospitalizacion </Tipo>
	<Costo precio = "100000" > </Costo>
	<Descripcion>
	Este servicio se encarga de prestar los cuidados básicos  especializados de manera integral y de calidad, creando confianza y seguridad en la atención tanto al paciente como a sus propietarios o tenedores que ingresan a la Institución.
    La gestión del Servicio Sala de Cirugía se articula estrechamente con el Servicio de Anestesia por su labor asistencial; involucra la Central de Esterilización, el área de Cirugía Ambulatoria, el área de Recuperación, Almacén, Facturación y de Programación de Cirugía.
	</Descripcion>
</Informacion>') );

INSERT INTO Servicios VALUES ('Laboratorio Clinico', XMLTYPE('	
<Informacion>
	<Tipo> Laboratorio Clinico </Tipo>
	<Costo precio = "15000"> </Costo>
	<Descripcion>
	Hacemos todo tipo de exámenes de laboratorio con equipos de última tecnología y tenemos convenios con los mejores laboratorios del país.
    Dentro del laboratorio clínico se ofrecen los siguientes tipos de exámenes: exámenes hematológicos, bioquímicos, hormonales, genéticos, inmunológicos, microbiológicos, parasitológicos, virológicos, citológicos, histopatológicos y toxicológicos, con fines de prevención, diagnóstico o control de tratamiento de las enfermedades, estados fisiológicos y pruebas validadas ante el ICA.
	</Descripcion>
</Informacion>') );

INSERT INTO Servicios VALUES ('Guarderia', XMLTYPE('
<Informacion>
	<Tipo> Guarderia </Tipo>
	<Costo precio = "20000"> </Costo>
	<Descripcion>
	En nuestra guardería canina está el mejor cuidado para la mascota, todos los días del año con servicio y disponibilidad para la permanencia diurna o nocturna de todas las mascotas.
    Se cobra el servicio por dia.
	</Descripcion>
</Informacion>') );

INSERT INTO Servicios VALUES ('Peluqueria', XMLTYPE('
<Informacion>
	<Tipo> Peluqueria </Tipo>
	<Costo precio = "28000"> </Costo>
	<Descripcion>
	En nuestra Peluquería trabajamos siempre para que la experiencia de su mascota sea agradable, proporcionándole un entorno tranquilo, sin prisas y presiones, de esta forma logramos  perros y gatos tranquilos con los que trabajamos de forma más segura y conseguimos los mejores resultados.
    Le asesoramos sobre el corte que más favorece a su mascota teniendo en cuenta su morfología, tipo de pelo y actividad física. Y resolvemos todas sus dudas ofreciéndoles, tanto a usted como a su peludito, un trato completamente personalizado.
	</Descripcion>
</Informacion>') );

INSERT INTO Servicios VALUES ('Vacunas', XMLTYPE('
<Informacion>
	<Tipo> Vacunas </Tipo>
    <Costo precio = "15000"> </Costo>
	<Descripcion>
	Contamos con una amplia variedad de venta de medicamentos, antibióticos, antihelmínticos, analgésicos, suplementos vitamínicos, antieméticos, estimulantes del apetito, antidiarreicos, antitusígenos, prebióticos, etc.
	</Descripcion>
</Informacion>') );

insert into Solicitudes (IDSolicitud, fecha, cajeroNumID, cajerotID, clientetID, clienteNumID, mascota) values ('1','16-08-2018','52703936','CE','CC','1019150998','1');

insert into SolicitudesDeServicios (solicitud, servicio) values ('1','Cirugia');

insert into Citas (fecha, empleadoTID, empleadoNumID, solicitud) values ('23-02-2018', 'CC','1019150978','1');


insert into PrestacionesServicios (cita, duracion, precio, materiales, observaciones) values ('1','2','300000','Gazas','Medicamentos en la formula');


/* Borrado total de la base de datos 


BEGIN
   FOR cur_rec IN (SELECT object_name, object_type
                    FROM user_objects
                    WHERE object_type IN
                             ('TABLE',
                              'VIEW',
                              'PACKAGE',
                              'PROCEDURE',
                              'FUNCTION',
                              'SEQUENCE',
                              'SYNONYM',
                              'PACKAGE BODY'
                             ))
   LOOP
      BEGIN
         IF cur_rec.object_type = 'TABLE'
         THEN
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '" CASCADE CONSTRAINTS';
         ELSE
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '"';
         END IF;
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (   'FAILED: DROP '
                                  || cur_rec.object_type
                                  || ' "'
                                  || cur_rec.object_name
                                  || '"'
                                 );
      END;
   END LOOP;
END;
/
*/