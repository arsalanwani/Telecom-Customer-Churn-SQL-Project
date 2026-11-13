# Telecom Customer Churn Analysis Using SQL

## Project Overview

This project focuses on analyzing customer churn for a fictional telecommunications company using Microsoft SQL Server.

The objective is to explore customer information, examine data quality, connect customer records with ZIP code population data, and identify patterns associated with customer churn.

## Project Objectives

- Explore and understand telecom customer data.
- Identify duplicate records and missing values.
- Analyze customer demographics and tenure.
- Examine ZIP code population data.
- Join customer and population tables.
- Identify customer churn patterns across different business segments.
- Develop data-driven business recommendations.

## Dataset Information

The project uses the Maven Analytics Telecom Customer Churn dataset.

**Customer Churn Dataset**
- 7,043 customer records.
- Contains customer demographics, location, services, contract details, charges, and customer status.

**ZIP Code Population Dataset**
- 1,671 ZIP code records.
- Contains ZIP codes and their corresponding population values.

### Database Tables

| Table | Description |
|---|---|
| `Customer_Churn` | Customer information and service details |
| `zc_population` | ZIP code population information |

The tables are connected using the `Zip_Code` column.

## Tools & Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL

## SQL Concepts Used

- SELECT and WHERE
- COUNT, SUM, AVG, MIN, MAX
- DISTINCT
- GROUP BY and HAVING
- ORDER BY
- CASE WHEN
- INNER JOIN
- LEFT JOIN
- Subqueries
- Aggregate functions
- Window functions
- NULL value checks
- Percentage and churn rate calculations

## Project Analysis

### 1. Customer Data Exploration

- Total customer count
- Duplicate Customer ID detection
- Missing value analysis
- Number of distinct cities
- Youngest and oldest customer identification
- Shortest and longest customer tenure
- Customer status distribution

### 2. ZIP Code Population Analysis

- Total ZIP code records
- Duplicate ZIP code detection
- Missing ZIP code and population checks
- Highest population ZIP code
- Lowest population ZIP code
- Average ZIP code population

### 3. SQL JOIN Analysis

- Identifying customers with matching ZIP codes
- Finding unmatched customer ZIP codes
- Identifying ZIP codes without customer records
- Calculating customer count by ZIP code
- Combining ZIP code population and customer information

### 4. Business Analysis

The following business questions were investigated:

1. What is the overall customer status distribution?
2. Which contract type has the highest churn rate?
3. Which internet service type has the highest number of churned customers?
4. Which payment method has the highest number of churned customers?
5. How does customer tenure relate to churn?
6. Are customers with higher monthly charges more likely to churn?

## Key Findings

### Customer Overview

- The dataset contains 7,043 customer records.
- No duplicate Customer IDs were identified.
- The selected important columns contained no missing values.
- The dataset contains 1,106 distinct cities.
- Customer ages range from 19 to 80 years.
- Customer tenure ranges from 1 to 72 months.
- 454 customers joined, 1,869 churned, and 4,720 stayed.

### ZIP Code Analysis

- The population dataset contains 1,671 distinct ZIP codes.
- No duplicate ZIP codes or missing ZIP code/population values were identified.
- ZIP code 90201 has the highest population, with 105,285 people.
- ZIP code 90263 has the lowest population, with 11 people.
- The average ZIP code population is approximately 20,276.

### JOIN Analysis

- All 7,043 customer records matched a ZIP code in the population table.
- No unmatched customer ZIP codes were identified.

### Churn Analysis

**Overall customer status distribution:**

- Joined: 6.45%
- Churned: 26.54%
- Stayed: 67.02%

**Contract type:**

| Contract | Churn Rate |
|---|---:|
| Month-to-month | 45.84% |
| One year | 10.71% |
| Two year | 2.55% |

Month-to-month contracts have the highest churn rate.

**Internet service:**

Fiber optic has the highest number of churned customers (1,236), followed by DSL (307), Cable (213), and customers with a NULL internet type (113).

**Payment method:**

Bank withdrawal has the highest number of churned customers (1,329), followed by credit card (398) and mailed check (142).

**Monthly charges:**

| Monthly Charge Group | Total Customers | Churned Customers | Churn Rate |
|---|---:|---:|---:|
| High Charges | 3,524 | 1,251 | 35.50% |
| Medium Charges | 1,697 | 405 | 23.87% |
| Low Charges | 1,822 | 213 | 11.69% |

Customers in the high monthly charge group have the highest churn rate among these three groups.

## Business Recommendations

Based on the observed patterns:

1. **Review month-to-month contracts:** Consider retention offers and incentives that encourage customers to choose longer-term contracts.
2. **Investigate fiber optic churn:** Examine pricing, service quality, and customer support experiences among fiber optic customers.
3. **Review bank withdrawal customers:** Investigate whether billing experiences or payment-related issues contribute to customer dissatisfaction.
4. **Review high monthly charges:** Consider pricing transparency, suitable plans, and targeted retention offers.
5. **Improve customer retention:** Pay particular attention to customer segments showing higher churn rates.

These recommendations are suggested actions based on observed associations, not proof of the causes of churn.

## Project Structure

```text
Telecom-Customer-Churn-SQL-Project/
│
├── Telecom-Dataset-Churn/
│   ├── telecom_customer_churn.csv
│   └── telecom_zipcode_population.csv
│
├── SQL-queries/
│   └── Telecom_Churn_Analysis.sql
│
└── README.md
```

## Conclusion

This project provided practical experience in using SQL Server to explore, clean, connect, and analyze telecom customer data.

Through SQL queries, aggregate functions, conditional calculations, and JOIN operations, the project identified customer segments associated with higher churn rates.

The analysis demonstrates how SQL can be used to turn raw customer data into useful business insights and support data-driven decision-making.

---

**Project Type:** Beginner-Level SQL Data Analytics Project  
**Domain:** Telecommunications  
**Database:** Microsoft SQL Server  
**Author:** Arsalan Wani