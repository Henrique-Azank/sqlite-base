
-- Create the "people" table
CREATE TABLE IF NOT EXISTS people (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER
);

-- Create the "demo" table
CREATE TABLE IF NOT EXISTS demo (
  id INTEGER PRIMARY KEY,
  msg TEXT
);
