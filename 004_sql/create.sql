-- create table
CREATE TABLE flights (
  id SERIAL PRIMARY key,
  origin VARCHAR NOT NULL,
  destination VARCHAR NOT NULL,
  duration INTEGER NOT NULL
  );

-- insert data
INSERT INTO flights
            (origin, destination, duration)
            VALUES ('New York', 'London', 415);


INSERT INTO flights (origin, destination, duration) VALUES ('Shanghai', 'Paris', 760);
INSERT INTO flights (origin, destination, duration) VALUES ('Istanbul', 'Tokyo', 700);
INSERT INTO flights (origin, destination, duration) VALUES ('New York', 'Paris', 435);
INSERT INTO flights (origin, destination, duration) VALUES ('Moscow', 'Paris', 245);
INSERT INTO flights (origin, destination, duration) VALUES ('Lima', 'New York', 455);


-- delete by id
DELETE FROM flights
            WHERE id >6;

-- query

SELECT destination, duration FROM flights;

SELECT * FROM flights;

SELECT * FROM flights WHERE id = 3;

SELECT * FROM flights WHERE origin = 'New York';

SELECT * FROM flights WHERE duration > 500;

SELECT * FROM flights
 WHERE destination = 'Paris' AND duration > 500;


SELECT * FROM flights
 WHERE destination = 'Paris' OR duration > 500;

SELECT AVG(duration) FROM flights;

SELECT AVG(duration) FROM flights
                            where origin = 'New York';

select count(*) from flights;
select count(*) from flights where origin = 'New York';

select MIN(duration) from flights;

SELECT * FROM flights
                WHERE duration = 245;

SELECT * FROM flights
                WHERE origin IN ('New York', 'Lima');

SELECT * FROM flights
                WHERE origin LIKE '%a%';

-- update table

UPDATE flights
   SET duration = 430
 WHERE origin = 'New York'
       AND destination = 'London';

-- summarise

SELECT * FROM flights LIMIT 2;

SELECT * FROM flights ORDER BY duration ASC;

SELECT * FROM flights ORDER BY duration ASC LIMIT 3;

select origin, count(*) from flights group by origin;

select origin, count(*) from flights
 group by origin
          having count(*) > 1;
