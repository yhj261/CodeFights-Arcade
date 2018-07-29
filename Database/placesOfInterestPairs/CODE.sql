/*Please add ; after each select statement*/
CREATE PROCEDURE placesOfInterestPairs()
BEGIN
    SELECT s1.name AS place1, s2.name AS place2
    FROM sights s1
    JOIN sights s2 ON s1.name != s2.name
    AND s1.name < s2.name
    AND (POW(s1.x - s2.x, 2) + POW(s1.y - s2.y, 2)) < 25
    ORDER BY place1, place2;
END