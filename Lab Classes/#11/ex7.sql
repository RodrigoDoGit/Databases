DROP VIEW IF EXISTS REGION_DATA;

CREATE VIEW REGION_DATA(Name, Manager, Countries, Customers)
AS (
 SELECT REGION.Name AS Name, STAFF.Name AS Manager, COUNT(DISTINCT(COUNTRY.Name)) AS Countries, COUNT(CustomerId) AS Customers
 FROM REGION
 JOIN STAFF ON (RegionManager = StaffId)
 JOIN COUNTRY USING (RegionId)
 JOIN CUSTOMER ON(COUNTRY.Name = CUSTOMER.Country)
 GROUP BY Name, Manager
);

SELECT * FROM REGION_DATA;


