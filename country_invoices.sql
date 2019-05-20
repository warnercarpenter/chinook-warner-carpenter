select COUNT(i.BillingCountry), i.BillingCountry
FROM Invoice i 
GROUP BY i.BillingCountry