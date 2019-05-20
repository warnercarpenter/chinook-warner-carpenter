SELECT p.Name, COUNT(pt.TrackId) TrackCount FROM Playlist p
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
JOIN Track t ON pt.TrackId = t.TrackId
GROUP BY p.Name