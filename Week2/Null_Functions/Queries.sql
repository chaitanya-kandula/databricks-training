-- LEVEL 1 (BASIC)

-- Show all employees whose salary is NULL
select name from Employees where salary is null;

-- Show all orders where discount is NOT NULL
select * from Orders where discount is not null;

-- Get products where category is NULL
select * from Products where category is null;

-- Count number of employees with NULL manager_id
select count(*) from Employees where manager_id is null;


-- LEVEL 2 (ISNULL)

-- Replace NULL salary with 0
select name,ifnull(salary,0) as salary from Employees;

-- Replace NULL bonus with 1000
select name,ifnull(bonus,1000) as bonus from Employees;

-- Show order amount, if NULL replace with 500
select customer_name,ifnull(amount,500) as amount from Orders;

-- Replace NULL stock with 0
select product_name,ifnull(stock,0) as stock from Products;


-- LEVEL 3 (COALESCE)

-- Show employee earnings using salary else bonus
select name,coalesce(salary,bonus) as earnings from Employees;

-- Show first available value salary → bonus → 0
select name,coalesce(salary,bonus,0) as earnings from Employees;

-- Show product price price → 1000
select product_name,coalesce(price,1000) as price from Products;

-- Get customer payment amount → discount → 0
select customer_name,coalesce(amount,discount,0) as payment from Orders;


-- LEVEL 4 (NULLIF)

-- Convert salary to NULL if salary=0
select name,nullif(salary,0) as salary from Employees;

-- Convert discount to NULL if discount=0
select customer_name,nullif(discount,0) as discount from Orders;

-- Avoid divide by zero
select amount/nullif(discount,0) from Orders;

-- Replace coupon_code with NULL if DISC10
select nullif(coupon_code,'DISC10') as coupon_code from Orders;


-- LEVEL 5 (REAL-TIME SCENARIOS)

-- Calculate total earnings
select name,coalesce(salary,0)+coalesce(bonus,0) as total_earnings from Employees;

-- Show employees where both salary and bonus are NULL
select name from Employees where salary is null and bonus is null;

-- Show products where price is NULL but category exists
select product_name from Products where price is null and category is not null;

-- Show orders where both amount and discount are NULL
select * from Orders where amount is null and discount is null;


-- LEVEL 6 (ADVANCED)

-- Show employee income
select name,coalesce(salary,bonus,1000) as employee_income from Employees;

-- Replace empty discount with NULL
select nullif(discount,0) as discount from Orders;

-- Show final payable amount
select amount-coalesce(discount,0) as final_payable_amount from Orders;

-- Find employees where salary is NULL but manager exists
select * from Employees where salary is null and manager_id is not null;