-- 1. Current date
select curdate();

-- 2. Current date
select current_date();

-- 3. Current time
select curtime();

-- 4. Current time
select current_time();

-- 5. Current date and time
select now();

-- 6. Current timestamp
select current_timestamp();

-- 7. Extract year
select year(order_date) from orders;

-- 8. Extract month
select month(order_date) from orders;

-- 9. Extract day
select day(order_date) from orders;

-- 10. Extract year using extract
select extract(year from order_date) from orders;

-- 11. Extract month using extract
select extract(month from order_date) from orders;

-- 12. Extract day using extract
select extract(day from order_date) from orders;

-- 13. Month name
select monthname(order_date) from orders;

-- 14. Day name
select dayname(order_date) from orders;

-- 15. Weekday
select weekday(order_date) from orders;

-- 16. Day of week
select dayofweek(order_date) from orders;

-- 17. Identify weekends using dayname
select order_id,order_date from orders where dayname(order_date) in ('Saturday','Sunday');

-- 18. Identify weekends using dayofweek
select order_id,order_date from orders where dayofweek(order_date) in (1,7);

-- 19. Identify weekdays
select order_id,order_date from orders where dayofweek(order_date) between 2 and 6;

-- 20. Add 5 days
select order_date,date_add(order_date,interval 5 day) from orders;

-- 21. Subtract 3 days
select order_date,date_sub(order_date,interval 3 day) from orders;

-- 22. Add 1 month
select date_add(order_date,interval 1 month) from orders;

-- 23. Subtract 2 months
select date_sub(order_date,interval 2 month) from orders;

-- 24. Add 1 year
select date_add(order_date,interval 1 year) from orders;

-- 25. Difference in days
select order_id,datediff(delivery_date,order_date) as delivery_days from orders;

-- 26. Difference using timestampdiff
select timestampdiff(day,order_date,delivery_date) as days_diff,timestampdiff(month,order_date,delivery_date) as months_diff from orders;

-- 27. Last day of month
select last_day(order_date) from orders;

-- 28. First day of month
select date_sub(order_date,interval day(order_date)-1 day) from orders;

-- 29. Format date
select date_format(order_date,'%d-%m-%Y') from orders;

-- 30. Format date with month name
select date_format(order_date,'%M %d,%Y') from orders;

-- 31. String to date
select str_to_date('15-01-2024','%d-%m-%Y');

-- 32. Timestamp formatting
select date_format(order_timestamp,'%d-%m-%Y %H:%i:%s') from orders;

-- 33. Filter January orders
select * from orders where month(order_date)=1;

-- 34. Filter February orders
select * from orders where monthname(order_date)='February';

-- 35. Financial year logic
select order_date,case when month(order_date)>=4 then concat(year(order_date),'-',year(order_date)+1) else concat(year(order_date)-1,'-',year(order_date)) end as financial_year from orders;

-- 36. Orders in last 7 days
select * from orders where order_date>=curdate()-interval 7 day;

-- 37. Orders placed today
select * from orders where date(order_timestamp)=curdate();