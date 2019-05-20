SELECT i.InvoiceId, e.FirstName, e.LastName FROM Invoice i 
JOIN Customer c on c.CustomerId = i.CustomerId 
JOIN Employee e on c.SupportRepId = e.EmployeeId