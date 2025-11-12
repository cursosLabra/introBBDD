PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE alumnos (
    nombre    TEXT,
    nota      REAL CHECK(nota >= 0 AND nota <= 10)
);
INSERT INTO alumnos VALUES('Luis',6.0);
INSERT INTO alumnos VALUES('Pedro',7.5);
CREATE TABLE Contactos ( 
    id integer primary key,
    nombre text not null collate nocase,
    email  text not null unique,
    tlfno  text not null default 'UNKNOWN',
    edad   integer check (edad >= 0 and edad <= 120),
    unique (nombre, tlfno) );
INSERT INTO Contactos VALUES(23,'Juan','juan@juan.com','234',23);
INSERT INTO Contactos VALUES(24,'Juanito','juanito@juan.com','235',23);
COMMIT;
