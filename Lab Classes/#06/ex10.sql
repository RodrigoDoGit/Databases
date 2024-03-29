SELECT REGION.Name, COUNT(*) AS N
FROM REGION
     JOIN COUNTRY USING(RegionId)
     JOIN CUSTOMER
  ON(COUNTRY.Name=CUSTOMER.Country)
GROUP BY REGION.Name;
