# 1075. Project Employees I

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
  p.project_id,
  ROUND(AVG(e.experience_years), 2) AS average_years
FROM
  Project p
  JOIN Employee e USING (employee_id)
GROUP BY
  p.project_id;
```
