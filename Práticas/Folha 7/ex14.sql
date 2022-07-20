SELECT MOVIE.Title, REGION.Name, COUNT(StreamId) AS N
FROM (MOVIE
 JOIN REGION
 JOIN COUNTRY USING(RegionId)
 JOIN CUSTOMER ON(CUSTOMER.Country = COUNTRY.Name))
 LEFT JOIN STREAM USING(MovieId, CustomerId)
WHERE MOVIE.Title LIKE '%war%'
GROUP BY MOVIE.Title, REGION.Name 
ORDER BY MOVIE.Title, REGION.Name;
