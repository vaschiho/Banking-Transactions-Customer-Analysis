--Identify the most valuable customers based on their total transaction volume or the amount spent.


	SELECT CustomerID,
	SUM(CAST(Amount AS INT)  ) Total_Amount,
	 CASE 
		WHEN SUM(CAST(Amount AS INT)) >= 34000 THEN 'high-value'
		WHEN SUM(CAST(Amount AS INT)) >= 15000  THEN 'medium-value' 
		ELSE 'low-value'
	 END CustomerLoyalty
	FROM Bank_Transactions_main
	GROUP BY CustomerID
