SELECT 
  CONCAT(employee.first_name, ' ', employee.last_name),
  titles.titel_name
FROM positions
JOIN employee ON positions.employee_id = employee.employee_id
JOIN titles ON positions.title_id = titles.id
GROUP BY employee.employee_id, titles.titel_name, employee.first_name, employee.last_name
HAVING COUNT(DISTINCT positions.project_id) > 1;