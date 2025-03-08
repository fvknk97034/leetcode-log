SELECT
  q2.person_name
FROM
  Queue q1
  JOIN Queue q2 ON q1.turn <= q2.turn
GROUP BY
  q2.turn
HAVING
  SUM(q1.weight) <= 1000
ORDER BY
  SUM(q1.weight) DESC
LIMIT
  1;
