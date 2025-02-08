# 607. Sales Person

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
  s.name
FROM SalesPerson s
LEFT JOIN Orders o
  ON s.sales_id = o.sales_id
  AND o.com_id = (
    SELECT
      com_id
    FROM Company
    WHERE
      name = 'RED'
  )
WHERE o.com_id IS NULL
;
```
