/*Please add ; after each select statement*/
CREATE PROCEDURE correctIPs()
BEGIN
    SELECT *
    FROM ips
    WHERE IS_IPV4(ip)
    AND ip NOT IN ('1.1.1.1', '0.0.0.0')
    ORDER BY id;
END

/* CREATE PROCEDURE correctIPs()
BEGIN
	SELECT id, ip
    FROM ips
    WHERE (ip REGEXP '^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){2}([1-9][0-9]\.)(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$'
            OR ip REGEXP '^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}([1-9][0-9])$')
    ORDER BY id;
END */

/* CREATE PROCEDURE correctIPs()
BEGIN

SELECT *

FROM ips

WHERE IS_IPV4(ip) AND
(ip REGEXP '[0-9]{2}\.[0-9]{1,3}$' OR ip REGEXP '\.[0-9]{2}$')

ORDER BY id ASC;
	
END */