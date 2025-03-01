WITH
  LocationPolicy AS (
    SELECT
      pid,
      tiv_2015,
      tiv_2016
    FROM
      Insurance
    GROUP BY
      lat,
      lon
    HAVING
      COUNT(lat) = 1
  ),
  Policyholder AS (
    SELECT DISTINCT
      lp.pid,
      lp.tiv_2016
    FROM
      LocationPolicy lp
      JOIN Insurance i ON i.tiv_2015 = lp.tiv_2015
      AND i.pid <> lp.pid
  )
SELECT
  ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM
  Policyholder;
