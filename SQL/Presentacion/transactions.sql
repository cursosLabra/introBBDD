CREATE TABLE alumnos (
    nombre    TEXT,
    nota      REAL CHECK(nota >= 0 AND nota <= 10)
);
INSERT INTO alumnos (nombre, nota)
            VALUES ('Luis', 6);
BEGIN TRANSACTION;
INSERT INTO alumnos (nombre, nota)
VALUES ('Pedro', 7.5);
ROLLBACK