/*Please add ; after each select statement*/
CREATE PROCEDURE filmLibrary()
BEGIN
    SELECT actor_ages.actor, actor_ages.age 
    FROM actor_ages
    JOIN starring_actors
    ON actor_ages.actor = starring_actors.actor
    JOIN movies
    ON starring_actors.movie_name = movies.movie
    AND movies.genre = 
    (
        SELECT genre AS fav_genre FROM movies
        GROUP BY genre
        ORDER BY COUNT(movie) DESC LIMIT 1
    )
    ORDER BY age DESC, actor;
END