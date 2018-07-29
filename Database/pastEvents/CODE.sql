/*Please add ; after each select statement*/
CREATE PROCEDURE pastEvents()
BEGIN
    SELECT name, event_date
    FROM Events
    HAVING (event_date != (SELECT MAX(event_date) FROM Events))
    AND (event_date >= ((SELECT MAX(event_date) FROM Events) - INTERVAL 7 DAY))
    ORDER BY event_date DESC;
END