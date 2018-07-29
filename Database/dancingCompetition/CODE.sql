/*Please add ; after each select statement*/
CREATE PROCEDURE dancingCompetition()
BEGIN
    SELECT * FROM scores
    HAVING 
    ((first_criterion BETWEEN (SELECT MIN(first_criterion)+1 FROM scores) 
                    AND (SELECT MAX(first_criterion)-1 FROM scores))
    AND (second_criterion BETWEEN (SELECT MIN(second_criterion)+1 FROM scores) 
                    AND (SELECT MAX(second_criterion)-1 FROM scores)))
    OR ((third_criterion BETWEEN (SELECT MIN(third_criterion)+1 FROM scores) 
                    AND (SELECT MAX(third_criterion)-1 FROM scores))
    AND (second_criterion BETWEEN (SELECT MIN(second_criterion)+1 FROM scores) 
                    AND (SELECT MAX(second_criterion)-1 FROM scores)))
    OR ((first_criterion BETWEEN (SELECT MIN(first_criterion)+1 FROM scores) 
                    AND (SELECT MAX(first_criterion)-1 FROM scores))
    AND (third_criterion BETWEEN (SELECT MIN(third_criterion)+1 FROM scores) 
                    AND (SELECT MAX(third_criterion)-1 FROM scores)))
    ;
END