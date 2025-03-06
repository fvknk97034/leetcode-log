DELETE FROM Person
WHERE
  id NOT IN (
    SELECT
      MIN(id)
    FROM
      (
        SELECT
          *
        FROM
          Person
      ) tmp
    GROUP BY
      email
  );
