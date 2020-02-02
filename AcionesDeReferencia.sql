--Acciones de referencia--

ALTER TABLE SolicitudesDeServicios DROP CONSTRAINT FK_SolDeServicios_Solicitudes;
ALTER TABLE Citas DROP CONSTRAINT FK_CITAS_SOLICITUDES;

ALTER TABLE SolicitudesDeServicios ADD CONSTRAINT FK_SolDeServicios_Solicitudes
  FOREIGN KEY (solicitud) REFERENCES Solicitudes(IDsolicitud)
  ON DELETE CASCADE;

ALTER TABLE Citas ADD CONSTRAINT FK_CITAS_SOLICITUDES
  FOREIGN KEY (solicitud) REFERENCES Solicitudes(IDsolicitud)
  ON DELETE CASCADE;