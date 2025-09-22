CREATE DATABASE employee;
USE employee;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10,2)
);

INSERT INTO employee (name, dept_id, salary) VALUES
('Amit', 1, 50000),
('Rohit', 1, 40000),
('Neha', 2, 60000),
('Pooja', 2, 55000),
('Raj',  1, 70000);

SELECT e.*
FROM employee e
WHERE e.salary > (
  SELECT AVG(salary) 
  FROM employee 
  WHERE dept_id = e.dept_id
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO orders (customer_id, amount) VALUES
(1, 5000),
(2, 8000),
(3, 2000),
(1, 7000),
(2, 4000),
(4, 10000);

SELECT customer_id, SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id
ORDER BY total_amount DESC
LIMIT 3;

