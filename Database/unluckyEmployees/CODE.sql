/*Please add ; after each select statement*/
CREATE PROCEDURE unluckyEmployees()
BEGIN
    SET @n = 0;
    SELECT * FROM 
    (
        SELECT dep.name AS dep_name, 
        IFNULL(COUNT(emp.id), 0) AS emp_number,
        IFNULL(SUM(emp.salary), 0) AS total_salary
        FROM Department dep 
        LEFT JOIN Employee emp
        ON emp.department = dep.id
        GROUP BY dep.id
        HAVING emp_number < 6
        ORDER BY total_salary DESC, emp_number DESC, dep.id
    ) x
    WHERE MOD(@n := @n + 1, 2) = 1;
END
