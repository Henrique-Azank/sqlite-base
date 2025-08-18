/*
We can use the WHERE clause to specify search conditions 
for our queries rows.

SELECT 
    select_list
FROM 
    table
WHERE
    where_condition;

The queries first evaluates WHERE, then WHERE conditions and
finally gets the SELECT columns (the WHERE clause can also be
used in the UPDATE and DELETE statements).

We specify WHERE conditionals using the syntax:
left_expression OPERATOR (=, <>, !=, IN, LIKE, BETWEEN) right_expression

WHERE column_1 = 100;
WHERE column_2 IN (1,2,3);
WHERE column_3 LIKE 'An%';
WHERE column_4 BETWEEN 10 AND 20;

Other operators are:
    ALL, AND, ANY, BETWEEN, EXISTS, IN, LIKE, OR
*/

-- Instantiate the outpur formatting
.mode column
.headers on

-- Select some columns
SELECT
   name,
   milliseconds,
   bytes,
   albumid
-- From the tracks table
FROM
   tracks
WHERE
    -- From a given album ID
   albumid = 1
   AND
   -- With a runtime greater than 100s
   milliseconds > 100000
ORDER BY
   -- Order by the longest
   milliseconds DESC;