SELECT cohorts.name AS cohort_name, COUNT(students.id) as student_count
FROM cohorts 
LEFT OUTER JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohort_name
HAVING count(students.*) >= 18
ORDER BY student_count;