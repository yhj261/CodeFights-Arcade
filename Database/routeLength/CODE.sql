/*Please add ; after each select statement*/
CREATE PROCEDURE routeLength()
BEGIN
    SELECT ROUND(SUM(t), 9) AS total
    FROM 
    (
        SELECT SQRT(POW(c1.x - c2.x, 2) + POW(c1.y - c2.y, 2)) AS t
        FROM cities AS c1
        JOIN cities AS c2
        ON c1.id = (c2.id - 1)
    ) r;
END