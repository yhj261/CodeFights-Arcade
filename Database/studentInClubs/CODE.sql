CREATE PROCEDURE studentsInClubs()
    SELECT * FROM students
    WHERE EXISTS (
        SELECT id FROM clubs WHERE id = club_id
    )
    ORDER BY students.id;
