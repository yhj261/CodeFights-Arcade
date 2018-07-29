/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterest()
BEGIN
    SELECT country, 
    SUM(a) AS adventure_park,
    SUM(g) AS golf, 
    SUM(r) AS river_cruise,
    SUM(k) AS kart_racing
    FROM (
    SELECT country,
    IF(leisure_activity_type = 'Adventure park', number_of_places, 0) AS a,
    IF(leisure_activity_type = 'Golf', number_of_places, 0) AS g,
    IF(leisure_activity_type = 'River cruise', number_of_places, 0) AS r,
    IF(leisure_activity_type = 'Kart racing', number_of_places, 0) AS k
    FROM countryActivities) t
    GROUP BY country;
END