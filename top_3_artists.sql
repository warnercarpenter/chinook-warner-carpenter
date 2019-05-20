SELECT top 3
    a.Name,
    count(a.ArtistId) TracksPurchased
FROM Invoice i
JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
JOIN Album al on t.AlbumId = al.AlbumId
JOIN Artist a on al.ArtistId = a.ArtistId
GROUP BY a.Name
ORDER BY TracksPurchased DESC
;