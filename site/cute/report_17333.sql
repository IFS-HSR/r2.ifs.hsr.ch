-- ## 1: Active Tickets ## --

-- 
--  * List all active tickets by priority.
--  * Color each row based on priority.


SELECT p.value AS __color__,
   id AS ticket, summary, component, version, milestone, t.type AS type, 
   owner, status,
   time AS created,
   changetime AS _changetime, description AS _description,
   reporter AS _reporter
  FROM ticket t
  LEFT JOIN enum p ON p.name = t.priority AND p.type = 'priority'
  WHERE status <> 'closed' 
  ORDER BY p.value, milestone, t.type, time
