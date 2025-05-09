USE [Filmes]
GO

SELECT * FROM [dbo].[Atores]
GO

SELECT * FROM [dbo].[ElencoFilme]
GO

SELECT * FROM [dbo].[Filmes]
GO

SELECT * FROM [dbo].[FilmesGenero]
GO

SELECT * FROM [dbo].[Generos]
GO

SELECT [Nome], [Ano] FROM [dbo].[Filmes]
GO

SELECT [Nome], [Ano] FROM [dbo].[Filmes]
ORDER BY [Ano] ASC
GO

SELECT [Nome], [Ano], [Duracao] FROM [dbo].[Filmes]
WHERE [Nome] = 'De Volta para o Futuro'
GO

SELECT [Nome], [Ano], [Duracao] FROM [dbo].[Filmes]
WHERE [ano] > 2000
GO

SELECT [Nome], [Ano], [Duracao] FROM [dbo].[Filmes]
WHERE [Duracao] > 100 AND [Duracao] < 150
ORDER BY [Duracao] ASC
GO

SELECT [Ano], COUNT(*) Quantidade  FROM [dbo].[Filmes]
GROUP BY [Ano]
ORDER BY Quantidade DESC
GO

SELECT [PrimeiroNome], [UltimoNome], [Genero]  FROM [dbo].[Atores]
WHERE Genero = 'M'
GO

SELECT [PrimeiroNome], [UltimoNome], [Genero]  FROM [dbo].[Atores]
WHERE Genero = 'F'
ORDER BY PrimeiroNome
GO

SELECT [Filmes].[Nome], [Generos].[Genero]  FROM [dbo].[FilmesGenero]
JOIN [dbo].[Filmes] ON [dbo].[FilmesGenero].IdFilme = [dbo].[Filmes].Id
JOIN [dbo].[Generos] ON [dbo].[FilmesGenero].IdGenero = [dbo].[Generos].Id
GO

SELECT [Filmes].[Nome], [Generos].[Genero]  FROM [dbo].[FilmesGenero]
JOIN [dbo].[Filmes] ON [dbo].[FilmesGenero].IdFilme = [dbo].[Filmes].Id
JOIN [dbo].[Generos] ON [dbo].[FilmesGenero].IdGenero = [dbo].[Generos].Id
WHERE Genero = 'Mistério'
GO

SELECT [Filmes].[Nome], [Atores].[PrimeiroNome], [Atores].[UltimoNome], [ElencoFilme].[Papel] FROM [dbo].[ElencoFilme]
JOIN [dbo].[Filmes] ON [dbo].[ElencoFilme].IdFilme = [dbo].[Filmes].Id
JOIN [dbo].[Atores] ON [dbo].[ElencoFilme].IdAtor = [dbo].[Atores].Id
GO
