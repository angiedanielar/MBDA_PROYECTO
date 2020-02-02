/* LLaves Unicas
*/

Alter Table Personas Add Constraint UK_Personas_Correo UNIQUE(correo);
Alter Table Telefonos Add Constraint UK_Telefonos_Tel UNIQUE(telefono);