--Zadanie 2:
--Dział kontrolingu pewnej firmy oczekuje akcji wyświetlającej w konsoli ##nazwy departamentów,
--gdzie pracował pracownik o #1#nazwisku „Kowalski” i jego #2#zarobki, #3#na ostatnim zajmowanym stanowisku##,
--są mniejsze o więcej niż 25% w porównaniu do #4#maksymalnych zarobków tego stanowiska. Referent oczekuje, że
--nazwy departamentów powinny być wyświetlone w konsoli w kolejności alfabetycznej wg nazwy departamentu.

--sprawdzanie czy nazywa się kowalski -> pobieranie dla niego employees.salary i job.maxsalary
         SELECT DISTINCT
    department_name
FROM departments
    JOIN employees ON employees.department_id = departments.department_id
    JOIN jobs ON -- TODO: split logic into separate statements.
ORDER BY department_name;
--1. dla kazdego #1#departamentu sprawdzic czy jest #2#emp.kowalski i pobrac jego #3#emp.salary oraz #3#jobs.job_id
--2, dla kazdego job_id sprawdzic #5#jobs.max_salary.
--3 dla kazdego max salary porownywac wszystkich kowalskich z takim samym job_id a następniwe w przypadku posiadania o 75% mniejszego


--select po kowalskiego
SELECT
    last_name, salary
FROM employees
;
--Zadanie 2:
--Dział kontrolingu pewnej firmy oczekuje akcji wyświetlającej w konsoli ##nazwy departamentów,
--gdzie pracował pracownik o #1#nazwisku „Kowalski” i jego #2#zarobki, #3#na ostatnim zajmowanym stanowisku##,
--są mniejsze o więcej niż 25% w porównaniu do #4#maksymalnych zarobków tego stanowiska. Referent oczekuje, że
--nazwy departamentów powinny być wyświetlone w konsoli w kolejności alfabetycznej wg nazwy departamentu.

--sprawdzanie czy nazywa się kowalski -> pobieranie dla niego employees.salary i job.maxsalary
SELECT DISTINCT
    department_name
FROM departments
         JOIN employees ON employees.department_id = departments.department_id
         JOIN jobs ON -- w jakis sposob pobrac maks salary i
ORDER BY department_name ASC

--1, id pracownika po nazq
;
--select po kowalskiego
SELECT
    *
FROM employees
         join job_history On employees.employee_id = job_history.employee_id
         join departments ON job_history.department_id = departments.department_id
         join jobs ON jobs.job_id = job_history.job_id
where employees.salary < 3/4 * jobs.max_salary
  AND last_name = 'kowalski'
Order By departments.department_name asc;


