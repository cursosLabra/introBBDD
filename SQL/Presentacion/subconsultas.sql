SELECT 
    N.Id, 
    N.Nota, 
    Stats.Nota_Media,
    N.Nota - Stats.Nota_Media AS Desviación
  FROM Valores N,
    (SELECT AVG(Nota) AS Nota_Media FROM Valores) Stats