# 📅 Week 1, Day 1: Daily SQL Progress & Learning Outcomes
**Developer:** Chaitanya Ramanjaneyulu Kandula  
**Status:** Completed 65 Practice Queries  

---

## 📁 Daily Work Overview
Today’s focus was on establishing a rock-solid foundation in SQL. I moved from basic data selection to building complex, analytical queries that a software developer would use to interact with a real-world database.

| File | Description |
| :--- | :--- |
| **`datacreation.sql`** | **Setup:** Built the database schema (Employee, Department, Project tables) and inserted the testing data. |
| **`solutions.sql`** | **Execution:** Contains the 65 SQL queries I wrote and verified today. |
| **`sql practice queries.pdf`** | **Requirements:** The original question set used for today's tasks. |

---

## ✅ Learning Outcomes & Achievements

### 1. Data Retrieval & Filtering
* **Selection:** Mastered pulling specific data points from large tables.
* **Refined Filtering:** Used `WHERE` to isolate records based on numerical and age-based conditions.

### 2. Advanced Searching (Pattern Matching)
* **Text Analysis:** Learned to use **Wildcards** (`%` and `_`) with the `LIKE` operator to search for specific text patterns (names starting with 'J', names exactly 9 characters long, etc.).

### 3. Date & Time Analytics
* **Chronological Logic:** Used `YEAR()` and `MONTH()` functions to filter data by time.
* **Relative Dates:** Successfully implemented `INTERVAL` logic to find records from a dynamic timeframe (e.g., the "last 2 years").

### 4. Data Summarization (Aggregates)
* **Statistical Logic:** Used `COUNT`, `SUM`, and `AVG` to generate high-level insights.
* **Category Analysis:** Mastered `GROUP BY` to summarize data by department or year, and `HAVING` to filter those summaries.

### 5. Complex Relationships (Joins & Subqueries)
* **Table Connections:** Linked multiple tables (Employees to Departments to Projects) using **Joins**.
* **Nested Logic:** Wrote **Subqueries** to perform calculations within queries, such as finding employees whose salary is higher than their department average.

---

## 🚀 Featured Solution: Analytical Mastery
This query represents the top tier of today's work, combining grouping, aggregation, and conditional filtering.
```sql
-- Analyzing high-capacity departments and ranking by average pay
SELECT 
    department_id, 
    COUNT(emp_id) AS total_employees, 
    AVG(salary) AS average_salary 
FROM Employee 
GROUP BY department_id 
HAVING COUNT(emp_id) > 2 
ORDER BY average_salary DESC;
