
# Project 02 – E-commerce Data Analysis using SQL

An end-to-end SQL analysis of the Olist Brazilian E-Commerce Public Dataset to understand customer behaviour, sales performance, product trends, seller performance and delivery operations.

## Project Overview

This project focuses on analysing an e-commerce business using Microsoft SQL Server.

The analysis uses multiple relational datasets from Olist to extract meaningful business insights through SQL queries, joins, aggregations, Common Table Expressions (CTEs), subqueries and window functions.

The objective is to transform raw transactional data into actionable insights that can support business decision-making.

## Project Objectives

- Analyse overall e-commerce performance.
- Understand customer purchasing behaviour.
- Identify revenue trends and sales patterns.
- Evaluate product category performance.
- Analyse seller performance.
- Understand payment preferences.
- Evaluate delivery performance and delays.
- Examine customer reviews and satisfaction.
- Identify repeat customers and high-value customers.

## Dataset

**Dataset Name:** Brazilian E-Commerce Public Dataset by Olist

**Source:** [Kaggle – Olist Brazilian E-Commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset contains approximately 100,000 orders from a Brazilian e-commerce platform between 2016 and 2018.

### Dataset Files

The project uses nine CSV files:

| Dataset | Description |
|---|---|
| olist_customers_dataset.csv | Customer information and location |
| olist_geolocation_dataset.csv | Brazilian zip code and geographical information |
| olist_order_items_dataset.csv | Products purchased in each order |
| olist_order_payments_dataset.csv | Payment methods and transaction values |
| olist_order_reviews_dataset.csv | Customer reviews and ratings |
| olist_orders_dataset.csv | Order details, status and timestamps |
| olist_products_dataset.csv | Product information and categories |
| olist_sellers_dataset.csv | Seller information and location |
| product_category_name_translation.csv | Portuguese-to-English category translation |

### Database Overview

The data was imported into Microsoft SQL Server using SQL Server Management Studio (SSMS).

Database Name: `Olist_Ecommerce_Analysis`

Key table record counts:

| Table | Records |
|---|---:|
| Customers | 99,441 |
| Geolocation | 1,000,163 |
| Order Items | 112,650 |
| Order Payments | 103,886 |
| Order Reviews | 99,224 |
| Orders | 99,441 |
| Products | 32,951 |
| Sellers | 3,095 |
| Category Translation | 72 |

## Tools & Technologies

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL
- GitHub

## SQL Concepts Used

The project includes practical implementation of:

- SELECT, WHERE and ORDER BY
- GROUP BY and HAVING
- Aggregate Functions: SUM, AVG, COUNT
- INNER JOIN and LEFT JOIN
- CASE WHEN statements
- Common Table Expressions (CTEs)
- Subqueries
- DISTINCT and NULL handling
- Date and Time Functions
- DATEDIFF and DATEPART
- Window Functions
- RANK()
- LAG()
- Running Totals
- Data Validation and Exploration

## Analysis & Query Breakdown

A total of 30 SQL queries were developed and organised into seven analytical sections.

### 1. Database Exploration & Data Validation

- Checked record counts across all tables.
- Explored customer and order datasets.
- Identified unique customers.
- Validated relationships between orders and customers.

### 2. Customer & Order Analysis

- Calculated overall e-commerce performance metrics.
- Identified repeat customers.
- Analysed order status distribution.
- Evaluated monthly revenue trends.
- Calculated Average Order Value (AOV).

### 3. Delivery Performance Analysis

- Calculated average delivery time.
- Compared estimated and actual delivery dates.
- Identified delayed deliveries.
- Analysed delivery performance by customer state.
- Categorised delivery delays.

### 4. Payment Analysis

- Analysed payment methods.
- Evaluated payment values.
- Studied payment instalments.
- Segmented orders by transaction value.

### 5. Product & Seller Performance

- Identified top-performing product categories.
- Ranked sellers by product revenue.
- Analysed category order volume.
- Evaluated seller performance by state.
- Identified products with the highest average item prices.

### 6. Customer Review Analysis

- Analysed customer review score distribution.
- Compared average review scores across order statuses.

### 7. Advanced SQL & Business Analysis

- Ranked customers by total spending.
- Calculated revenue by product category.
- Compared current and previous monthly revenue.
- Calculated cumulative revenue using running totals.
- Analysed customer spending across Brazilian states.

## Key Business Insights

The SQL analysis is designed to identify:

- Customer segments contributing most to overall spending.
- Product categories generating the highest revenue.
- Sellers contributing significantly to product sales.
- Payment methods preferred by customers.
- States with stronger customer spending.
- Delivery delays and operational performance gaps.
- Monthly revenue patterns and changes over time.
- Customer satisfaction patterns through review scores.

Detailed findings and business recommendations are documented separately in the `Business-Insights` folder.

## Project Structure

```text
Project-02-E-commerce-Data-Analysis/
│
├── Dataset/
│   ├── olist_customers_dataset.csv
│   ├── olist_geolocation_dataset.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_sellers_dataset.csv
│   └── product_category_name_translation.csv
│
├── SQL/
│   └── Olist-Ecommerce-Analysis.sql
│
├── Business-Insights/
│   └── Business-Insights.md
│
└── README.md
```

## Important Analytical Notes

- Product revenue calculated using `order_items.price` excludes freight charges.
- Payment values are sourced separately from the order payments table.
- `customer_unique_id` identifies customers across multiple customer records, while `customer_id` identifies individual customer records associated with orders.
- The order-value segments used in the SQL analysis are illustrative thresholds, not official business-defined segments.
- Monthly revenue comparisons use the previous available month in the dataset.

## Skills Demonstrated

- Relational Database Analysis
- SQL Query Writing
- Data Exploration and Validation
- Data Cleaning and Preparation
- Business Intelligence
- Customer Behaviour Analysis
- Revenue Analysis
- E-commerce Analytics
- Advanced SQL and Window Functions
- Business Insight Generation

## Author

**Manav Thukral**

Aspiring Data Analyst | Digital Marketing Professional

GitHub: [thukralmanav5-star](https://github.com/thukralmanav5-star)

---

*This project is part of my Data Analytics Portfolio, demonstrating practical SQL skills and the ability to translate raw business data into meaningful insights.*
