SELECT 
    N.Id, 
    N.Nota, 
    (SELECT AVG(N2.Nota) FROM Valores N2) AS Nota_Media,
    N.Nota - (SELECT AVG(N3.Nota) FROM Valores N3) AS Desviación
  FROM Valores N