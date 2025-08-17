
-- Example of formatting output of queries in the terminal

-- Format the output as CSV
.mode column
.headers on
.nullvalue NULL-VALUE

-- Query the albuns table
select * from albums
order by ArtistId
limit 5
