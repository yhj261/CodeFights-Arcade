CREATE PROCEDURE combinationLock()
BEGIN
	SELECT ROUND(EXP(sum(LOG(LENGTH(characters))))) AS combinations FROM discs;
END

/* CREATE PROCEDURE combinationLock()
BEGIN
    SELECT
        @c := @c * LENGTH(characters) AS `combinations`
    FROM
        discs,
        (SELECT @c := 1) AS counter
    ORDER BY
        `combinations` DESC
    LIMIT
        1;
END */
