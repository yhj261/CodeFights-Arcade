/*Please add ; after each select statement*/
CREATE PROCEDURE mostExpensive()
BEGIN
	SELECT MIN(name) AS name
    FROM Products
    WHERE (price * quantity) = (SELECT MAX(price * quantity) FROM Products);
END