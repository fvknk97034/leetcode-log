SELECT
  p1.product_id,
  COALESCE(price, 10) AS price
FROM
  Products p1
  LEFT JOIN (
    SELECT
      p2.product_id,
      p2.new_price AS price
    FROM
      Products p2
      JOIN (
        SELECT DISTINCT
          product_id,
          MAX(change_date) AS change_date
        FROM
          Products
        WHERE
          change_date <= '2019-08-16'
        GROUP BY
          product_id
      ) AS p3 ON p3.product_id = p2.product_id
      AND p3.change_date = p2.change_date
  ) p2p3 ON p1.product_id = p2p3.product_id
GROUP BY
  p1.product_id
