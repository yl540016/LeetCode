# Write your MySQL query statement below


# Employee- empId, name, supervisor, salary

# Bonus - empId, bonus

# report name and bonus amount of each employee

# with a bonus less than 1000


SELECT
    e.name name,
    b.bonus bonus
FROM
    Employee e
LEFT JOIN
    Bonus b
    ON e.empId = b.empId
WHERE
    b.bonus <1000 OR
    b.bonus is NULL