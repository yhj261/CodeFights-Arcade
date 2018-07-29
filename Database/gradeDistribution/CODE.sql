/*Please add ; after each select statement*/
CREATE PROCEDURE gradeDistribution()
BEGIN
	SELECT Name, ID
    FROM Grades
    WHERE (Final > 0.5*(Midterm1+Midterm2)) | (0.5*Final > 0.25*(Midterm1+Midterm2))
    ORDER BY Substring(Name, 1, 3), ID;
END