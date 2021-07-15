SELECT name, genre 
FROM movies;

-- AS
  -- renames col imdb_rating to 'IMDb'
  SELECT imdb_rating AS 'IMDb'
  FROM movies;

-- DISTINCT
  -- returns unique genres
  SELECT DISTINCT genre 
  FROM movies;

-- WHERE
  -- returns all movies whose year col is greater than 2014
  SELECT * 
  FROM movies 
  WHERE year > 2014;

-- LIKE
  -- _ is a wildcard char
  SELECT * 
  FROM movies
  WHERE name LIKE 'Se_en';

  -- A% matches all beginning with A
  -- %a matches all ending with a
  -- name contains man
  SELECT * 
  FROM movies
  WHERE name LIKE '%man%';

-- name begins with The
  SELECT * 
  FROM movies
  WHERE name LIKE 'The %';

-- NULL
  -- NULL cannot use = or !=
  -- must use IS and IS NOT
  SELECT name
  FROM movies
  WHERE imdb_rating IS NULL;

-- BETWEEN
  -- BETWEEN goes from 'A' up to and including 'J'
  -- movie 'J' is true but 'Jaws' is false
  SELECT *
  FROM movies
  WHERE name BETWEEN 'A' AND 'J';

-- 1970s movies
  SELECT *
  FROM movies
  WHERE year BETWEEN 1970 and 1979;

-- AND
  SELECT *
  FROM movies
  WHERE year BETWEEN 1970 AND 1979
    AND imdb_rating > 8;

  SELECT *
  FROM movies
  WHERE year < 1985
    AND genre = 'horror';

-- OR
  SELECT *
  FROM movies
  WHERE genre = 'romance'
    OR genre = 'comedy';

-- ORDER BY
  SELECT name, year
  FROM movies
  ORDER BY name;

  SELECT *
  FROM movies
  WHERE imdb_rating > 8
  ORDER BY year DESC; -- or ASC (default)

  SELECT name, year, imdb_rating
  FROM movies
  ORDER BY imdb_rating DESC;

-- LIMIT
  SELECT *
  FROM movies
  LIMIT 10;

  -- returns the top 3 highest rated movies
  SELECT *
  FROM movies
  ORDER BY imdb_rating DESC
  LIMIT 3;

-- CASE
  SELECT name,
    CASE
      WHEN imdb_rating > 8 THEN 'Fantastic'
      WHEN imdb_rating > 6 THEN 'Poorly Received'
      ELSE 'Avoid at All Costs'
   END AS 'Review'
  FROM movies;

  SELECT name,
    CASE
      WHEN genre = 'romance' THEN 'Chill'
      WHEN genre = 'comedy' THEN 'Chill'
      ELSE 'Intense'
    END AS 'Mood'
  FROM movies;