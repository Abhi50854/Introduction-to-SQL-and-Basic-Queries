# SQL Queries for ClassicModels Database

This repository contains a set of SQL queries designed to extract specific information from the ClassicModels sample database. These queries demonstrate various SQL techniques including filtering, sorting, and limiting results.

## Queries Overview

### 1. Payment Information Retrieval
Retrieves check numbers, payment dates, and amounts from the payments table.

```sql
SELECT checkNumber, paymentDate, amount
FROM payments;
```

### 2. Order Status Query
Fetches order dates, required dates, and status for orders marked as 'In Process', sorted by order date in descending order.

```sql
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;
```

### 3. Sales Representative Details
Retrieves first names, last names, and email addresses of employees with the job title 'Sales Rep', sorted by employee number in descending order.

```sql
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;
```

### 4. Complete Office Information
Fetches all columns and records from the offices table.

```sql
SELECT *
FROM offices;
```

### 5. Product Inventory Overview
Retrieves product names and quantity in stock for the 5 cheapest products (based on buy price).

```sql
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
```

## Database Schema
These queries are designed to work with the ClassicModels database schema, which includes tables such as:
- `payments` (payment records)
- `orders` (customer orders)
- `employees` (employee information)
- `offices` (office locations)
- `products` (product inventory)

## Usage
To use these queries:
1. Ensure you have the ClassicModels database installed
2. Connect to your MySQL database
3. Execute the queries as needed to retrieve the desired information

## Requirements
- MySQL database
- ClassicModels sample database

## Notes
- Adjust the LIMIT clause in Query 5 if you need more or fewer results
- Modify sorting directions (ASC/DESC) as needed for your specific use case
- Ensure proper database permissions are set for executing these queries
