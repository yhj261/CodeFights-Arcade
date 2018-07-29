/*Please add ; after each select statement*/
CREATE PROCEDURE nullIntern()
BEGIN
	SELECT COUNT(id) AS number_of_nulls 
    from departments
    WHERE description RLIKE '^ *NULL *$'
    OR description RLIKE '^ *NIL *$'
    OR description RLIKE '^ *\- *$'
    OR description IS NULL;
END