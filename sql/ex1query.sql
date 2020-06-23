--ZAD1:
--Dział księgowości pewnej firmy oczekuje akcji wyświetlającej nazwiska pracowników,
--którzy pracowali przynajmniej raz w departamencie o nazwie „DRK”.
--Księgowy oczekuje, że informacje powinny być wyświetlone w konsoli w kolejności alfabetycznej wg nazwiska pracownika.

--TODO: optymalizacja
--agregowanie wszystkich tabel po parametrze department id, a więc często duplikatów.
--zastanowić się jak omijać job history w których dany pracowni ktualnie pracuje w poszukiwanym departamencie

SELECT employees.last_name FROM departments
                                    join job_history ON job_history.department_id = departments.department_id
                                    join employees ON employees.department_id = departments.department_id
where departments.department_name = 'DRK'
  AND JOB_HISTORY.START_DATE <= CURRENT_DATE
GROUP By employees.last_name
ORDER BY employees.last_name ASC;