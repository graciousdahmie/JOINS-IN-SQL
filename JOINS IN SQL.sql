-- JOINS

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id, age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    SELECT dem.employee_id, age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    -- outer joins
    SELECT *
FROM employee_demographics AS dem
right JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
    -- self join
    
    select emp1.employee_id as emp_santa,
    emp1.first_name As first_name_santa,
    emp1.last_name As last_name_santa,
    emp2.employee_id As emp_name,
    emp2.first_name As first_name_emp,
    emp2.last_name As last_name_emp
    FROM  employee_salary emp1
    join employee_salary emp2
		on emp1.employee_id + 1 = emp2. employee_id;

-- joining multiple tables together

 SELECT *
 from employee_demographics AS dem
inner JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id 
INNER JOIN parks_departments Pd
ON sal.dept_id = pd. department_id;
    
   
   select *
   from parks_departments;