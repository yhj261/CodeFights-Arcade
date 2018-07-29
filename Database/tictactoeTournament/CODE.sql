/*Please add ; after each select statement*/
CREATE PROCEDURE tictactoeTournament()
BEGIN
    DROP TABLE IF EXISTS winners;
    CREATE TABLE winners AS
        SELECT
            name_naughts,
            name_crosses, 
            CASE
            WHEN BOARD LIKE 'XXX______' THEN 1
            WHEN BOARD LIKE '___XXX___' THEN 1
            WHEN BOARD LIKE '______XXX' THEN 1
            WHEN BOARD LIKE 'X__X__X__' THEN 1
            WHEN BOARD LIKE '_X__X__X_' THEN 1
            WHEN BOARD LIKE '__X__X__X' THEN 1
            WHEN BOARD LIKE 'X___X___X' THEN 1
            WHEN BOARD LIKE '__X_X_X__' THEN 1
            WHEN BOARD LIKE 'OOO______' THEN -1
            WHEN BOARD LIKE '___OOO___' THEN -1
            WHEN BOARD LIKE '______OOO' THEN -1
            WHEN BOARD LIKE 'O__O__O__' THEN -1
            WHEN BOARD LIKE '_O__O__O_' THEN -1
            WHEN BOARD LIKE '__O__O__O' THEN -1
            WHEN BOARD LIKE 'O___O___O' THEN -1
            WHEN BOARD LIKE '__O_O_O__' THEN -1
            ELSE 0
            END winner
        FROM results;

    SELECT
        name,
        2 * SUM(won) + SUM(draw) points,
        COUNT(*) played,
        SUM(won) won,
        SUM(draw) draw,
        SUM(lost) lost
    FROM (
        SELECT
            name_naughts name,
            winner = -1 won,
            winner = 0 draw,
            winner = 1 lost
        FROM winners
        
        UNION ALL
        
        SELECT
            name_crosses name,
            winner = 1 won,
            winner = 0 draw,
            winner = -1 lost
        FROM winners
    )x
    GROUP BY name
    ORDER BY points DESC, played ASC, won DESC, name ASC;
END
