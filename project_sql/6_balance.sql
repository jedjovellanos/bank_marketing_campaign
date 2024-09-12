-- What is the distribution of balances for clients who did vs did not sign up?
SELECT 
    balance,
    deposit
FROM clients
ORDER BY balance DESC;
