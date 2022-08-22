SELECT
    COUNT(director_id) AS movies_directed,
    name FROM films
JOIN 
    directors ON director_id = directors.id
GROUP BY
    name;

SELECT
    STRING_AGG(title, ', '),
    name AS director,
    COUNT(director_id) AS movies_directed
FROM
    films
    LEFT JOIN directors d ON director_id = d.id
GROUP BY
    name;

SELECT
    ARRAY_AGG(title || ''),
    name AS director,
    COUNT(director_id) AS movies_directed
FROM
    films
    LEFT JOIN directors d ON director_id = d.id
GROUP BY
    name;