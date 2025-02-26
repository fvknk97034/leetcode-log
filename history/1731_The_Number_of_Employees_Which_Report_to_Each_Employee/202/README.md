# 1731. The Number of Employees Which Report to Each Employee

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
  m.employee_id,
  m.name,
  COUNT(e.employee_id) AS reports_count,
  ROUND(AVG(e.age), 0) AS average_age
FROM
  Employees e
  JOIN Employees m ON m.employee_id = e.reports_to
GROUP BY
  m.employee_id
ORDER BY
  m.employee_id;
```
