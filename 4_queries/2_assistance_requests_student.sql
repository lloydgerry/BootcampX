SELECT COUNT(assistance_requests.*) AS total_assistances, students.name AS name
FROM students
LEFT JOIN assistance_requests ON assistance_requests.student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;