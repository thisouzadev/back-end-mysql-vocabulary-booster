USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN user_email VARCHAR(100))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`, d.DEPARTMENT_NAME AS Departamento, j.JOB_TITLE AS Cargo
FROM employees AS e
INNER JOIN job_history as jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN jobs AS j
ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = user_email
ORDER BY CARGO ASC, DEPARTAMENTO;
END $$
DELIMITER ;
