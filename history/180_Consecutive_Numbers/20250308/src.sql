SELECT DISTINCT
  num AS ConsecutiveNums
FROM
  (
    SELECT
      num,
      LAG (num, 1) OVER () AS before_num,
      LEAD (num, 1) OVER () AS after_num
    FROM
      Logs
  ) Nums
WHERE
  before_num = num
  AND after_num = num;
