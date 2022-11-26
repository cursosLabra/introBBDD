Select 
 Alumnos.Nombre, 
 Alumnos.Apellidos, 
 Examen1.Nota, 
 Examen2.Nota, 
 (Examen1.Nota + Examen2.Nota) / 2 as Media
From Alumnos 
Left outer join Examen1 on alumnos.id = Examen1.Id
Left outer join Examen2 on alumnos.id = Examen2.Id