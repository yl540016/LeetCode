'''
184


ANOTHER SOLUTION:

        Sub Query in WHERE CLAUSE
'''


SELECT
    d.name Department,
    e.name Employee,
    e.salary Salary
FROM
    Employee e 
        JOIN Department d 
            ON e.departmentId = d.id
WHERE e.salary IN
(
SELECT
    MAX(salary)
FROM Employee e1
WHERE e.departmentId = e1.departmentId
)
