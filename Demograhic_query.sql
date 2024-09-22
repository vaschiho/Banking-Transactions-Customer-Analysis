--Analyze Demographic Segments to Personalize Marketing
WITH CTE_Demograpic AS (
	SELECT 
		CustomerID,
		Region,
		IncomeLevel,
		Age,		
		CASE 
			WHEN CAST(Age AS INT) > 50 THEN '51+'
			WHEN CAST(Age AS INT) >= 36 AND  CAST(Age AS INT)  <= 50 THEN '36-50'
			WHEN CAST(Age AS INT) >= 26 AND  CAST(Age AS INT)  <= 35 THEN '26-35'
			WHEN CAST(Age AS INT) >= 18 AND  CAST(Age AS INT)  <= 25 THEN '18-25'
		END age_group
	FROM Bank_Customers_main
)

SELECT 
	Region,
	COUNT(*) AS total_transaction
FROM CTE_Demograpic  cd
JOIN Bank_Transactions_main btn
ON cd.CustomerID = btn.CustomerID
GROUP BY Region

-- Transaction rate per age group
SELECT 
	age_group, COUNT(TransactionID)AS total_transaction
FROM CTE_Demograpic  cd
JOIN Bank_Transactions_main btn
ON cd.CustomerID = btn.CustomerID
GROUP BY age_group



--The number of Channel of transaction per age group
SELECT 
	age_group, 
	COUNT(CASE WHEN btn.Channel='Online' THEN 1 END) AS online,
	COUNT(CASE WHEN btn.Channel='ATM' THEN 1 END) AS ATM,
	COUNT(CASE WHEN btn.Channel='Branch' THEN 1 END) AS Branch,
	COUNT(CASE WHEN btn.Channel='Mobile Banking' THEN 1 END) AS Mobile_Banking
FROM CTE_Demograpic  cd
JOIN Bank_Transactions_main btn
ON cd.CustomerID = btn.CustomerID
GROUP BY age_group