/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation2()
BEGIN
	SELECT id, name, surname 
    FROM Suspect
    WHERE (height <= 170)
    OR (Substring(name, 1, 1) != 'B')
    OR (surname NOT LIKE 'Gre_n');
END