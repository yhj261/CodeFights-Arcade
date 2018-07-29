
/*Please add ; after each select statement*/
CREATE PROCEDURE giftPackaging()
BEGIN
    SELECT its_package AS package_type,
    COUNT(gift_id) AS number
    FROM
    (
        SELECT gifts.id AS 'gift_id', 
        (
            SELECT packages.package_type
            FROM packages
            WHERE gifts.length <= packages.length
            AND gifts.width <= packages.width
            AND gifts.height <= packages.height
            ORDER BY length * width * height
            LIMIT 1
        ) AS 'its_package'
        FROM gifts
    ) x
    GROUP BY its_package;
END