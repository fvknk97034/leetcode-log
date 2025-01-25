# 570. Managers with at Least 5 Direct Reports

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
SELECT e1.name FROM Employee e1
JOIN Employee e2 ON e1.id = e2.managerId
GROUP BY e1.id
HAVING COUNT(e1.id) >= 5;
```
