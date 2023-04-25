# Write your MySQL query statement below


# Sales 
    # sale_id, product_id, year, quantity, price

# Product
    # product_id, product_name

# reports the product_name, year, and price for each sale_id in the Sales table.

SELECT
    p.product_name,
    s.year,
    s.price
FROM
    Sales s
LEFT JOIN Product p
    ON s.product_id = p.product_id
