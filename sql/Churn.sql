select count(*) from telco_churn;
select churn, count(*) from telco_churn group by churn ;
SELECT AVG(tenure)
FROM telco_churn
WHERE Churn = 'Yes';
select avg(MonthlyCharges) from telco_churn where churn = 'No' ; 
select contract , count(*) from telco_churn where churn = 'yes' group by Contract;
