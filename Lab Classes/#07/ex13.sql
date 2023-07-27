SELECT STREAM.StreamDate, MOVIE.Title, CUSTOMER.Name, CUSTOMER.Country
FROM STREAM
 JOIN CUSTOMER USING(CustomerId)
 JOIN MOVIE USING(MovieId)
WHERE
 MovieId IN(
  SELECT MovieId FROM MOVIE_ACTOR
  JOIN ACTOR USING(ActorId)
  WHERE ACTOR.Name = 'Johnny Depp'
 )

 AND MovieId NOT IN(
  SELECT MovieId FROM MOVIE_ACTOR
  JOIN ACTOR USING(ActorId)
  WHERE ACTOR.Name = 'Helena Bonham Carter'
 )

 AND CustomerId IN(
  SELECT CustomerId FROM CUSTOMER
  JOIN COUNTRY ON(CUSTOMER.Country = COUNTRY.Name)
  WHERE COUNTRY.Name != 'China'
 )
ORDER BY StreamDate DESC
LIMIT 15;