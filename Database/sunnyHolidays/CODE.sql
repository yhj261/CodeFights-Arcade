/*Please add ; after each select statement*/
CREATE PROCEDURE sunnyHolidays()
BEGIN
    SELECT holiday_date AS ski_date FROM holidays
    WHERE holiday_date IN (SELECT * FROM weather);
END