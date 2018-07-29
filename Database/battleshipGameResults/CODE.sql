/*Please add ; after each select statement*/
CREATE PROCEDURE battleshipGameResults()
BEGIN
   SELECT size,  
   SUM(shots = 0) AS undamaged,
   SUM(shots between 1 AND size - 1) AS partly_damaged,
   SUM(shots = size) AS sunk
   FROM
   (
      SELECT 
      GREATEST(bottom_right_x - upper_left_x + 1, bottom_right_y - upper_left_y + 1) AS size,
      SUM((target_x BETWEEN upper_left_x AND bottom_right_x)
      AND (target_y BETWEEN upper_left_y AND bottom_right_y)) AS shots
      FROM locations_of_ships, opponents_shots
      GROUP BY locations_of_ships.id
   ) AS ships
   GROUP BY size
   ORDER BY size;
END
