SELECT
  id,
  COUNT(*) AS num
FROM (
  SELECT
    accepter_id AS id,
    requester_id AS target_id
  FROM
    RequestAccepted
  UNION
  SELECT
    requester_id AS id,
    accepter_id AS target_id
  FROM
    RequestAccepted
) Association
GROUP BY
  id
ORDER BY
  num DESC
LIMIT
  1;
