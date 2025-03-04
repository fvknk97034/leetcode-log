# 1667. Fix Names in a Table

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
  user_id,
  CONCAT (
    UPPER(SUBSTRING(name, 1, 1)),
    LOWER(SUBSTRING(name, 2, LENGTH (name)))
  ) AS name
FROM
  Users
ORDER BY
  user_id;
```
