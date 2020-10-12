-- All students in a cohort

SELECT COUNT(*)
FROM students
WHERE cohort_id IN (1,2,3);