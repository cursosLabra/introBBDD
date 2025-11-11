SELECT Nombres.Id, Nombre, Nota
FROM Nombres LEFT OUTER JOIN Valores
ON Nombres.Id = Valores.Id;