SELECT Nombres.Id, Nombre, Nota
FROM Nombres INNER JOIN Valores
ON Nombres.Id = Valores.Id;