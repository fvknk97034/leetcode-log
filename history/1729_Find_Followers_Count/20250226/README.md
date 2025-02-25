# 1729. Find Followers Count

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
  user_id,
  COUNT(follower_id) AS followers_count
FROM
  Followers
GROUP BY
  user_id
ORDER BY
  user_id;
```
