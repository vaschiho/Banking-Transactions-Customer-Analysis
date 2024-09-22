--Identify customers who are at risk of churning (e.g., those who haven’t made a transaction in a certain period).
WITH CTE_Transactionsummary AS (
	SELECT 
		CustomerID,
		MAX(CAST(TransactionDate AS DATE)) AS last_transaction,
		SUM(CAST(Amount AS INT)) AS total_amount
	FROM Bank_Transactions_main
	GROUP BY CustomerID
)
SELECT 
	bcm.CustomerName,
	ct.CustomerID,
	ct.total_amount,	
	CASE
        WHEN DATEDIFF(DAY, last_transaction,CAST('2023-12-31' AS DATE)) > 150 THEN 'Churned'
        ELSE 'Active'
    END AS churn_status	
FROM CTE_Transactionsummary ct 
JOIN Bank_Customers_main bcm ON ct.CustomerID = bcm.CustomerID
WHERE  DATEDIFF(DAY, last_transaction,CAST('2023-12-31' AS DATE)) > 150


