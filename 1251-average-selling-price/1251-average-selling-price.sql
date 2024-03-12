# Write your MySQL query statement below

# write a solution to find the avg selling price for each product.
    # avg price should be rounded to 2 decimal points
    
    
SELECT
    p.product_id,
    IFNULL(ROUND(SUM(u.units * p.price)/SUM(u.units),2),0) AS average_price
FROM Prices p 
    LEFT JOIN UnitsSold u ON p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date and p.end_date
GROUP BY product_id
