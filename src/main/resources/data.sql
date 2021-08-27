DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  email VARCHAR(25) DEFAULT NULL
);

INSERT INTO users (first_name, last_name, email) VALUES
  ('Jeff', 'Bezos', 'jeff.bezos.amazon.com'),
  ('Bill', 'Gates', 'bill.gates@microsoft.com'),
  ('Larry', 'Paige', 'larry.paige@gmail.com');