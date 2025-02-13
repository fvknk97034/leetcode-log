# 1193. Monthly Transactions I

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
  DATE_FORMAT(trans_date,'%Y-%m') AS month,
  country,
  COUNT(id) AS trans_count,
  SUM(state = 'approved') AS approved_count,
  SUM(amount) AS trans_total_amount,
  SUM(CASE state WHEN 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month, country
;
```
