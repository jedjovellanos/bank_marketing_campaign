/*
    How many clients have credit in default, housing loans, and personal loans?
    What is the success rate for each demographic?
*/

SELECT
    SUM(CASE WHEN has_credit = 'yes' THEN 1 ELSE 0 END) AS total_credit_count,
    ROUND(SUM(CASE WHEN has_credit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS credit_percent_pop,
    ROUND(SUM(CASE WHEN has_credit = 'yes' AND deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS credit_success,
    SUM(CASE WHEN has_housing = 'yes' THEN 1 ELSE 0 END) AS total_housing_count,
    ROUND(SUM(CASE WHEN has_housing = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS housing_percent_pop,
    ROUND(SUM(CASE WHEN has_housing = 'yes' AND deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS housing_succes,
    SUM(CASE WHEN has_loan = 'yes' THEN 1 ELSE 0 END) AS total_loan_count,
    ROUND(SUM(CASE WHEN has_loan = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS loan_percent_pop,
    ROUND(SUM(CASE WHEN has_loan = 'yes' AND deposit = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS loan_success
FROM clients;