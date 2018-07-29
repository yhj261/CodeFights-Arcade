DROP PROCEDURE IF EXISTS orderAnalytics;
CREATE PROCEDURE orderAnalytics()
BEGIN

    CREATE OR REPLACE VIEW order_analytics AS
    SELECT id, 
    YEAR(order_date) AS year,
    QUARTER(order_date) AS quarter,
    type,
    SUM(price*quantity) AS total_price
    FROM orders
    GROUP BY type, quarter, year;

    SELECT *
    FROM order_analytics
    ORDER by id;
END;
