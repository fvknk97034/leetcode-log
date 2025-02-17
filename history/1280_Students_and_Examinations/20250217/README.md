# 1280. Students and Examinations

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
  st.student_id,
  st.student_name,
  sb.subject_name,
  COUNT(e.student_id) AS attended_exams
FROM
  Students st
  CROSS JOIN Subjects sb
  LEFT JOIN Examinations e ON e.student_id = st.student_id
  AND e.subject_name = sb.subject_name
GROUP BY
  st.student_id,
  sb.subject_name
ORDER BY
  st.student_id,
  sb.subject_name;
```
