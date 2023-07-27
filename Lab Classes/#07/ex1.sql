SELECT Name
FROM CUSTOMER
  LEFT OUTER JOIN STREAM ON(CUSTOMER.CustomerId = STREAM.CustomerId)
WHERE StreamId IS NULL AND Country = 'China';