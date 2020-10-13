-- Total assistance requests for a student

SELECT count(students.*) as total_requests, name
FROM students
JOIN assistance_requests ON student_id = students.id 
WHERE name = 'Elliot Dickinson'
GROUP BY name