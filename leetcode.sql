-- Basic Joins
-- 1378. Replace Employee ID With The Unique Identifier
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
SELECT e2.unique_id, e1.name 
FROM Employees AS e1
LEFT JOIN EmployeeUNI AS e2
ON e1.id = e2.id

-- 1068. Product Sales Analysis I
-- https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
SELECT p.product_name, s.year, s.price
FROM Sales as s
INNER JOIN Product AS p
ON s.product_id = p.product_id 

-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
SELECT v1.customer_id, COUNT(*) as count_no_trans 
FROM Visits AS v1
LEFT JOIN Transactions AS t1
ON v1.visit_id = t1.visit_id
WHERE t1.visit_id IS NULL 
GROUP BY v1.customer_id

-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
SELECT w1.id as Id
FROM Weather AS w1
INNER JOIN Weather AS w2
ON w1.id - w2.id = 1
WHERE w1.temperature > w2.temperature