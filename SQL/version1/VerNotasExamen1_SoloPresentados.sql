Select 
 Alumnos.Nombre, 
 Alumnos.Apellidos, 
 Examen1.Nota, 
 Examen1.Comentarios 
From Alumnos join Examen1 
Where alumnos.id = Examen1.Id