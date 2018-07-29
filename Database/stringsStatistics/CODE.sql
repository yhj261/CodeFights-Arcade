/*Please add ; after each SELECT statement*/
CREATE PROCEDURE stringsStatistics()
BEGIN
	DROP TABLE IF EXISTS temp;
     CREATE temporary TABLE temp(
          str varchar(255) default NULL,
          letter varchar(55) default NULL,
          cnt int default NULL
          );

     INSERT INTO temp
        SELECT str, 'a', LENGTH(str) - LENGTH(REPLACE(str, 'a', '')) AS `number` FROM strs
          UNION
        SELECT str, 'b', LENGTH(str) - LENGTH(REPLACE(str, 'b', '')) AS `number` FROM strs
          UNION
        SELECT str, 'c', LENGTH(str) - LENGTH(REPLACE(str, 'c', '')) AS `number` FROM strs
          UNION
        SELECT str, 'd', LENGTH(str) - LENGTH(REPLACE(str, 'd', '')) AS `number` FROM strs
          UNION 
        SELECT str, 'e', LENGTH(str) - LENGTH(REPLACE(str, 'e', '')) AS `number` FROM strs
          UNION
        SELECT str, 'f', LENGTH(str) - LENGTH(REPLACE(str, 'f', '')) AS `number` FROM strs
          UNION
        SELECT str, 'g', LENGTH(str) - LENGTH(REPLACE(str, 'g', '')) AS `number` FROM strs
          UNION
        SELECT str, 'h', LENGTH(str) - LENGTH(REPLACE(str, 'h', '')) AS `number` FROM strs
          UNION
        SELECT str, 'i', LENGTH(str) - LENGTH(REPLACE(str, 'i', '')) AS `number` FROM strs
          UNION
        SELECT str, 'j', LENGTH(str) - LENGTH(REPLACE(str, 'j', '')) AS `number` FROM strs
          UNION
        SELECT str, 'k', LENGTH(str) - LENGTH(REPLACE(str, 'k', '')) AS `number` FROM strs
          UNION
        SELECT str, 'l', LENGTH(str) - LENGTH(REPLACE(str, 'l', '')) AS `number` FROM strs
          UNION
        SELECT str, 'm', LENGTH(str) - LENGTH(REPLACE(str, 'm', '')) AS `number` FROM strs
          UNION
        SELECT str, 'n', LENGTH(str) - LENGTH(REPLACE(str, 'n', '')) AS `number` FROM strs          UNION
        SELECT str, 'o', LENGTH(str) - LENGTH(REPLACE(str, 'o', '')) AS `number` FROM strs
          UNION
        SELECT str, 'p', LENGTH(str) - LENGTH(REPLACE(str, 'p', '')) AS `number` FROM strs          UNION
        SELECT str, 'q', LENGTH(str) - LENGTH(REPLACE(str, 'q', '')) AS `number` FROM strs
          UNION
        SELECT str, 'r', LENGTH(str) - LENGTH(REPLACE(str, 'r', '')) AS `number` FROM strs
          UNION
        SELECT str, 's', LENGTH(str) - LENGTH(REPLACE(str, 's', '')) AS `number` FROM strs
          UNION
        SELECT str, 't', LENGTH(str) - LENGTH(REPLACE(str, 't', '')) AS `number` FROM strs
          UNION
        SELECT str, 'u', LENGTH(str) - LENGTH(REPLACE(str, 'u', '')) AS `number` FROM strs
          UNION
        SELECT str, 'v', LENGTH(str) - LENGTH(REPLACE(str, 'v', '')) AS `number` FROM strs
          UNION
        SELECT str, 'w', LENGTH(str) - LENGTH(REPLACE(str, 'w', '')) AS `number` FROM strs
          UNION
        SELECT str, 'x', LENGTH(str) - LENGTH(REPLACE(str, 'x', '')) AS `number` FROM strs
          UNION
        SELECT str, 'y', LENGTH(str) - LENGTH(REPLACE(str, 'y', '')) AS `number` FROM strs
          UNION
        SELECT str, 'z', LENGTH(str) - LENGTH(REPLACE(str, 'z', '')) AS `number` FROM strs

;



     DROP TABLE IF EXISTS total;
     CREATE TABLE total (letter varchar(255) default NULL, total int default NULL);    
     INSERT INTO total
     SELECT letter, SUM(cnt) AS total
     FROM temp
     GROUP BY letter
     HAVING SUM(cnt) >= 1;

     DROP TABLE IF EXISTS occurrence;
     CREATE TABLE occurrence (letter varchar(255) default NULL, number int default NULL);    

     INSERT INTO occurrence
     SELECT DISTINCT letter, count(letter)
     FROM temp
     WHERE cnt > 0
     GROUP BY letter;
     
     
     DROP TABLE IF EXISTS max_occurrence;
     CREATE TABLE max_occurrence (letter varchar(255) default NULL, number int default NULL);

     INSERT INTO max_occurrence
     SELECT letter, max(cnt) AS max_occurence
     FROM temp 
     WHERE cnt > 0
     GROUP BY letter;

     DROP TABLE IF EXISTS max_occurrence_reached;
     CREATE TABLE max_occurrence_reached (letter varchar(255) default NULL, number int default NULL);
     
     INSERT INTO max_occurrence_reached
     SELECT tt.letter, COUNT(*) AS mor
     FROM (
          SELECT t.letter, t.cnt
          FROM temp t
          JOIN max_occurrence mo
          ON mo.letter = t.letter AND mo.number = t.cnt
     ) tt
     GROUP BY tt.letter;
     

     SELECT tt.letter, tt.total, o.number AS occurrence, mo.number AS max_occurrence, mor.number AS max_occurrence_reached
     FROM total tt
     join occurrence o
     ON o.letter=tt.letter
     JOIN max_occurrence mo
     on tt.letter=mo.letter
     JOIN max_occurrence_reached mor
     ON tt.letter=mor.letter
     ORDER BY tt.letter;
END
