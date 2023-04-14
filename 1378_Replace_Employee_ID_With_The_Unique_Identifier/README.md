# 1378. Replace Employee ID With The Unique Identifier

## Intuition

1. Outputの`unique_id`に`NULL`を含み、`name`には`NULL`が存在しないため、左、もしくは右外部結合
2. `Employee`が全件存在するので、Employeeを駆動表ぶ
3. `id`で結合

## Approach

- `SELECT`節には`unique_id`、`name`
- `Employee`テーブルを駆動表に左外部結合
- 結合条件に`id`を使用

## Code

```SQL
SELECT unique_id, name
FROM Employees e
LEFT OUTER JOIN EmployeeUNI eu ON e.id = eu.id;
```
