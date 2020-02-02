-- POBLAR OK--

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
	<Tipo> Consulta Veterinaria </Tipo>
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

