# 1978. Employees Whose Manager Left the Company

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
SELECT e1.employee_id
FROM Employees e1
LEFT JOIN Employees e2
  ON e1.manager_id = e2.employee_id
WHERE e1.manager_id IS NOT NULL
AND e1.salary < 30000
AND e2.employee_id IS NULL
ORDER BY e1.employee_id
;
```
