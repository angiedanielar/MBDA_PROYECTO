-- XForaneas --

Alter Table Telefonos DROP Constraint FK_Telefonos_Personas;
Alter Table Clientes DROP Constraint FK_Clientes_Personas;
Alter Table Empleados DROP Constraint FK_Empleados_Personas;
Alter Table Veterinarios DROP Constraint FK_Veterinarios_Empleados;
Alter Table Asistentes DROP Constraint FK_Asistentes_Empleados;
Alter Table Cajeros DROP Constraint FK_Cajeros_Empleados;
Alter Table AnalistasClinicos DROP Constraint FK_AnalistasClinicos_Empleados;
Alter Table Peluqueros DROP Constraint FK_Peluqueros_Empleados;
Alter Table Mascotas DROP Constraint FK_Mascotas_Clientes;
Alter Table Citas DROP Constraint FK_Citas_Empleados;
Alter Table Citas DROP Constraint FK_Citas_Solicitudes;
Alter Table Solicitudes DROP Constraint FK_Solicitudes_Cajeros;
Alter Table SolicitudesDeServicios DROP Constraint FK_SolDeServicios_Solicitudes;
Alter Table SolicitudesDeServicios DROP Constraint FK_SolDeServicios_Servicios;
Alter Table PrestacionesServicios DROP Constraint FK_PrestServicios_Citas;

-- XUnicas --

Alter Table Personas DROP Constraint UK_Personas_Correo;
Alter Table Telefonos DROP Constraint UK_Telefonos_Tel;

-- XPrimarias --

Alter Table Personas DROP Constraint PK_Personas;
Alter Table Clientes DROP Constraint PK_Clientes;
Alter Table Empleados DROP Constraint PK_Empleados;
Alter Table Veterinarios DROP Constraint PK_Veterinarios;
Alter Table Mascotas DROP Constraint PK_Mascotas;
Alter Table Servicios DROP Constraint PK_Servicios;
Alter Table Cajeros DROP Constraint PK_Cajeros;
Alter Table AnalistasClinicos DROP Constraint PK_AnalistasClinicos;
Alter Table Peluqueros DROP Constraint PK_Peluqueros;
Alter Table Telefonos DROP Constraint PK_Telefonos;
Alter Table Citas DROP Constraint PK_Citas;
Alter Table Solicitudes DROP Constraint PK_Solicitudes;
Alter Table Asistentes DROP Constraint PK_Asistentes;
Alter Table SolicitudesDeServicios DROP Constraint PK_SolDeServicios;
Alter Table PrestacionesServicios DROP Constraint PK_PresServicios;

-- XTablas --
DROP Table Personas;
DROP Table Telefonos;
DROP Table Clientes;
DROP Table Empleados;
DROP Table Veterinarios;
DROP Table AnalistasClinicos;
DROP Table Peluqueros;
DROP Table Asistentes;
DROP Table Mascotas;
DROP Table Servicios;
DROP Table Cajeros;
DROP Table Citas;
DROP Table Solicitudes;
DROP Table SolicitudesDeServicios;
DROP Table PrestacionesServicios;
