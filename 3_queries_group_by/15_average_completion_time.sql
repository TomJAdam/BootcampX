-- Average completion time for currently enrolled students

SELECT students.name as student, AVG(assignment_submissions.duration) as avg_assignment_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY avg_assignment_duration DESC