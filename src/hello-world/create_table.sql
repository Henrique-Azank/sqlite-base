
-- Create the "people" table
CREATE TABLE IF NOT EXISTS people (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER
);

-- Insert an example to the people table
INSERT INTO people (name, age) VALUES ('Alice', 30), ('Bob', 25), ('Carol', 28);

-- Select all people
SELECT * FROM people;
