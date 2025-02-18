SELECT
  prc.product_id,
  ROUND(
    COALESCE(SUM(prc.price * us.units) / SUM(us.units), 0),
    2
  ) AS average_price
FROM
  Prices prc
  LEFT JOIN UnitsSold us ON prc.product_id = us.product_id
  AND us.purchase_date BETWEEN prc.start_date AND prc.end_date
GROUP BY
  prc.product_id;
