# Customer Churn Analysis (SQL & Power BI)

## Project Overview
Customer churn is a critical business problem where organizations lose customers due to dissatisfaction, pricing, or competitive alternatives.

This project analyzes telecom customer data to identify churn patterns, high-risk customer segments, and key factors influencing churn using SQL for analysis and Power BI for visualization.

## Problem Statement
Telecom companies face significant revenue loss due to customer churn.

This analysis aims to answer:
- Which customer segments are most likely to churn?
- How does contract type influence churn behavior?
- What patterns can help businesses take proactive retention actions?

## Approach
The project follows a structured data analysis workflow:

1. **Data Understanding**
   - Reviewed customer attributes such as contract type, tenure, payment method, and churn status
   - Checked for inconsistencies and missing values

2. **SQL-Based Analysis**
   - Used SQL queries to segment customers and calculate churn distribution
   - Performed aggregations and filtering to analyze churn across different customer groups

3. **Visualization**
   - Built an interactive Power BI dashboard to explore churn trends
   - Used filters and slicers to analyze high-risk customer segments

## Key Insights
- Customers on **month-to-month contracts exhibit significantly higher churn** compared to long-term contracts
- Contract type emerged as a strong indicator of customer retention
- Customers with long-term contracts show greater stability and lower churn rates

## Business Recommendations
- Introduce targeted retention offers or incentives for month-to-month customers
- Encourage customers to shift toward long-term contracts through discounts or added benefits
- Prioritize retention efforts on high-risk customer segments identified in the analysis

## Tools & Technologies
- **SQL (MySQL):** Data querying, aggregation, and customer segmentation
- **Power BI:** Interactive dashboards and visual analysis
- **Excel:** Initial data inspection and formatting

## Sample SQL Query
```sql
-- Analyze customer churn by contract type
-- This query identifies which contract types have the highest churn count

SELECT 
    Contract,
    COUNT(*) AS churn_count
FROM customer_churn
WHERE Churn = 'Yes'
GROUP BY Contract
ORDER BY churn_count DESC;
