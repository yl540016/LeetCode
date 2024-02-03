# Write your MySQL query statement below

# write a solution to report the name, blanace of users with a balance higher than 10,000

# the balance of an account is equal to the sum of the amonutns of all transatcions 


SELECT
    u.name,
    SUM(t.amount) as balance
FROM
    Users u
    LEFT JOIN Transactions t
        ON u.account = t.account
GROUP BY u.account
HAVING
    balance > 10000
