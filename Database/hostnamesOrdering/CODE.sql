CREATE PROCEDURE hostnamesOrdering()
BEGIN
    SELECT id, hostname FROM hostnames
    GROUP BY CONCAT(
        SUBSTRING_INDEX(
            CONCAT('...',hostname),'.',-1),
            ' ', SUBSTRING_INDEX(CONCAT('...',hostname),'.',-2),
            ' ', hostname);
END


/***** This solution does not work because of codefights' implementation bug *****/ 
/* Please add ; after each select statement
CREATE PROCEDURE hostnamesOrdering()
BEGIN
    SELECT id, hostname
    FROM hostnames
    ORDER BY
        SUBSTRING_INDEX(CONCAT('...', hostname), '.', -1), 
        SUBSTRING_INDEX(SUBSTRING_INDEX(CONCAT('...', hostname), '.', -2), '.', 1),
        SUBSTRING_INDEX(SUBSTRING_INDEX(CONCAT('...', hostname), '.', -3), '.', 1);
END */