select top 1 e.FirstName + ' ' + e.LastName EmployeeName, SUM(i.Total) TotalSales from Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales desc