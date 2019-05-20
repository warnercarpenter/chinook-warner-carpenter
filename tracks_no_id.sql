SELECT t.Name, a.Title, mt.Name, g.Name FROM Track t
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId