SELECT top 5
    t.Name,
    count(il.TrackId) NumberPurchased
FROM Invoice i
JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
GROUP BY t.Name
ORDER BY NumberPurchased DESC
;