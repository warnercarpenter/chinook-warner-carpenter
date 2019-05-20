SELECT
    COUNT(i.BillingCountry) TotalSales,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry