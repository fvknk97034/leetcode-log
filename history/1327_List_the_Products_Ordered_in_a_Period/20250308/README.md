# 1327. List the Products Ordered in a Period

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
  product_name,
  SUM(unit) AS unit
FROM
  Products p
  JOIN Orders o USING (product_id)
WHERE
  order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY
  p.product_id
HAVING
  SUM(unit) >= 100;
```
