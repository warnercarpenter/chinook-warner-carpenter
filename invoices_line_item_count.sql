SELECT COUNT(il.InvoiceId) LineItems, i.InvoiceId FROM Invoice i 
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId
ORDER BY LineItems desc