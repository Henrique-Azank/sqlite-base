
-- The select statement is one of the most common SQL statements

-- Simple calculations
SELECT 1 + 1 ;

-- Multiple calculations
SELECT 1 + 1, 2 * 4, 3 / 5;

-- We can append multiple clauses to enhance its functionality
-- In this example: DISTINCT, ORDER BY, LIMIT. 
SELECT DISTINCT Title FROM Albums
ORDER BY Title
LIMIT 5;
