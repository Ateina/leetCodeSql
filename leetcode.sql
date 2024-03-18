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