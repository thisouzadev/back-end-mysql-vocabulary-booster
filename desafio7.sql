SELECT ucase(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
h.START_DATE AS `Data de início`,
e.SALARY AS Salário
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início`;
