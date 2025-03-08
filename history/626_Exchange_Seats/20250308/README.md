# 626. Exchange Seats

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
  CASE
    WHEN id mod 2 = 0 THEN id - 1
    WHEN id = (
      SELECT
        MAX(id)
      FROM
        Seat
    ) THEN id
    ELSE id + 1
  END AS id,
  student
FROM
  Seat
ORDER BY
  id;
```
