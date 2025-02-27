# 1789. Primary Department for Each Employee

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
  e1.employee_id,
  e1.department_id
FROM
  Employee e1
  LEFT JOIN (
    SELECT
      employee_id
    FROM
      Employee
    GROUP BY
      employee_id
    HAVING
      COUNT(department_id) = 1
  ) e2 ON e1.employee_id = e2.employee_id
WHERE
  primary_flag = 'Y'
  OR e2.employee_id IS NOT NULL;
```
