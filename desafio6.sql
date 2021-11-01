SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
h.START_DATE AS 'Data de início do cargo',
DATE(d.DEPARTMENT_NAME) AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.job_history AS h
ON e.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d
ON e.MANAGER_ID = d.MANAGER_ID;
