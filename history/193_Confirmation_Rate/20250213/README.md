# 1934. Confirmation Rate

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
  s.user_id,
  ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) / COUNT(*), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
  ON c.user_id = s.user_id
GROUP BY s.user_id
;
```
