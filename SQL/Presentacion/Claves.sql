CREATE TABLE Alumnos (
    Id INTEGER PRIMARY KEY,
    Nombre TEXT NOT NULL,
    Apellidos TEXT NOT NULL,
    FechaNacimiento DATE NOT NULL
);
CREATE TABLE Cursos (
    Id INTEGER PRIMARY KEY,
    Nombre TEXT NOT NULL,
    Descripcion TEXT
);
CREATE TABLE Notas (
    Id INTEGER PRIMARY KEY,
    AlumnoId INTEGER,
    Curso INTEGER,
    Nota REAL CHECK(Nota >= 0 AND Nota <= 10),
    FOREIGN KEY (AlumnoId) REFERENCES Alumnos(Id),
    FOREIGN KEY (Curso) REFERENCES Cursos(Id)
);