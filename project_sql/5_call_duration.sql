-- How did the duration of the contact call impact success rate?
SELECT
    duration AS duration_in_seconds,
    duration / 60 AS duration_in_minutes,
    --SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) AS success_count,
    ROUND(SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)  AS success_rate
FROM clients
GROUP BY duration
ORDER BY duration;