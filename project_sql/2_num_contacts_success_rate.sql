-- How did the number of contacts impact the success rate for the current campaign?
SELECT 
       campaign AS times_contacted, 
       SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) AS successful_clients,
       COUNT(*) AS total_clients,
       ROUND(SUM(CASE WHEN deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS success_rate
FROM clients
GROUP BY times_contacted
ORDER BY success_rate DESC;

-- previous campaign
SELECT 
    previous AS pcampaign_times_contacted, 
    SUM(CASE WHEN poutcome = 'success' THEN 1 ELSE 0 END) AS success_count,
    COUNT(*) AS total_clients,
    ROUND(SUM(CASE WHEN poutcome = 'success' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS prev_success_rate
FROM clients
GROUP BY previous
ORDER BY prev_success_rate DESC;
