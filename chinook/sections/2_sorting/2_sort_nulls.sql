
/*
In the database world, NULL is special. It denotes that information
is missing or the data is not applicable.

NULL is special because you cannot compare it to any other value. The 
value can't even be compared against itself, so NULL = NULL is also
False (boolean wise).

When it comes to sorting values the NULL values appear at the beggining
as it is considered the lowest value. However, we can change this
behavior using the NULLS FIRST or NULLS LAST clause.

For example, if we want to sort the values in ascending order but
have the NULL values appear at the end, we can do the following:

ORDER BY column_name ASC NULLS LAST;

Conversely, if we want the NULL values to appear at the beginning,
we can use:

ORDER BY column_name ASC NULLS FIRST;
*/


-- Set the output options
.mode column
.headers on

-- Set the NULL string for the output
.nullvalue "NULL VALUE"

-- Order the results of a query by the composer
SELECT 
    TrackId,
    Name,
    Composer
FROM
    tracks
ORDER BY
    Composer ASC NULLS FIRST
LIMIT
    20;



