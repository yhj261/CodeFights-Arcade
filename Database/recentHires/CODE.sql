/*Please add ; after each select statement*/
CREATE PROCEDURE recentHires()
BEGIN
    SELECT name AS names FROM
    (
        SELECT name, 'pr' AS dep
        FROM (
            SELECT name FROM pr_department
            ORDER BY date_joined DESC
            LIMIT 5
        ) pr1
        UNION ALL
        SELECT name, 'it' AS dep
        FROM (
            SELECT name FROM it_department
            ORDER BY date_joined DESC
            LIMIT 5
        ) it1
        UNION ALL
        SELECT name, 'sales' as dep
        FROM (
            SELECT name FROM sales_department
            ORDER BY date_joined DESC
            LIMIT 5
        ) s1
    ) r
    ORDER BY FIELD(dep, 'pr', 'it', 'sales'), name;
END