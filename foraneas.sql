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


