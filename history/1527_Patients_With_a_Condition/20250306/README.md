# 1527. Patients With a Condition

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
  *
FROM
  Patients
WHERE
  conditions LIKE 'DIAB1%'
  OR conditions LIKE '% DIAB1%';
```
