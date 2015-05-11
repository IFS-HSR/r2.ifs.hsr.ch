-- ## 9: Most recently updated  ## --

-- lastupdated is the number of days since last changed (based on the parameter changetime)
-- 
-- (the original motive was to see who inserted recently the new comments to the tickets. changetime is not updated when you just attach an attachment. This is a known issue)

SELECT p.value AS __color__,
   id AS ticket, summary, component, version, milestone, t.type AS type, 
   owner, status,
   time AS created, round(julianday('now') - julianday(changetime, 'unixepoch')) AS lastUpdated, description AS _description, reporter AS _reporter
  FROM ticket t
  LEFT JOIN enum p ON p.name = t.priority AND p.type = 'priority'
  ORDER BY lastUpdated asc,p.value