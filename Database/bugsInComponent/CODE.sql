/*Please add ; after each select statement*/
CREATE PROCEDURE bugsInComponent()
BEGIN
    SELECT Bug.title AS bug_title,
    Component.title AS component_title,
    (
        SELECT COUNT(bug_num)
        FROM BugComponent
        WHERE component_id = id
    ) AS bugs_in_component
    FROM Bug, Component, BugComponent
    WHERE Bug.num = BugComponent.bug_num
    AND Component.id = BugComponent.component_id
    AND (
        SELECT COUNT(component_id)
        FROM BugComponent
        WHERE bug_num = num
    ) > 1
    ORDER BY bugs_in_component DESC, id, num;
END