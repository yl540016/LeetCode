# Write your MySQL query statement below

SELECT
    department,
    employee,
    salary
FROM
(
    SELECT 
    d.name as department,
    e.name as employee,
    e.salary as salary,
    DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) as ranking
FROM Employee e
    JOIN Department d 
        ON e.departmentId = d.id
) as sub

WHERE ranking < 4
