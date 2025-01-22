# 1068. Product Sales Analysis I

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
  p.product_name,
  s.year,
  s.price
FROM product p
JOIN sales s
  ON s.product_id = p.product_id
;
```
