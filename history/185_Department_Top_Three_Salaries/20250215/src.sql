SELECT
  d.name AS Department,
  DepartmentSalaryRank.name AS Employee,
  DepartmentSalaryRank.salary AS Salary
FROM
  (
    SELECT
      name,
      salary,
      departmentId,
      DENSE_RANK() OVER (
        PARTITION BY
          departmentId
        ORDER BY
          salary DESC
      ) AS denseRank
    FROM
      Employee
  ) DepartmentSalaryRank
  JOIN Department d ON d.id = DepartmentSalaryRank.departmentId
WHERE
  DepartmentSalaryRank.denseRank <= 3;
