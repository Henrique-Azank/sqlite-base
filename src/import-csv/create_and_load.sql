
-- Script for creating and loading data into the database using CSV files
CREATE TABLE IF NOT EXISTS import_people (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER
);

-- Load data from CSV file
.mode csv
.import /workspaces/sqlite-base/src/import-csv/people.csv import_people

-- Perform a select for all the rows
SELECT * FROM import_people;

-- Export the data to a new CSV file
.headers on
.mode csv
.output /workspaces/sqlite-base/src/import-csv/exported_people.csv
SELECT * FROM import_people;
.output stdout
