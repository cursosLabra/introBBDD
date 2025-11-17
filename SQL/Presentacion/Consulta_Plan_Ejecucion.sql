SELECT a.nombre, a.apellidos, c.nombre AS curso, n.nota
FROM alumnos a
JOIN notas n ON a.id = n.id_alumno
JOIN cursos c ON n.id_curso = c.id
WHERE a.apellidos = 'García'
  AND c.nombre = 'Bases de Datos'
  AND n.nota > 8;