SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING COUNT (day) >= 10
ORDER By day;