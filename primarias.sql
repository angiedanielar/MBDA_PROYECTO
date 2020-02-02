/* LLaves Primarias
*/

Alter Table Personas Add Constraint PK_Personas Primary Key(tID, numID);
Alter Table Clientes Add Constraint PK_Clientes Primary Key(tID, numID);
Alter Table Empleados Add Constraint PK_Empleados Primary Key(tID, numID);
Alter Table Veterinarios Add Constraint PK_Veterinarios Primary Key(veterinariotID, veterinarionumID);
Alter Table Mascotas Add Constraint PK_Mascotas Primary Key(mID);
Alter Table Servicios Add Constraint PK_Servicios Primary Key(nombreServicio);
Alter Table Cajeros Add Constraint PK_Cajeros Primary Key(cajerotID, cajeronumID);
Alter Table AnalistasClinicos Add Constraint PK_AnalistasClinicos Primary Key(analistaclinicotID, analistacliniconumID);
Alter Table Peluqueros Add Constraint PK_Peluqueros Primary Key(peluquerotID, peluqueronumID);
Alter Table Telefonos Add Constraint PK_Telefonos Primary Key(tID, numID);
Alter Table Citas Add Constraint PK_Citas Primary Key(solicitud);
Alter Table Solicitudes Add Constraint PK_Solicitudes Primary Key(IDsolicitud);
Alter Table Asistentes Add Constraint PK_Asistentes Primary Key(asistentetID, asistenteNumID);
Alter Table SolicitudesDeServicios Add Constraint PK_SolDeServicios Primary Key(solicitud);
Alter Table PrestacionesServicios Add Constraint PK_PresServicios Primary Key(cita);

