SELECT DISTINCT player_id
FROM (
    SELECT player_id, event_date,
           LEAD(event_date, 1) OVER (PARTITION BY player_id ORDER BY event_date) AS next_day,
           LEAD(event_date, 2) OVER (PARTITION BY player_id ORDER BY event_date) AS next_next_day
    FROM Activity
) a
WHERE DATEDIFF(next_day, event_date) = 1
  AND DATEDIFF(next_next_day, event_date) = 2;
