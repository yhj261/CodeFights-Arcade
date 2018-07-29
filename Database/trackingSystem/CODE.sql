/*Please add ; after each select statement*/
CREATE PROCEDURE trackingSystem()
BEGIN
    SELECT 
    t1.anonymous_id AS anonym_id, 
    t1.event_name AS last_null,
    t3.event_name AS first_notnull
    FROM tracks t1
    JOIN (
        SELECT anonymous_id, MAX(received_at) AS last_null_t
        FROM tracks
        WHERE user_id IS NULL
        GROUP BY anonymous_id
    ) t2 
    ON t1.anonymous_id = t2.anonymous_id
    AND t1.received_at = t2.last_null_t
    LEFT JOIN (
        SELECT t5.anonymous_id, t5.event_name
        FROM tracks t5
        JOIN
        (
            SELECT anonymous_id, MIN(received_at) AS first_notnull_t
            FROM tracks
            WHERE user_id IS NOT NULL
            GROUP BY anonymous_id
        ) t4
        ON t5.anonymous_id = t4.anonymous_id
        AND t5.received_at = t4.first_notnull_t
    ) t3
    ON t1.anonymous_id = t3.anonymous_id;
END

/* Please add ; after each select statement
CREATE PROCEDURE trackingSystem()
BEGIN
	SELECT DISTINCT anonymous_id AS 'anonym_id',
    (
        SELECT event_name 
        FROM tracks b 
        WHERE b.anonymous_id = a.anonymous_id 
        AND b.user_id IS NULL 
        ORDER BY received_at DESC LIMIT 1
    ) as 'last_null',
    (
        SELECT event_name 
        FROM tracks b 
        WHERE b.anonymous_id = a.anonymous_id 
        AND b.user_id IS NOT NULL 
        ORDER BY received_at ASC LIMIT 1
    ) as 'first_notnull'
    FROM tracks a 
    ORDER BY a.anonymous_id;
END */