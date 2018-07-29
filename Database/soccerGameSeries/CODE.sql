/*Please add ; after each select statement*/
CREATE PROCEDURE soccerGameSeries()
BEGIN
    SELECT
    CASE
        WHEN 
        (SELECT COUNT(first_team_score) 
         FROM scores
         WHERE (first_team_score > second_team_score)) > 
        (SELECT COUNT(second_team_score) 
         FROM scores
         WHERE (second_team_score > first_team_score))
        THEN '1'
        
        WHEN
        (SELECT COUNT(first_team_score) 
         FROM scores
         WHERE (first_team_score > second_team_score)) < 
        (SELECT COUNT(second_team_score) 
         FROM scores
         WHERE (second_team_score > first_team_score))
        THEN '2'
        
        ELSE
            CASE
                WHEN (SELECT SUM(first_team_score) > SUM(second_team_score) 
                      FROM scores) 
                THEN '1'
                WHEN (SELECT SUM(first_team_score) < SUM(second_team_score) 
                      FROM scores) 
                THEN '2'
                ELSE
                    CASE
                        WHEN ((SELECT SUM(first_team_score) 
                            FROM scores 
                            WHERE match_host = 2) > 
                            (SELECT SUM(second_team_score) 
                            FROM scores WHERE match_host = 1)) 
                        THEN '1'
                        
                        WHEN ((SELECT SUM(first_team_score) 
                            FROM scores 
                            WHERE match_host = 2) < 
                            (SELECT SUM(second_team_score) 
                            FROM scores 
                            WHERE match_host = 1))
                        THEN '2'
                        
                        ELSE '0'
                    END
            END
    END AS winner;
END