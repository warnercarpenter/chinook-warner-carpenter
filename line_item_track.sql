select il.InvoiceLineId, t.Name from InvoiceLine il
JOIN Track t on t.TrackId = il.TrackId
ORDER BY il.InvoiceLineId