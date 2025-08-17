/* 
We need to specify a comma separated columns in the SELECT
clause.

Even though the FROM clause is placed after the SELECT one
it is evaluated before it. We get the origin of the information
before knowing what to do with it. We can have multiple tables in 
the FROM clause as well.  
*/

-- Format to columns and add headers
.mode columns
.headers on

-- Get some base info from the tracks database
SELECT 
    trackId,
    Name,
    Composer,
    UnitPrice
FROM 
    tracks
LIMIT 10;
