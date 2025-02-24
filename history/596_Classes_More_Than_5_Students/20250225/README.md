# 596. Classes More Than 5 Students

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
  class
From
  Courses
GROUP BY
  class
HAVING
  COUNT(student) >= 5;
```
