/*Please add ; after each select statement*/
CREATE PROCEDURE userCountries()
BEGIN
    SELECT users.id, 
    CASE
        WHEN users.city IN (SELECT DISTINCT city FROM cities)
        THEN (SELECT cities.country FROM cities WHERE users.city = cities.city)
        ELSE 'unknown'
    END AS country
    FROM users;
    
        
END

/* Please add ; after each select statement
CREATE PROCEDURE userCountries()
BEGIN
    SELECT users.id, COALESCE(cities.country, 'unknown') AS country
    FROM users
    LEFT JOIN cities ON users.city = cities.city
    ORDER BY id;
END */