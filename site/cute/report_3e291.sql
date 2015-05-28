-- ## 3: Active Tickets by Milestone ## --

-- 
-- This report shows how to color results by priority,
-- while grouping results by milestone.
-- 
-- Last modification time, description and reporter are included as hidden fields
-- for useful RSS export.


SELECT p.value AS __color__,
   milestone||' Release' AS __group__,
   id AS ticket, summary, component, version, t.type AS type, 
   owner, status,
   time AS created,
   changetime AS _changetime, description AS _description,
   reporter AS _reporter
  FROM ticket t
  LEFT JOIN enum p ON p.name = t.priority AND p.type = 'priority'
  WHERE status <> 'closed' 
  ORDER BY (milestone IS NULL),milestone, p.value, t.type, time
