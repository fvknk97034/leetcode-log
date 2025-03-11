# 619. Biggest Single Number

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
  MAX(num) AS num
FROM (
  SELECT
    num
  FROM
    MyNumbers
  GROUP BY
    num
  HAVING
    COUNT(num) = 1
) UniqueNumbers;
```
