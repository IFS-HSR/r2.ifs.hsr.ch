-- ## 8: Active Tickets, Mine first ## --

-- 
--  * List all active tickets by priority.
--  * Show all tickets owned by the logged in user in a group first.


SELECT p.value AS __color__,
   (CASE owner 
     WHEN '$USER' THEN 'My Tickets' 
     ELSE 'Active Tickets' 
    END) AS __group__,
   id AS ticket, summary, component, version, milestone, t.type AS type, 
   owner, status,
   time AS created,
   changetime AS _changetime, description AS _description,
   reporter AS _reporter
  FROM ticket t
  LEFT JOIN enum p ON p.name = t.priority AND p.type = 'priority'
  WHERE status <> 'closed' 
  ORDER BY (owner = '$USER') DESC, p.value, milestone, t.type, time
