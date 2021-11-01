SELECT 
    JOB_TITLE AS 'Cargo',
    MIN_SALARY - MAX_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
    ORDER BY JOB_TITLE;