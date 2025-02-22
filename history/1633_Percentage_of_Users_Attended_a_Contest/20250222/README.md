# 1633. Percentage of Users Attended a Contest

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
  r.contest_id,
  ROUND(
    COUNT(r.user_id) / (
      SELECT
        COUNT(user_id)
      FROM
        Users
    ) * 100,
    2
  ) AS percentage
FROM
  Users u
  JOIN Register r USING (user_id)
GROUP BY
  r.contest_id
ORDER BY
  percentage DESC,
  r.contest_id;
```
