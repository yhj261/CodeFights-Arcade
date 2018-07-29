/*Please add ; after each select statement*/
CREATE PROCEDURE closestCells()
BEGIN
    SELECT p1.id AS id1,
    (
        SELECT p2.id FROM positions p2
        WHERE p2.id != p1.id
        ORDER BY POW(p1.x - p2.x, 2) + POW(p1.y - p2.y, 2)
        LIMIT 1
    ) AS id2
    FROM positions p1
    ORDER BY id1;
END