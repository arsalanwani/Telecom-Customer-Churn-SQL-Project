CREATE DATABASE Telecom_churn


use telecom_churn
select count(*) from customer_churn


select zip_code,count(*) as total_zip_codes from zc_population
group by zip_code 
having count(*) > 1