# Write your MySQL query statement below



# Triangle 
    # x, y, z

# report for every three line segments
# whether they can form a triangle

SELECT
    x,
    y,
    z,
    CASE
        WHEN (x < y+z 
            AND
            y < x+z
            AND
            z < x+y)
            THEN 'Yes'
        ELSE
            'No'
    END as triangle
FROM Triangle
        