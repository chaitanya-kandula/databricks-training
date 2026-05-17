-- 1. Length of string
select full_name,length(full_name) from employees;

-- 2. Character length
select full_name,char_length(full_name) from employees;

-- 3. Convert to uppercase and lowercase
select upper(department),lower(city) from employees;

-- 4. Remove spaces using trim
select trim(full_name),ltrim(full_name),rtrim(full_name) from employees;

-- 5. Concatenate strings
select concat(full_name,' - ',department) as emp_details from employees;

-- 6. Concatenate with separator
select concat_ws(' | ',emp_id,full_name,city) from employees;

-- 7. Extract substring
select substring(email,1,7) from employees;

-- 8. Extract substring using substr
select substr(email,1,5) from employees;

-- 9. Extract left and right characters
select left(full_name,4),right(city,3) from employees;

-- 10. Find position of substring
select email,instr(email,'@') from employees;

-- 11. Locate substring
select email,locate('.',email) from employees;

-- 12. Replace string
select replace(department,'Data','Big Data') from employees;

-- 13. Reverse string
select full_name,reverse(full_name) from employees;

-- 14. Left padding
select lpad(emp_id,5,'0') from employees;

-- 15. Right padding
select rpad(city,15,'*') from employees;

-- 16. Trim and replace together
select trim(replace(city,' ','')) from employees;

-- 19. Find value in comma-separated list
select find_in_set('Analytics','Data,Analytics,AI');