/*Please add ; after each select statement*/
CREATE PROCEDURE findTable()
BEGIN
    SELECT 
    a.TABLE_NAME AS tab_name, 
    a.COLUMN_NAME AS col_name,
    a.DATA_TYPE AS data_type
    FROM INFORMATION_SCHEMA.COLUMNS a
    WHERE a.TABLE_SCHEMA = 'ri_db'
    AND a.TABLE_NAME LIKE 'e%s'
    ORDER BY tab_name, col_name;
END