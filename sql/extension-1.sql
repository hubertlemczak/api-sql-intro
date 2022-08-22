SELECT ROUND(AVG(score), 1) FROM films;

SELECT COUNT (*) FROM films;

SELECT
    genre,
    ROUND(AVG(score), 1) AS average_rating FROM films
GROUP BY
    genre;