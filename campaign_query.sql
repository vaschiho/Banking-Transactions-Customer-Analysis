
--Marketing Campaign Effectiveness
WITH CampaignEffectiveness AS (
	SELECT 
		bc.CustomerID,
		bc.CampaignID,
		bc.Response,
		CASE 
			WHEN DATEDIFF(DAY,  days_since_last_transaction , CAST('2023-12-31' AS DATE)) >150 THEN 'Churned'
			ELSE 'Active'
		END AS active_status

	FROM Bank_CampaignInteractions bc
	LEFT JOIN  (
		SELECT CustomerID,SuM(CAST(Amount AS INT)) AS TotalAmount,MAX(CAST(TransactionDate AS DATE)) AS days_since_last_transaction
		FROM  Bank_Transactions_main
		GROUP BY CustomerID
	) bt 
	ON bc.CustomerID = bt.CustomerID

)
SELECT 
     CampaignID,
	 COUNT(CASE WHEN Response='Accepted' THEN 1 END) AS positive_responses,
	 COUNT(CASE WHEN active_status='Active' THEN 1 END) AS retain_customers,
	 COUNT(CASE WHEN active_status='Churned' THEN 1 END) AS Churned_customers
FROM CampaignEffectiveness
GROUP BY CampaignID

