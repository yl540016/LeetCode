# Write your MySQL query statement below


# Orders - order_number, customer_number


# find the customer_number for the customer
    #who has placed the largest number of orders


SELECT
    customer_number
FROM
    Orders
GROUP BY
    customer_number
ORDER BY
    count(*) DESC
LIMIT 1
