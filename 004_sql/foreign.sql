CREATE TABLE passengers (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  flight_id INTEGER REFERENCES flights);

INSERT INTO passengers (name, flight_id) VALUES ('Alice', 1);
INSERT INTO passengers (name, flight_id) VALUES ('Bob', 1);
INSERT INTO passengers (name, flight_id) VALUES ('Charlie', 2);
INSERT INTO passengers (name, flight_id) VALUES ('Dave', 2);
INSERT INTO passengers (name, flight_id) VALUES ('Erin', 4);
INSERT INTO passengers (name, flight_id) VALUES ('Frank', 6);
INSERT INTO passengers (name, flight_id) VALUES ('Grace', 6);

-- queries

SELECT * FROM passengers;

SELECT * FROM passengers WHERE name = 'Alice';

SELECT * FROM flights WHERE id = 1;

-- inner join

SELECT origin, destination, name FROM flights
JOIN passengers ON
passengers.flight_id = flights.id;

-- left join

SELECT origin, destination, name FROM flights
LEFT JOIN passengers ON
passengers.flight_id = flights.id;

-- nesting queries

SELECT flight_id FROM passengers
GROUP BY flight_id HAVING COUNT(*) > 1;

SELECT * FROM flights WHERE id IN
(SELECT flight_id FROM passengers
GROUP BY flight_id HAVING COUNT(*) > 1);

-- SQL INJECTION
SQL Transaction
