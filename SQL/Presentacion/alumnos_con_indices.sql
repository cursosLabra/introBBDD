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

CREATE INDEX idx_alumnos_apellidos ON alumnos(apellidos);
CREATE INDEX idx_cursos_nombre   ON cursos(nombre);
CREATE INDEX idx_notas_alumno     ON notas(id_alumno);
CREATE INDEX idx_notas_curso_nota ON notas(id_curso, nota);