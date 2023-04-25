# Write your MySQL query statement below

# Project - project_id, employee_id

# Employee - employee_id, name, experience_years

# Write an SQL query that reports 
    #the average experience years of all the employees for each project, 
        #rounded to 2 digits.

SELECT
    p.project_id,
    ROUND(AVG(e.experience_years),2) AS average_years
FROM
    Project p
LEFT JOIN Employee e
    ON e.employee_id = p.employee_id
GROUP BY
    p.project_id