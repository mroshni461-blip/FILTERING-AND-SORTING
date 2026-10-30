create database company_db2 ;
use company_db2 ;

CREATE TABLE Employees (
    EmpID       INT PRIMARY KEY,
    EmpName     VARCHAR(50),
    Department  VARCHAR(50),
    City        VARCHAR(50),
    Salary      INT,
    HireDate    DATE
);


INSERT INTO Employees VALUES
(101, 'Rahul Mehta',  'Sales',     'Delhi',     55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR',        'Mumbai',    62000, '2019-09-25'),
(103, 'Aman Singh',   'IT',        'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel',   'Sales',     'Delhi',     48000, '2022-01-14'),
(105, 'Karan Joshi',  'Marketing', 'Pune',      45000, '2018-07-22'),
(106, 'Divya Nair',   'IT',        'Chennai',   81000, '2019-12-11'),
(107, 'Raj Kumar',    'HR',        'Delhi',     60000, '2020-05-28'),
(108, 'Simran Kaur',  'Finance',   'Mumbai',    58000, '2021-08-03'),
(109, 'Arjun Reddy',  'IT',        'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das',   'Sales',     'Kolkata',   51000, '2023-01-15');


select * from employees ;

1)Employees in IT or HR

SELECT * 
FROM Employees
WHERE Department IN ('IT', 'HR');

2)Employees in Sales, IT, or Finance

SELECT * 
FROM Employees
WHERE Department IN ('Sales', 'IT', 'Finance');

3)Employees with salary between ₹50,000 and ₹70,000

SELECT * 
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

4) Employees whose names start with 'A'

SELECT * 
FROM Employees
WHERE first_name LIKE 'A%';

5)Employees whose names contain 'an'

SELECT * 
FROM Employees
WHERE empname LIKE '%an%';


6) Employees from Delhi or Mumbai earning more than ₹55,000

SELECT * 
FROM Employees
WHERE City IN ('Delhi', 'Mumbai') 
  AND Salary > 55000;


7) Employees except those from HR

SELECT * 
FROM Employees
WHERE Department <> 'HR';

8)Employees hired between 2019 and 2022, ordered by HireDate (oldest first)

SELECT * 
FROM Employees
WHERE HireDate BETWEEN '2019-01-01' AND '2022-12-31'
ORDER BY HireDate ASC;






