# 196. Delete Duplicate Emails

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
DELETE FROM Person
WHERE
  id NOT IN (
    SELECT
      MIN(id)
    FROM
      (
        SELECT
          *
        FROM
          Person
      ) tmp
    GROUP BY
      email
  );
```
