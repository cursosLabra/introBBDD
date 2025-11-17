CREATE TABLE Contactos ( 
    id integer primary key,
    nombre text not null collate nocase,
    email  text not null unique,
    tlfno  text not null default 'UNKNOWN',
    edad   integer check (edad >= 0 and edad <= 120),
    unique (nombre, tlfno) 
);