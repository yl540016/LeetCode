# Write your MySQL query statement below



# Salary - id, name, sex, salary
    # sex - ENUM value of type ('m','f')


# Note that you must write a single update statement, 
# do not write any select statement for this problem.


UPDATE
    Salary
SET sex = 
    CASE sex
        WHEN 'm' THEN 'f'
        WHEN 'f' THEN 'm'
        ELSE sex
END