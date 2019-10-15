SELECT students.name AS name, avg(assignment_submissions.duration) AS AVG_duration
FROM students
LEFT JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NOT NULL
GROUP BY name
ORDER by AVG_duration DESC;