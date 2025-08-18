/*
The DISTINCT clause is an optional clause in the SELECT clause
that allows us to filter duplicated rows in the results

SELECT DISTINCT select_list
FROM table_name
*/

-- Getting the distinct cities from customers
SELECT DISTINCT City
FROM customers
-- Alphabetical order of the cities
ORDER BY City;


