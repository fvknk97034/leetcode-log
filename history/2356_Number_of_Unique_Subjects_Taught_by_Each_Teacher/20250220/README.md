# 2356. Number of Unique Subjects Taught by Each Teacher

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
  teacher_id,
  COUNT(DISTINCT subject_id) AS cnt
FROM
  Teacher
GROUP BY
  teacher_id;
```
