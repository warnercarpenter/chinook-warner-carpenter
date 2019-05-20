SELECT e.FirstName + ' ' + e.LastName EmployeeName, SUM(i.Total) TotalAmount from Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName