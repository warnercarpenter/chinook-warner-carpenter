SELECT
    COUNT(c.CustomerId) AssignedCustomers,
    e.FirstName + ' ' + e.LastName SalesAgentName 
FROM Customer c
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName