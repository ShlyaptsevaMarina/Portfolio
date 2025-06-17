SELECT public.projects.project_name, titles.titel_name, AVG(positions.salary)
FROM public.projects JOIN positions ON public.projects.project_id = positions.project_id
JOIN titles ON titles.ID = positions.title_id
WHERE titles.titel_name = 'tester' AND public.projects.project_name = 'ПУМЧД'
GROUP BY public.projects.project_name, titles.titel_name;
