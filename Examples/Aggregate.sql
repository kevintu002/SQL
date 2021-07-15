-- Calculations performed on multiple rows of a table are called aggregates.

-- COUNT
  SELECT COUNT(*) 
  FROM fake_apps;

-- SUM
  SELECT SUM(downloads)
  FROM fake_apps;

-- MAX/MIN
  SELECT MIN(downloads)
  FROM fake_apps;

-- AVG
  SELECT AVG(downloads)
  FROM fake_apps;

