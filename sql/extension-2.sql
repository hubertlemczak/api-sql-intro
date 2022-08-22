CREATE TABLE directors(
  id SERIAL,
  name VARCHAR(50)
);

INSERT INTO directors
	(name)
VALUES
	('Frank Darabont'),
	('Francis Ford Coppola'),
	('Christopher Nolan'),
	('Ridley Scott'),
	('Paul Verhoeven'),
	('Lana Wachowski'),
	('John McTiernan'),
	('Rob Reiner'),
	('Jane Campion'),
	('David Mackenzie'),
	('Sergio Leone'),
	('Clint Eastwood');

ALTER TABLE films ADD director_id INTEGER;

-- some of the examples
UPDATE
    films
SET
    director_id = 6
WHERE
    id IN(6, 7, 8);

UPDATE
    films
SET
    director_id = 12
WHERE
    id = 14;
--

SELECT
    string_agg(title, ', '),
    name AS director
FROM
    films
    LEFT JOIN directors d ON director_id = d.id
GROUP BY
    name;