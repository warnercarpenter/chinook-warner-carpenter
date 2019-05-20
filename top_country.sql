SELECT
    TOP 1 COUNT(i.BillingCountry) TotalSales,
    i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY TotalSales desc