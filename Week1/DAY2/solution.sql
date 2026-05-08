-- Display all employee details
select * from Employees;

-- Display only employee names and salaries
select emp_name, salary from Employees;

-- Display employee names and departments
select emp_name, department from Employees;

-- Display all employees from the IT department
select emp_name from Employees where department='IT';

-- Display employee names and experience
select emp_name, experience from Employees;

-- Find employees with salary greater than 70000
select emp_name from Employees where salary>=70000;

-- Find employees working in Hyderabad
select emp_name from Employees where city='Hyderabad';

-- Find employees with experience less than 4 years
select emp_name from Employees where experience<4;

-- Find employees from Finance department
select emp_name from Employees where department='Finance';

-- Find employees whose salary is equal to 52000
select emp_name from Employees where salary=52000;

-- Find total salary department-wise
select department,Sum(salary) from Employees group by department;

-- Find average salary in each department
select department,Avg(salary) from Employees group by department;

-- Count employees in each city
select Count(emp_id),city from Employees group by city;

-- Find maximum salary in each department
select department,Max(salary) from Employees group by department;

-- Find minimum experience department-wise
select department,Min(experience) from Employees group by department;

-- Find departments having more than 3 employees
select department,Count(emp_name) from Employees group by department Having Count(emp_name)>3;

-- Find departments where average salary is greater than 60000
select department,Avg(salary) from Employees group by department Having Avg(salary)>60000;

-- Find cities having more than 2 employees
select city,Count(emp_name) from Employees group by city Having Count(emp_name)>2;

-- Find departments where total salary is greater than 200000
select department,Sum(salary) from Employees group by department Having Sum(salary)>200000;

-- Find departments where maximum salary is above 90000
select department,max(salary) from Employees group by department Having max(salary)>90000;

-- Display top 5 highest paid employees
select emp_name,salary from Employees order by salary Desc limit 5;

-- Display top 3 employees with highest experience
select emp_name ,experience from Employees order by experience Desc limit 3;

-- Display top 2 salaries from Finance department
select emp_name ,salary from Employees where department='Finance' order by salary Desc limit 2;

-- Display top 4 employees from Hyderabad
select emp_name from Employees where city='Hyderabad' order by city Desc limit 4;

-- Display top 1 highest salary employee
select emp_name,salary from Employees order by salary Desc  limit 1;

-- Display distinct department names
select distinct department from Employees;

-- Display distinct city names
select distinct city from Employees;

-- Display distinct salary values
select distinct salary from Employees;

-- Display distinct combinations of department and city
select distinct department,city from Employees;

-- Display distinct experience values
select distinct experience from Employees;

-- Find employees with salary >= 80000
select emp_name from Employees where salary>=80000;

-- Find employees with experience <= 3
select emp_name from Employees where experience<=3;

-- Find employees whose salary <> 45000
select emp_name from Employees where salary<>45000;

-- Find employees with salary < 50000
select emp_name from Employees where salary<50000;

-- Find employees with experience > 5
select emp_name from Employees where experience>5;

-- Find employees from IT department AND salary greater than 70000
select emp_name from Employees where salary>70000 And department='IT';

-- Find employees from Hyderabad OR Bangalore
select emp_name from Employees where city='Hyderabad' Or city='Bangalore';

-- Find employees from HR department AND experience less than 3
select emp_name from Employees where department='HR' And experience<3;

-- Find employees with salary greater than 60000 OR experience greater than 6
select emp_name from Employees where salary>60000 Or experience>6;

-- Find employees NOT from Sales department
select emp_name from Employees where department!='Sales';

-- Find employees working in Hyderabad and Mumbai
select emp_name from Employees where city In('Hyderabad','Mumbai');

-- Find employees whose department IN ('IT', 'Finance')
select emp_name from Employees where department In('IT','Finance');

-- Find employees whose city NOT IN ('Chennai', 'Pune')
select emp_name from Employees where city Not In('Chennai','Pune');

-- Find employees whose salary IN (45000, 75000, 91000)
select emp_name from Employees where salary In(45000,75000,91000);

-- Find employees whose department NOT IN ('HR', 'Sales')
select emp_name from Employees where department Not In('HR','Sales');

-- Find employees with salary BETWEEN 50000 AND 80000
select emp_name from Employees where salary Between 50000 And 80000;

-- Find employees with experience BETWEEN 3 AND 6
select emp_name from Employees where experience Between 3 And 6;

-- Find employees whose emp_id BETWEEN 105 AND 112
select emp_name from Employees where emp_id Between 105 And 112;

-- Find employees with salary NOT BETWEEN 40000 AND 60000
select emp_name from Employees where salary Not Between 40000 And 60000;

-- Find employees with experience BETWEEN 2 AND 4
select emp_name from Employees where experience Between 2 And 4;

-- Find employees whose names start with 'R'
select emp_name from Employees where emp_name Like'R%';

-- Find employees whose names end with 'a'
select emp_name from Employees where emp_name Like'%a';

-- Find employees whose names contain 'v'
select emp_name from Employees where emp_name Like'%v%';

-- Find employees whose city starts with 'B'
select emp_name from Employees where city Like'B%';

-- Find employees whose department ends with 's'
select emp_name from Employees where department Like'%s';