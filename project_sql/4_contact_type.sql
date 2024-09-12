-- What was the success rate by contact type?

SELECT 
    contact,
    SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) AS success_count,
    COUNT(contact) AS total_count,
    ROUND(SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)  AS success_rate
FROM clients
GROUP BY contact
ORDER BY success_rate DESC;
