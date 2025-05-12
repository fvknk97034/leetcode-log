# 511. Game Play Analysis I

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
  player_id,
  MIN(event_date) AS first_login
FROM
  Activity
GROUP BY
  player_id;
```
