/*Please add ; after each select statement*/
CREATE PROCEDURE consecutiveIds()
BEGIN
    SET @n = 0;

    SELECT id AS oldId,
    @n := @n + 1 AS newId
    FROM itemIds;
END

/* Please add ; after each select statement
CREATE PROCEDURE consecutiveIds()
BEGIN
	SELECT A.id as oldId,
           (SELECT COUNT(*) FROM itemIds as B WHERE A.id >= B.id) as newId
    FROM itemIds as A
    ORDER BY newId;
END */