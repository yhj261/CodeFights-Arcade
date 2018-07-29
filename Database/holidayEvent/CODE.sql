/*Please add ; after each select statement*/
CREATE PROCEDURE holidayEvent()
BEGIN
    SET @n = 0;
    SELECT DISTINCT buyer_name AS winners FROM
    (
        SELECT buyer_name,
        @n := @n + 1 AS row_num
        FROM purchases
    ) r
    WHERE MOD(row_num, 4) = 0
    ORDER BY winners;
END