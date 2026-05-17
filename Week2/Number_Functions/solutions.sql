-- 1. ABS – Absolute Value
select abs(-100);

-- 2. ROUND – Round to nearest integer
select round(base_salary,0) from employee_salary;

-- 3. ROUND – Round to 2 decimal places
select round(base_salary,2) from employee_salary;

-- 4. CEIL – Round up
select ceil(base_salary) from employee_salary;

-- 5. FLOOR – Round down
select floor(base_salary) from employee_salary;

-- 6. TRUNCATE – Cut decimals without rounding
select truncate(base_salary,1) from employee_salary;

-- 7. MOD – Find remainder
select mod(experience_years,2) from employee_salary;

-- 8. POWER – Exponent
select power(2,3);

-- 9. POW – Exponent
select pow(5,2);

-- 10. SQRT – Square root
select sqrt(64);

-- 11. SIGN – Positive or negative indicator
select sign(base_salary) from employee_salary;

-- 12. RAND – Random number
select rand();

-- 13. FORMAT – Format number
select format(base_salary,2) from employee_salary;

-- 14. Greatest value between salary and bonus
select emp_name,greatest(base_salary,ifnull(bonus,0)) from employee_salary;

-- 15. Least value between salary and bonus
select emp_name,least(base_salary,ifnull(bonus,0)) from employee_salary;