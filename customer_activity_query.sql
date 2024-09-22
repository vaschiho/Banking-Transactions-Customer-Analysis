--Segment customers based on their activity levels (high, medium, low) by analyzing their transaction frequency and recency.

WITH CTE_Customeractivity AS (
   SELECT 
	CustomerID,
	COUNT(TransactionID) AS Total_transaction,
	MAX(CAST(TransactionDate AS DATE) ) AS Max,
	DATEDIFF(DAY, MAX(CAST(TransactionDate AS DATE)), CAST('2023-12-31' AS DATE)) AS days_from_last_transaction
   FROM Bank_Transactions_main
   GROUP BY CustomerID
   
)

SELECT 
	cc.CustomerID,
	bcm.CustomerName,
	cc.days_from_last_transaction,
	cc. Total_transaction AS total_transaction,
	CASE 
		WHEN  Total_transaction > 8 THEN 'High-Value'
		WHEN  Total_transaction > 4 THEN 'Medium-Value'
		ELSE 'Low-Value'
		END AS activity_level
FROM CTE_Customeractivity cc
JOIN Bank_Customers_main bcm
ON cc.CustomerID = bcm.CustomerID
ORDER BY cc.days_from_last_transaction

