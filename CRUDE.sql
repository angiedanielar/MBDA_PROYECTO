--  CRUDE --

-- Paquetes --

CREATE OR REPLACE PACKAGE mantener_persona
IS
PROCEDURE adicionar_persona(nombres VARCHAR, apellidos VARCHAR, tid VARCHAR, numid NUMBER, telefonos NUMBER, direccion VARCHAR, correo VARCHAR);
PROCEDURE modificar_persona(NUEVOnombres VARCHAR, NUEVOapellidos VARCHAR, NUEVOcorreo VARCHAR, NUEVOtelefonos NUMBER, NUEVOdireccion VARCHAR);
END;
/

CREATE OR REPLACE PACKAGE mantener_cliente
IS
PROCEDURE adicionar_cliente(tID VARCHAR, NumID NUMBER); 
PROCEDURE modificar_cliente(NUEVOtID VARCHAR, NUEVONumID NUMBER); 
END;
/

CREATE OR REPLACE PACKAGE mantener_empleado
IS
PROCEDURE adicionar_empleado(TID VARCHAR, NumID NUMBER, salario NUMBER, horario VARCHAR, cargo VARCHAR);
PROCEDURE modificar_empleado(NUEVOtID VARCHAR, NUEVONumID NUMBER, NUEVOsalario NUMBER);
PROCEDURE adicionar_veterinario(veterinariotID VARCHAR, veterinarioNumID NUMBER,especialidad VARCHAR);
PROCEDURE modificar_veterinario(NUEVOveterinariotID VARCHAR, NUEVOveterinarioNumID NUMBER,NUEVOespecialidad VARCHAR);
PROCEDURE adicionar_asistente(asistentetID VARCHAR, asistenteNumID NUMBER, tipo VARCHAR);
PROCEDURE modificar_asistente(NUEVOasistentetID VARCHAR, NUEVOasistenteNumID NUMBER, NUEVOtipo VARCHAR);
PROCEDURE adicionar_cajero(cajerotID VARCHAR, cajeroNumID NUMBER);                                                                                        
PROCEDURE modificar_cajero(NUEVOcajerotID VARCHAR, NUEVOcajeroNumID NUMBER);                                                                  
PROCEDURE adicionar_peluquero(peluquerotID VARCHAR, peluqueroNumID NUMBER, tipo VARCHAR);                                                                                        
PROCEDURE modificar_peluquero(NUEVOpeluquerotID VARCHAR, NUEVOpeluqueroNumID NUMBER, NUEVOtipo VARCHAR);                                            
PROCEDURE adicionar_analistaclinico(analistaclinicotID VARCHAR, analistaclinicoNumID NUMBER, tipo VARCHAR);                                                                       
PROCEDURE modificar_analistaclinico(NUEVOanalistaclinicotID VARCHAR, NUEVOanalistaclinicoNumID NUMBER, NUEVOtipo VARCHAR);
END;
/

CREATE OR REPLACE PACKAGE mantener_mascota
IS
PROCEDURE adicionar_mascota(mascotanombre VARCHAR, clientetID VARCHAR, clienteNumID NUMBER, tipoAnimal VARCHAR, raza VARCHAR, edad NUMBER, alergias VARCHAR, sexo VARCHAR, peso NUMBER);
PROCEDURE modificar_mascota(NUEVOmascotanombre VARCHAR, NUEVOedad NUMBER, NUEVOraza VARCHAR, NUEVOalergias VARCHAR, NUEVOpeso NUMBER);
END;
/

CREATE OR REPLACE PACKAGE registrar_solicitud
IS
PROCEDURE adicionar_solicitud(cajerotID VARCHAR, cajeroNumID NUMBER, clientetID VARCHAR, clienteNumID NUMBER,mascota NUMBER);
PROCEDURE modificar_solicitud(NUEVOclientetID VARCHAR, NUEVOclienteNumID NUMBER,NUEVOmascota NUMBER);  
PROCEDURE adicionar_solicitudDeServicio(servicio VARCHAR);
END;
/

CREATE OR REPLACE PACKAGE registrar_cita
IS
PROCEDURE adicionar_cita(fecha DATE, empleadotID VARCHAR, empleadoNumID NUMBER, solicitud NUMBER);
PROCEDURE modificar_cita(NUEVOfecha DATE, NUEVOempleadotID VARCHAR, NUEVOempleadoNumID NUMBER); 
END;
/

CREATE OR REPLACE PACKAGE registrar_prestaciondeservicio
IS
PROCEDURE adicionar_prestacionservicio(cita NUMBER, duracion NUMBER, materiales VARCHAR, observaciones VARCHAR);
END;
/