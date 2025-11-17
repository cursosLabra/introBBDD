CREATE TABLE alumnos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    apellidos TEXT
);
CREATE INDEX idx_alumnos_apellidos
ON alumnos (apellidos);
INSERT INTO alumnos (nombre, apellidos) VALUES
('Juan', 'García'),
('María', 'García'),
('Luis', 'Pérez'),
('Ana', 'Pérez'),
('Lucía', 'Pérez'),
('Pedro', 'López');

SELECT nombre, apellidos
FROM alumnos
WHERE tlfno IS NULL
  AND email IS NOT NULL;

SELECT nombre, apellidos
FROM alumnos
WHERE id IN (
    SELECT id_alumno
    FROM notas
    WHERE nota >= 8
);