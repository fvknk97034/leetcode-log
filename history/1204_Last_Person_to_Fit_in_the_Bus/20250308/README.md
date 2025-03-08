# 1204. Last Person to Fit in the Bus

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
  q2.person_name
FROM
  Queue q1
  JOIN Queue q2 ON q1.turn <= q2.turn
GROUP BY
  q2.turn
HAVING
  SUM(q1.weight) <= 1000
ORDER BY
  SUM(q1.weight) DESC
LIMIT
  1;
```
