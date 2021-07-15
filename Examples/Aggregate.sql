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

-- ROUND rounds to number of decimal places
  SELECT name, ROUND(price, 0)
  FROM fake_apps;

  SELECT ROUND(AVG(price), 2)
  FROM fake_apps;

-- GROUP BY (goes last)
  SELECT price, COUNT(*) 
  FROM fake_apps
  WHERE downloads > 20000
  GROUP BY price;

  SELECT category, 
    price,
    AVG(downloads)
  FROM fake_apps
  GROUP BY 1, 2;

-- HAVING (always comes after GROUP BY, but before ORDER BY and LIMIT)
  SELECT price, 
    ROUND(AVG(downloads)),
    COUNT(*)
  FROM fake_apps
  GROUP BY price
  HAVING COUNT(*) > 10;
