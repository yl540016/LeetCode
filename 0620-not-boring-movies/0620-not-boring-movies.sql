# Write your MySQL query statement below



# Cinema - id, movie, description, rating

# rating is a 2 decimal float in the rance [0,10]


# report the movies with odd-numbered ID
    # and a description that is not "boring"
    

SELECT
    id,
    movie,
    description,
    rating
FROM
    Cinema c
WHERE
    id % 2 = 1
    AND
    description <> "boring"
ORDER BY
    rating DESC