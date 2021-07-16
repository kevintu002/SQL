-- JOIN
  SELECT *
  FROM orders
  JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;

  -- WHERE always goes after JOIN
  SELECT *
  FROM orders
  JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
  WHERE description = 'Fashion Magazine';


-- INNER JOIN - returns records from both tables
  SELECT COUNT(*)
  FROM newspaper;

  SELECT COUNT(*)
  FROM online;

  SELECT COUNT(*)
  FROM newspaper
  JOIN online
  ON newspaper.id = online.id;

-- LEFT JOIN - returns records from the right table matching the left table
  SELECT *
  FROM table1
  LEFT JOIN table2
    ON table1.c2 = table2.c2;

  SELECT *
    FROM newspaper
    LEFT JOIN online
    ON newspaper.id = online.id;

  SELECT *
    FROM newspaper
    LEFT JOIN online
    ON newspaper.id = online.id
    WHERE online.id IS NULL;

-- Primary keys have a few requirements:
  -- None of the values can be NULL.
  -- Each value must be unique (i.e., you can’t have two customers with the same customer_id in the customers table).
  -- A table can not have more than one primary key column.

  -- class_id is the foreign key in students
  SELECT *
  FROM classes
  JOIN students
  ON classes.id = students.class_id;

-- CROSS JOIN
  SELECT COUNT(*)
  FROM newspaper
  WHERE start_month <= 3 AND end_month >= 3;

  SELECT *
  FROM newspaper
  CROSS JOIN months;

  SELECT *
  FROM newspaper
  CROSS JOIN months
  WHERE start_month <= month AND end_month >= month;

  SELECT month,
    COUNT(*) -- AS 'subscribers'
  FROM months
  CROSS JOIN newspaper
  WHERE start_month <= month AND end_month >= month
  GROUP BY month;

-- UNION
  SELECT *
  FROM table1
  UNION
  SELECT *
  FROM table2;

  SELECT *
  FROM newspaper
  UNION
  SELECT *
  FROM online;

-- WITH
  WITH previous_results AS (
     SELECT ...
     ...
     ...
     ...
  )
  SELECT *
  FROM previous_results
  JOIN customers
    ON _____ = _____;

  WITH previous_query AS (
    SELECT customer_id,
      COUNT(subscription_id) AS 'subscriptions'
    FROM orders
    GROUP BY customer_id
  )
  SELECT customers.customer_name,
    previous_query.subscriptions
  FROM previous_query
  JOIN customers
  ON previous_query.customer_id = customers.customer_id;
