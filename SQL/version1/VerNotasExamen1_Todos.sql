Select Alumnos.Nombre, Alumnos.Apellidos, 
       Examen1.Nota, Examen1.Comentarios 
From Alumnos Left outer join Examen1 
ON alumnos.id = Examen1.Id 