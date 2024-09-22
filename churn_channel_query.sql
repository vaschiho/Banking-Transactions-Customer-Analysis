-- Analyze which types of transactions are most associated with customer churn
WITH CTE_Transactionsummary AS (
	SELECT 
		CustomerID,
		TransactionType,
		MAX(CAST(TransactionDate AS DATE)) AS last_transaction,
		SUM(CAST(Amount AS INT)) AS total_amount
	FROM Bank_Transactions_main
	GROUP BY CustomerID,TransactionType
)



SELECT TransactionType ,COUNT(CustomerID) AS Number_Churn
FROM (
	SELECT 
		bcm.CustomerName,
		ct.CustomerID,
		ct.TransactionType,
		ct.total_amount,	
		CASE
			WHEN DATEDIFF(DAY, last_transaction,CAST('2023-12-31' AS DATE)) > 200 THEN 'Churned'
			ELSE 'Active'
		END AS churn_status
	FROM CTE_Transactionsummary ct 
	JOIN Bank_Customers_main bcm ON ct.CustomerID = bcm.CustomerID
) t
WHERE churn_status = 'Churned'
GROUP BY TransactionType


