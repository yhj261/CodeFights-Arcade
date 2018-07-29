/*Please add ; after each select statement*/
CREATE PROCEDURE booksCatalogs()
BEGIN
	SELECT SUBSTRING(xml_doc, LOCATE('<author>', xml_doc) + 8, (LOCATE('</author>', xml_doc) - LOCATE('<author>', xml_doc) - 8)) AS author
    FROM catalogs
    ORDER BY author;
END

/* CREATE PROCEDURE booksCatalogs()
BEGIN
    SELECT ExtractValue(xml_doc, '/descendant-or-self::author[1]') AS author
    FROM catalogs
    GROUP BY author
    ORDER BY author;
END */
