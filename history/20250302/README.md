# 176. Second Highest Salary

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
  (
    SELECT DISTINCT
      salary
    FROM
      Employee
    ORDER BY
      salary DESC
    LIMIT
      1
    OFFSET
      1
  ) AS SecondHighestSalary;
```
