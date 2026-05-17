-- 1. Retrieve employee names and their managers
select e.emp_name as employee_name,m.emp_name as manager_name from employees e left join employees m on e.manager_id=m.emp_id;

-- 2. Display all employees and their departments
select e.emp_name,d.dept_name from employees e left join departments d on e.dept_id=d.dept_id;

-- 3. List employees who report to managers
select e.emp_name,m.emp_name as manager_name from employees e inner join employees m on e.manager_id=m.emp_id;

-- 4. Display employees without departments
select e.emp_name,d.dept_name from employees e left join departments d on e.dept_id=d.dept_id where d.dept_id is null;

-- 5. Fetch employee names and assigned projects
select e.emp_name,p.project_name from employees e left join projects p on e.emp_id=p.emp_id;

-- 6. List employees with at least one project
select e.emp_name,p.project_name from employees e inner join projects p on e.emp_id=p.emp_id;

-- 7. Show employee and project names without omitting projects
select e.emp_name,p.project_name from employees e right join projects p on e.emp_id=p.emp_id;

-- 8. Find departments and employees including departments without employees
select d.dept_name,e.emp_name from employees e right join departments d on e.dept_id=d.dept_id;

-- 9. Find employees who have not completed projects
select e.emp_name,p.project_name from employees e left join projects p on e.emp_id=p.emp_id where p.project_id is null;

-- 10. Employee and project names
select e.emp_name,p.project_name from employees e left join projects p on e.emp_id=p.emp_id;

-- 11. Projects and assigned employees
select p.project_name,e.emp_name from employees e right join projects p on e.emp_id=p.emp_id;

-- 12. Employees with managers and projects
select e.emp_name,m.emp_name as manager_name,p.project_name from employees e inner join employees m on e.manager_id=m.emp_id inner join projects p on e.emp_id=p.emp_id;

-- 13. Total employees in each department
select d.dept_name,count(e.emp_id) as total_employees from departments d left join employees e on d.dept_id=e.dept_id group by d.dept_name;

-- 14. Display all employees and managers
select e.emp_name,m.emp_name as manager_name from employees e left join employees m on e.manager_id=m.emp_id;

-- 15. Department names and employee count
select d.dept_name,count(e.emp_id) as employee_count from departments d left join employees e on d.dept_id=e.dept_id group by d.dept_name;

-- 16. Employee, department and project assignments
select e.emp_name,d.dept_name,p.project_name from employees e left join departments d on e.dept_id=d.dept_id left join projects p on e.emp_id=p.emp_id;