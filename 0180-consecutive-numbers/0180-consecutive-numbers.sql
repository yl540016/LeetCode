# Write your MySQL query statement below
SELECT
    DISTINCT num as ConsecutiveNums
FROM

(
    SELECT
        num,
        LEAD(num, 1) OVER(ORDER BY id) AS next_num,
        LEAD(num, 2) OVER(ORDER BY id) AS next_next_num
    FROM Logs

) AS Sub

WHERE num = next_num AND num = next_next_num


