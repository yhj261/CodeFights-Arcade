/*Please add ; after each select statement*/
CREATE PROCEDURE importantEvents()
BEGIN
    SELECT *
    FROM events
    ORDER BY WEEKDAY(event_date), 
    participants DESC,
    event_date;
END