CREATE TABLE films(
	id SERIAL,
	title VARCHAR(50),
	genre VARCHAR(50),
	release_year INTEGER,
	score INTEGER,
	unique(id, title)
);