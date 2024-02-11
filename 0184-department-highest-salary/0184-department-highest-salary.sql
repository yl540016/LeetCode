# Write your MySQL query statement below

SELECT
    department,
    employee,
    salary
FROM
    
(
SELECT
    e.name as employee,
    d.name as department,
    e.salary as salary,
    RANK() OVER (PARTITION BY d.id ORDER BY salary DESC) AS ranking
FROM
    Employee e
        JOIN Department d
            ON e.departmentID = d.id
) AS Sub
WHERE ranking = 1