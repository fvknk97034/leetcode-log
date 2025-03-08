# 180. Consecutive Numbers

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
SELECT DISTINCT
  num AS ConsecutiveNums
FROM
  (
    SELECT
      num,
      LAG (num, 1) OVER () AS before_num,
      LEAD (num, 1) OVER () AS after_num
    FROM
      Logs
  ) Nums
WHERE
  before_num = num
  AND after_num = num;
```
