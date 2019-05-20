SELECT top 1
    t.Name,
    count(il.TrackId) NumberPurchased
FROM Invoice i
JOIN InvoiceLine il on il.InvoiceId = i.InvoiceId
JOIN Track t on t.TrackId = il.TrackId
WHERE year(i.InvoiceDate) = 2013
GROUP BY t.Name
ORDER BY NumberPurchased DESC
;