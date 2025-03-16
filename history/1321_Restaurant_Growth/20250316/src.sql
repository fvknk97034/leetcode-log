SELECT
  *
FROM (
  SELECT DISTINCT
    visited_on,
    SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS amount,
    ROUND(SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) / 7, 2) AS average_amount
  FROM
    Customer
) Amount
WHERE
  visited_on >= (SELECT DATE_ADD(MIN(STR_TO_DATE(visited_on, '%Y-%m-%d')), INTERVAL 6 DAY) FROM Customer);
