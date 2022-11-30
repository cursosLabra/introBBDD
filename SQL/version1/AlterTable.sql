ALTER TABLE alumnos RENAME TO Estudiantes;
ALTER TABLE Estudiantes ADD COLUMN Email Text;
ALTER TABLE Estudiantes RENAME COLUMN Email TO CorreoElectronico;
ALTER TABLE Estudiantes DROP COLUMN CorreoElectronico;
DROP TABLE Estudiantes;