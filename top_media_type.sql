SELECT top 1
    mt.Name,
    count(mt.MediaTypeId) FilesPurchased
FROM Invoice i
JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
JOIN MediaType mt on mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.Name
ORDER BY FilesPurchased DESC
;