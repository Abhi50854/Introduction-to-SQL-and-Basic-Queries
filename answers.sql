-- 1. Retrieve checkNumber, paymentDate, and amount from payments table
SELECT checkNumber, paymentDate, amount
FROM payments;


-- 2. Retrieve orderDate, requiredDate, and status of orders 'In Process', sorted by orderDate descending
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;


-- 3. Display firstName, lastName, email of employees with jobTitle 'Sales Rep', sorted by employeeNumber descending
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;


-- 4. Retrieve all columns and records from offices table
SELECT *
FROM offices;


-- 5. Fetch productName and quantityInStock from products table, sorted by buyPrice ascending, limit 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
