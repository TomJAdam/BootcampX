-- Total assignments and duration

SELECT day, count(*) as total_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;