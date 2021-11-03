USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(client_email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE empregosPresent INT;
    SELECT COUNT(e.EMPLOYEE_ID)
    FROM hr.employees AS e
    INNER JOIN hr.job_history AS jh
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE EMAIL = client_email
    INTO empregosPresent;
    RETURN empregosPresent;
END $$
DELIMITER ;
