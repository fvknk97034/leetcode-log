SELECT
  s.name
FROM SalesPerson s
LEFT JOIN Orders o
  ON s.sales_id = o.sales_id
  AND o.com_id = (
    SELECT
      com_id
    FROM Company
    WHERE
      name = 'RED'
  )
WHERE o.com_id IS NULL
;
