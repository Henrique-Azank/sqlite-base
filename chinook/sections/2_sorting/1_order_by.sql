
/*
Rows in a table are stored in an unspecific order. Meaning
the may not respect the order in which they were inserted. 

In order for a query to respect a given order, we should specify an
ORDER BY clause. 

It is included after the FROM clause so we can order the RESULTS of a
query based on an ascending or descending order of one or more columns.

ASC - Ascending Order (Default)
DESC - Descending Order
*/ 

-- Format the output of the query
.mode columns
.headers on

-- Get some base info from the tracks database and order the result
SELECT 
    albumId,
    trackId,
    Name,
    milliseconds
FROM 
    tracks
ORDER BY 
-- Orders by the ID of the album and then the track duration
    albumId ASC,
    milliseconds DESC
LIMIT 20;

/*
We could also order by the column's position instead of their names
if we prefer. AlbumID is the 3rd column, while Milliseconds is the 
2nd column, so we could just re-write it as 

ORDER BY 
    3,
    2 DESC;
*/