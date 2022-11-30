Select Nombre, Apellidos, NotaParcial1, NotaParcial2, Media, 
 Case 
  when NotaParcial1 is Null and NotaParcial2 is null then "No Presentado"
	when NotaParcial1 is Null then "Debe realizar parcial 1"
	when NotaParcial2 is null then "Debe realizar parcial 2"
	when Media < 5 then "Suspenso"
    when Media >= 5 AND Media < 7 then "Aprobado"
	When Media >= 7 AND Media < 9 then "Notable"
	When Media >= 9 and Media < 10 then "Sobresaliente"
	When Media >= 10 then "Mat. Honor"
	else "Suspenso"
  end as Valor
from 
( Select 
  Nombre, 
  Apellidos, 
  E1.Nota as NotaParcial1, 
  E2.Nota as NotaParcial2, 
  (E1.Nota + E2.Nota) / 2 as Media
From Alumno
Left outer join Evaluacion on 
  alumno.idAlumno = Evaluacion.IdAlumno AND Evaluacion.IdExamen = "E1Log2223" As E1
Left outer join Evaluacion on 
  alumno.idAlumno = Evaluacion.IdAlumno AND Evaluacion.IdExamen = "E2Log2223" As E2
 
