CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_date DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO Transactions (transaction_id, customer_id, transaction_date, amount) VALUES
(1, 1, '2023-09-01', 100.50),
(2, 2, '2023-09-01', 200.75),
(3, 1, '2023-09-05', 150.00),
(4, 3, '2023-09-10', 300.20),
(5, 2, '2023-09-15', 250.30),
(6, 1, '2023-09-20', 180.00),
(7, 3, '2023-09-21', 400.00),
(8, 1, '2023-09-25', 170.75),
(9, 1, '2023-09-28', 160.25),
(10, 1, '2023-09-30', 190.60);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');


SELECT * FROM TRANSACTIONS
SELECT * FROM CUSTOMERS


/*
You are given two tables:
Transactions – Stores transaction details (ID, customer ID, date, and amount).
Customers – Stores customer details (ID and name).
The task is to find the average transaction amount for each customer who made more than 5 transactions in September 2023.
*/

SELECT C.CUSTOMER_NAME,
	   AVG(T.AMOUNT) AS AVG_AMOUNT,
	   COUNT(*)
FROM TRANSACTIONS T
JOIN CUSTOMERS C
ON T.CUSTOMER_ID=C.CUSTOMER_ID
WHERE T.TRANSACTION_DATE BETWEEN '2023-09-01' AND '2023-09-30'
GROUP BY C.CUSTOMER_NAME
HAVING COUNT(*)>5
	   

