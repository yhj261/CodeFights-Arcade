/*Please add ; after each select statement*/
CREATE PROCEDURE salaryDifference()
BEGIN
    SELECT 
    COALESCE(
        SUM(salary = max_salary)*max_salary 
        - SUM(salary = min_salary)*min_salary,
        0
        ) AS difference
    FROM employees, (
        SELECT MAX(salary) AS max_salary,
        MIN(salary) AS min_salary
        FROM employees
    ) r;
END