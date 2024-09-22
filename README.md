# **Banking Transactions & Customer Analysis**

## **Overview**
This project analyzes banking transactions and customer behavior to address key business challenges related to **customer retention, loyalty programs, and marketing strategies**. The dataset includes customer demographics, transaction history, and past marketing campaign details.

The analysis focuses on identifying trends in customer behavior, especially those related to churn (customers who stop transacting), as well as evaluating the effectiveness of past marketing campaigns to improve customer engagement and retention.

## **Business Objectives**
The goals of this project are to:
1. Identify high-value customers based on their transaction patterns for loyalty program recommendations.
2. Segment customers demographically and by transaction activity to personalize marketing strategies.
3. Analyze the effectiveness of past marketing campaigns to inform future outreach and improve customer retention.
4. Analyze transaction patterns associated with customer churn to improve retention strategies.

## **Dataset**
The analysis is based on four datasets:
- **Bank_Customers.csv**: Contains customer demographics, including age, gender, and location.
- **Bank_Transactions.csv**: Contains customer transaction records with information on transaction type, amount, date, and channel.
- **Bank_MarketingCampaigns.csv**: Includes data on past marketing campaigns , total customer responses and their success rate.
- **Bank_CampaignInteractions.csv**: Includes data on past marketing campaigns and customer responses.

**Key Columns in the Dataset**:
- **TransactionID**: Unique identifier for each transaction.
- **CustomerID**: Unique identifier for each customer.
- **TransactionDate**: Date the transaction took place.
- **TransactionType**: Type of transaction (e.g., deposit, withdrawal, transfer).
- **Amount**: Amount transacted.
- **BalanceAfterTransaction**: Customer’s balance after the transaction.
- **Channel**: How the transaction was performed (e.g., online, branch, ATM).

## **Analysis**
The project focuses on several key analyses:
1. **Customer Segmentation**:
   - **Demographic Segmentation**: Segmenting customers by age, income, and location to create personalized marketing strategies. 
     - **Example**: Younger customers (18-30) may be interested in student loans or digital banking, while older customers (50+) may prefer retirement or healthcare-related services.
   - **Transaction-Based Segmentation**: Dividing customers into high, medium, and low transaction volume tiers to target high-value customers for loyalty programs.

2. **Churn Analysis**:
   - Identifying customers who are likely to churn based on inactivity (e.g., no transactions in 150 days). The results will guide marketing efforts to retain customers.
   
3. **Effectiveness of Campaigns**:
   - Analyzing the effectiveness of previous marketing campaigns based on customer response data to determine which strategies yield the highest engagement and conversion rates.
   - Insights gained from this analysis will help optimize future campaigns to improve customer retention and product uptake.

## **Tools & Technologies**
- **SQL**: Used for data extraction and analysis.
- **MIRCOSOFT SQL SERVER**: Used SQL workbench for carrying out analysis


## **Key Insights**
- **Customer Loyalty**: High-value customers were identified based on transaction volume and were targeted for loyalty programs to maintain long-term relationships.
- **Churn Prediction**: The churn analysis revealed patterns among customers who stopped transacting, enabling the creation of retention strategies.
- **Campaign Effectiveness**: The analysis of past marketing campaigns helped identify the strategies with the best response rates, guiding future outreach and improving customer retention.



# Banking Transactions Customer Analysis

This analysis explores various aspects of customer transactions, demographics, and campaign effectiveness to derive insights into customer behavior and retention strategies. Below are visualizations illustrating key findings from the analysis.

## Demographic Breakdown of Transactions by Age Group

![Demographic Number of Transactions by Age Group](https://github.com/vaschiho/Banking-Transactions-Customer-Analysis/blob/main/image/Demograhic_number_of_transaction_age_group.png)

This visualization illustrates how transaction volume varies across different age groups, helping identify which demographics are most active in their banking activities.

---

## Demographic Breakdown of Transactions by Region

![Demographic Number of Transactions by Region](https://github.com/vaschiho/Banking-Transactions-Customer-Analysis/blob/main/image/Demograhic_number_of_transaction_region.png)

This graph shows transaction distribution across various regions, which can guide regional marketing strategies and identify underserved areas.

---

## Campaign Effectiveness

![Campaign Effectiveness](https://github.com/vaschiho/Banking-Transactions-Customer-Analysis/blob/main/image/campaign_effectiveness.png)

This chart analyzes the performance of previous marketing campaigns, highlighting which campaigns resonated most with customers and drove the highest engagement.

---

## Churned Customers by Transaction Type

![Churned Transaction Type](https://github.com/vaschiho/Banking-Transactions-Customer-Analysis/blob/main/image/churned_transaction_type.png)

This visualization identifies the types of transactions most associated with customer churn, offering insights into customer behaviors that precede account closures.

---

## Number of Transactions by Age Group

![Number of Transactions by Age Group](https://github.com/vaschiho/Banking-Transactions-Customer-Analysis/blob/main/image/number_of_transaction_age_group.png)

Here we see the total number of transactions across age groups, which helps further refine targeted services and promotions for different demographic segments.



## **Conclusion**
This analysis provided key insights into customer behavior and retention. By segmenting customers based on their demographics and transaction patterns, we can offer personalized marketing strategies to improve engagement. Identifying high-value customers allows for targeted loyalty programs, while churn risk analysis enables proactive retention efforts. Additionally, analyzing the effectiveness of past marketing campaigns will guide future strategies, ensuring higher customer satisfaction and long-term value.





