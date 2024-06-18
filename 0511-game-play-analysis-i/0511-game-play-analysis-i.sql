# Write your MySQL query statement below


# first login date for each player



SELECT
    player_id,
    MIN(event_date) AS first_login
FROM
    Activity
GROUP BY player_id
















# report the first login date for each player


# Activity - player_id, device_id, event_date, games_played
    # p, e - pk


# SELECT
#     player_id, 
#     MIN(event_date) as first_login
# FROM
#     Activity
# GROUP BY
#     player_id






# SELECT
#     player_id,
#     event_date as first_login
# FROM(
#     SELECT 
#         player_id,
#         event_date,
#     RANK() OVER (
#         PARTITION BY player_id
#         ORDER BY event_date
#     ) AS rank_no FROM Activity ) m
# WHERE 
#     rank_no =1

