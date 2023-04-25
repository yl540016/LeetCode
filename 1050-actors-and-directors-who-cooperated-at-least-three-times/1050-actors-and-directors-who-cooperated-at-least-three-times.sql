# Write your MySQL query statement below



# ActorDirector
    # actor_id, director_id, timestamp

# report that provides the pairs (actor_id, director_id)
    # where the actor has cooperated with the director
        # at least three times
    

SELECT
    actor_id,
    director_id
FROM
    ActorDirector
GROUP BY
    actor_id,
    director_id
    HAVING
        COUNT(timestamp) >= 3
