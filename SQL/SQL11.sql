SELECT  
  projects.project_name,
  titles.titel_name,
  ROUND(AVG(positions.salary), 2)
FROM positions
JOIN employee ON positions.employee_id = employee.employee_id
JOIN projects ON positions.project_id = projects.project_id
JOIN titles ON positions.title_id = titles.id
WHERE titles.titel_name = 'tester'
  AND projects.project_name = 'ПУМЧД'
GROUP BY projects.project_name, titles.titel_name;