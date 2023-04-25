# Write your MySQL query statement below


# Courses - student, class

# report all the classess
    # that have at least five students
    

SELECT
    class
FROM
    Courses c
GROUP BY
    class
HAVING
    COUNT(student) >= 5