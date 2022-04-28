SELECT *
FROM startups;

SELECT
  COUNT(name) AS total_names
FROM startups;

SELECT 
SUM(valuation) AS total_val
FROM startups;

SELECT
  MAX(raised) AS max_raised
FROM startups;



SELECT
  MAX(raised) AS max_raised
FROM startups
WHERE stage = 'Seed';

SELECT
  MIN(founded) AS oldest_company
FROM startups;

SELECT
  AVG(valuation) AS avg_val
FROM startups;

SELECT
  category,
  AVG(valuation) AS avg_val
FROM startups
GROUP BY category;

SELECT
  category,
  ROUND(AVG(valuation), 2) AS rounded_avg_val
FROM startups
GROUP BY category;

What are the most competitive markets?

SELECT
  category,
  ROUND(AVG(valuation), 2) AS rounded_avg_val
FROM startups
GROUP BY category
ORDER BY rounded_avg_val DESC

SELECT *
FROM startups;

SELECT
  category,
  COUNT(name) as total_num_of_companies
FROM startups
GROUP BY category
HAVING COUNT(name) > 3;

Lets see if there's a difference in startups sizes among different locations'

SELECT *
FROM startups;

SELECT
  location,
  AVG(employees) AS avg_size_in_loc
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;
