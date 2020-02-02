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
