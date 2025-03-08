# 1341. Movie Rating

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
  Rating AS (
    SELECT
      *
    FROM
      MovieRating mr
      JOIN Movies m USING (movie_id)
      JOIN Users u USING (user_id)
  )
(
  SELECT
    name AS results
  FROM
    Rating
  GROUP BY
    user_id
  ORDER BY
    COUNT(movie_id) DESC,
    name ASC
  LIMIT
    1
)
UNION ALL
(
  SELECT
    title AS results
  FROM
    Rating
  WHERE
    created_at BETWEEN '2020-02-01' AND '2020-02-29'
  GROUP BY
    movie_id
  ORDER BY
    AVG(rating) DESC,
    title ASC
  LIMIT
    1
);
```
