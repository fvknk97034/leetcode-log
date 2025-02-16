# 1070. Product Sales Analysis III

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
  product_id,
  year AS first_year,
  quantity,
  price
FROM
  Sales
WHERE
  (product_id, year) IN (
    SELECT
      product_id,
      MIN(year)
    FROM
      Sales
    GROUP BY
      product_id
  );
```
