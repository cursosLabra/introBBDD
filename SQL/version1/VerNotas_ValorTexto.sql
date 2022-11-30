Select Nombre, Apellidos, NotaParcial1, NotaParcial2, Media, Case 
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
  Examen1.Nota as NotaParcial1, 
  Examen2.Nota as NotaParcial2, 
  (Examen1.Nota + Examen2.Nota) / 2 as Media
From Alumnos 
Left outer join Examen1 on alumnos.id = Examen1.Id
Left outer join Examen2 on alumnos.id = Examen2.Id)