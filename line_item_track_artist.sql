select il.InvoiceLineId, t.Name, a.Name from InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId
JOIN Album al on t.AlbumId = al.AlbumId
JOIN Artist a on al.ArtistId = a.ArtistId
ORDER BY il.InvoiceLineId