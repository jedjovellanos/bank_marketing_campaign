-- What was the success rate of the previous campaign compared to the current?
SELECT COUNT(*) AS total_clients,
       SUM(CASE WHEN poutcome = 'success' THEN 1 END) AS prev_total_successful,
       ROUND((SUM(CASE WHEN poutcome = 'success' THEN 1 END) * 100.0 / COUNT(*)),2) AS prev_success_rate,
       SUM(CASE WHEN deposit = 'yes' THEN 1 END) AS total_successful,
       ROUND((SUM(CASE WHEN deposit = 'yes' THEN 1 END) * 100.0 / COUNT(*)),2) AS success_rate
FROM clients;
