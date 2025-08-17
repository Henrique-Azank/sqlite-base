
-- Create a table with login date and user ID
CREATE TABLE IF NOT EXISTS user_logins (
  id INTEGER PRIMARY KEY NOT NULL,
  user_id INTEGER NOT NULL, -- References the user ID
  login_date TEXT NOT NULL -- The date and time of the login
);

-- Insert data mimicking the user login events
INSERT INTO user_logins (user_id, login_date) VALUES
  (1, '2023-01-01 10:00:00'),
  (2, '2023-01-02 11:30:00'),
  (1, '2023-01-03 09:15:00'),
  (3, '2023-01-04 14:45:00');

-- Perform a select for only the first user
SELECT * FROM user_logins WHERE user_id = 1;
