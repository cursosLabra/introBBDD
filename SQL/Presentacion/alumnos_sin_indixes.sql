CREATE TABLE alumnos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    apellidos TEXT,
    email TEXT UNIQUE
);

CREATE TABLE cursos (
    id INTEGER PRIMARY KEY,
    nombre TEXT
);

CREATE TABLE notas (
    id_alumno INTEGER,
    id_curso INTEGER,
    nota REAL,
    FOREIGN KEY(id_alumno) REFERENCES alumnos(id),
    FOREIGN KEY(id_curso) REFERENCES cursos(id)
);
