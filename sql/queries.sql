-- P2: List all shows for a given theatre and date

SELECT 
    m.MovieTitle,
    l.LanguageName,
    s.ShowDate,
    s.ShowTime,
    sc.ScreenName
FROM `Show` s
JOIN Movie m ON s.MovieId = m.MovieId
JOIN Language l ON s.LanguageId = l.LanguageId
JOIN Screen sc ON s.ScreenId = sc.ScreenId
JOIN Theatre t ON sc.TheatreId = t.TheatreId
WHERE t.TheatreName = 'PVR Nexus Forum'
  AND s.ShowDate = '2023-04-25'
ORDER BY s.ShowTime;
