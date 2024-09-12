-- How did the length of time since previous contact impact success rate?
SELECT
    pdays,
    SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) AS success_count,
    ROUND(SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)  AS success_rate
FROM clients
GROUP BY pdays
ORDER BY pdays;