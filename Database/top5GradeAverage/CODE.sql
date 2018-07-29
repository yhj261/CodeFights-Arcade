/*Please add ; after each select statement*/
CREATE PROCEDURE top5AverageGrade()
BEGIN
    SELECT ROUND(AVG(5_grade), 2) AS average_grade
    FROM (
        SELECT grade AS 5_grade
        FROM students
        ORDER BY grade DESC
        LIMIT 5
    ) r;
END