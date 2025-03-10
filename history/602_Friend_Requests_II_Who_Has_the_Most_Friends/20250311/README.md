# 602. Friend Requests II: Who Has the Most Friends

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```sql
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
```
