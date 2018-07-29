/*Please add ; after each select statement*/
CREATE PROCEDURE driversInfo()
BEGIN
    SELECT summary
    FROM
    (
        SELECT 
        CONCAT(' Total miles driven by all drivers combined: ', SUM(miles_logged)) AS summary,
        0 AS collect
        FROM inspections
        UNION
        SELECT 
        CONCAT(' Name: ', driver_name, '; number of inspections: ', COUNT(*), '; miles driven: ', SUM(miles_logged)) AS summary,
        driver_name
        FROM inspections
        GROUP BY driver_name
        UNION
        SELECT 
        CONCAT('  date: ', date, '; miles covered: ', miles_logged) AS summary,
        CONCAT(driver_name, date)
        FROM inspections
    ) x
    ORDER BY collect;
END