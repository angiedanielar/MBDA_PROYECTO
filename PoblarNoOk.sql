/* Poblar NoOk en el orden de los checks
*/

insert into Personas (tID, nombres, apellidos, telefonos, correo, direccion, numid) values ('CC', 'Laura Daniela', 'Ruiz Alfonso', '3583509733', 'seady7@foxnews.com', '5365 Lindbergh Alley', '0');
insert into Personas (tID, nombres, apellidos, telefonos, correo, direccion, numid) values ('NIT', 'Leonhard', 'Duenas Cruz', '2152033436', 'lmckinnon9@nps.gov', '119 Myrtle Place', '3583157205');
insert into Personas (tID, nombres, apellidos, telefonos, correo, direccion, numid) values ('CC', 'Simona Maria', 'Bermudez Pardo', '3583509733', 'No aplica', '5365 Lindbergh Alley', '1019150998');

insert into Telefonos (numid, tID, telefono) values ('0','CC', '3583509733');
insert into Telefonos (numid, tID, telefono) values ('1019150998','NIT', '3583509733');
insert into Telefonos (numid, tID, telefono) values ('1019150998','CE', '0');

insert into Clientes (numID, tID) values ('0','CC');
insert into Clientes (numID, tID) values ('3583157205','NIT');

insert into Empleados (cargo, tID, salario, horario, numid) values ('Asistente','CC', '350000','Diurno', '0');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Asistente','CE', '0','Diurno','2017284481');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Veterinario','CC', '100000','No aplica','2017284481');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Cajero','NIT', '7500000', 'Diurno','3570811626');
insert into Empleados (cargo, tID, salario, horario, numid) values ('Doctor','CC', '1910000','Diurno', '3533625766');

insert into Veterinarios (veterinariotID, veterinarioNumid, especialidad) values ('NIT', '2017284481','Domestico');
insert into Veterinarios (veterinariotID, veterinarioNumid, especialidad) values ('CC', '0','Rural');
insert into Veterinarios (veterinariotID, veterinarioNumid, especialidad) values ('CE','3581831531','No aplica');

insert into Asistentes (asistentetID, asistenteNumid, tipo) values ('NIT', '3581831531', 'Peluqueria');
insert into Asistentes (asistentetID, asistenteNumid, tipo) values ('CC', '0', 'Guarderia');
insert into Asistentes (asistentetID, asistenteNumid, tipo) values ('CC', '6759576829', 'Hotel');

insert into Cajeros (cajerotID, cajeroNumid) values ('NIT', '3529953466');
insert into Cajeros (cajerotID, cajeroNumid) values ('CE', '0');

insert into Peluqueros (peluquerotID, peluqueroNumid, tipo) values ('NIT', '200145678','Peluqueria');
insert into Peluqueros (peluquerotID, peluqueroNumid, tipo) values ('CE', '0','Peluqueria');
insert into Peluqueros (peluquerotID, peluqueroNumid, tipo) values ('CE', '200145678','No aplica');

insert into AnalistasClinicos (analistaclinicotID, analistaclinicoNumid, tipo) values ('NIT', '200145678','Rayos X');
insert into AnalistasClinicos (analistaclinicotID, analistaclinicoNumid, tipo) values ('CE', '0','Hospitalizacion');

insert into PrestacionesServicios (cita, duracion,precio,materiales) values (1, 0, 300000,'Cirugia de Cesarea');
insert into PrestacionesServicios (cita, duracion,precio,observaciones) values (2, 3, 0,'Seguir las indicaciones de la formula');

insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, sexo , peso) values ('Teo','CC','6917537786',5,'Acuatico','Pez dorado',1,'Macho',210);
insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, alergias, sexo , peso) values ('Aishi','CE','1716343933',4,'Canino','Akita',2,'Picaduras de pulgas','F',20);
insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, sexo , peso) values ('Bansho','CC','2944727117',3,'Gato','Angora',5,'Hembra',20);
insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, alergias, sexo , peso) values ('Koto','CE','0',4,'Canino','Akita',2,'Picaduras de pulgas','F',20);
insert into Mascotas (mascotanombre, clientetID, clienteNumID, mID, tipoAnimal, raza, edad, sexo , peso) values ('Akito','NIT','2944727117',3,'Gato','Angora',5,'Hembra',20);
