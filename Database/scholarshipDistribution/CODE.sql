/*Please add ; after each select statement*/
CREATE PROCEDURE scholarshipsDistribution()
BEGIN
    SELECT DISTINCT candidate_id AS student_id
    FROM candidates
    WHERE candidate_id NOT IN (SELECT student_id FROM detentions)
    ORDER BY candidate_id;
END