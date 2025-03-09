# 1907. Count Salary Categories

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
WITH
  HighSalary AS (
    SELECT
      'High Salary' AS category,
      COUNT(*) AS accounts_count
    FROM
      Accounts
    WHERE
      income > 50000
  ),
  LowSalary AS (
    SELECT
      'Low Salary' AS category,
      COUNT(*) AS accounts_count
    FROM
      Accounts
    WHERE
      income < 20000
  ),
  AverageSalary AS (
    SELECT
      'Average Salary' AS category,
      COUNT(*) AS accounts_count
    FROM
      Accounts
    WHERE
      income BETWEEN 20000 AND 50000
  )
SELECT
  *
FROM
  HighSalary
UNION
SELECT
  *
FROM
  LowSalary
UNION
SELECT
  *
FROM
  AverageSalary;
```
