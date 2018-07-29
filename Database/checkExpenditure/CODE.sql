/*Please add ; after each select statement*/
CREATE PROCEDURE checkExpenditure()
BEGIN
    SELECT allowable_expenditure.id,
    CASE
        WHEN r.exp > allowable_expenditure.value
        THEN r.exp - allowable_expenditure.value
        ELSE 0
    END AS loss
    FROM allowable_expenditure
    JOIN (
        SELECT allowable_expenditure.id, 
        SUM(expenditure_plan.expenditure_sum) AS exp,
        WEEK(monday_date)
        FROM allowable_expenditure
        JOIN expenditure_plan
        ON WEEK(monday_date) BETWEEN left_bound AND right_bound
        GROUP BY id
    ) r ON allowable_expenditure.id = r.id
    ORDER BY id;
END

/* CREATE PROCEDURE checkExpenditure()
BEGIN
    SELECT id, -LEAST(0, value - sum(expenditure_sum)) loss
    FROM
        expenditure_plan,
        allowable_expenditure
    WHERE WEEK(monday_date) BETWEEN left_bound AND right_bound
    GROUP BY 1
END */
