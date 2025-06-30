SELECT user_id, MIN(event_date) AS first_login, MIN(IF(activity_type = 'subscribe', event_date, NULL)) AS first_subscribe
FROM Events
GROUP BY user_id
HAVING first_subscribe IS NOT NULL;
