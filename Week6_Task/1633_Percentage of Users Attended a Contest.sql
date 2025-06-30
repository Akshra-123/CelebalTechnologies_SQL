SELECT ROUND(COUNT(DISTINCT user_id) * 100.0 / 
             (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register;
