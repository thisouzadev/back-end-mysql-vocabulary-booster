USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qtdContratada INT;
    SELECT COUNT(EMPLOYEE_ID)
    FROM hr.employees
    WHERE month(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
    INTO qtdContratada;
    RETURN qtdContratada;
END $$
DELIMITER ;
