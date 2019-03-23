USE imdb_small;

SELECT * FROM movies WHERE year=1995

SELECT COUNT(*) FROM actors
JOIN roles ON actors.id=roles.actor_id
JOIN movies ON roles.movie_id=movies.id
WHERE movies.name='Lost in Translation'

SELECT first_name,last_name FROM actors
JOIN roles ON actors.id=roles.actor_id
JOIN movies ON roles.movie_id=movies.id
WHERE movies.name='Lost in Translation'

SELECT first_name,last_name FROM directors
JOIN movies_directors ON movies_directors.director_id=directors.id
JOIN movies ON movies_directors.movie_id=movies.id
WHERE movies.name='Fight Club'

SELECT COUNT(*) FROM movies
JOIN movies_directors ON movies_directors.movie_id=movies.id
JOIN directors ON movies_directors.director_id=directors.id
WHERE directors.first_name='Clint' AND directors.last_name='Eastwood'

SELECT * FROM movies
JOIN movies_directors ON movies_directors.movie_id=movies.id
JOIN directors ON movies_directors.director_id=directors.id
WHERE directors.first_name='Clint' AND directors.last_name='Eastwood'

SELECT * FROM directors
JOIN movies_directors ON movies_directors.director_id=directors.id
JOIN movies_genres ON movies_directors.movie_id=movies_genres.movie_id
WHERE movies_genres.genre='Horror'

SELECT * FROM actors
JOIN roles ON actors.id=roles.actor_id
JOIN movies_directors ON roles.movie_id=movies_directors.movie_id
JOIN directors ON directors.id=movies_directors.director_id
WHERE directors.first_name='Christopher' AND directors.last_name='Nolan'