# Write your MySQL query statement below


# MyNumbers - num

# report largest single number, if not NULL


SELECT MAX(a.num) as num
FROM (SELECT
    num, COUNT(num)
FROM
    MyNumbers
GROUP BY
    num
HAVING COUNT(num) = 1
) as a
    

