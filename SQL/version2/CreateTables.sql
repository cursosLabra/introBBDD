CREATE TABLE Alumno (
 IdAlumno        TEXT Primary Key,
 Nombre	         TEXT,
 Apellidos       TEXT,
 FechaNacimiento Date,
 Tlfno           TEXT
);

Create table Matriculaciones (
  IdAlumno Text Not Null References Alumno(IdAlumno), 	
  IdCurso Text Not Null References Curso(IdCurso),
  FechaMatricula Date
);

Create Table Curso (
 IdCurso Text Primary Key,
 Nombre  Text,
 Edicion Text	
);

Create Table Examen (
 IdExamen Text Primary Key,
 IdCurso  Text Not Null References Curso(IdCurso),
 Fecha    Date
);

Create Table Evaluacion (
 IdAlumno Text Not Null References Alumno(IdAlumno), 
 IdExamen  Text Not Null References Examen(IdExamen),
 Nota     Real
);