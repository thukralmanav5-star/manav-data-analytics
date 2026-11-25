
# Project 03 – Marketing Campaign Analysis using Python

An exploratory data analysis project focused on customer behaviour, purchasing patterns and marketing campaign performance using Python.

## Project Overview

This project analyses customer personality and marketing campaign data to understand customer spending habits, campaign acceptance, purchasing preferences and engagement across different marketing channels.

Using Python libraries such as Pandas, NumPy, Matplotlib and Seaborn, the project transforms raw customer data into meaningful visualisations and business insights.

The objective is to understand customer behaviour and identify opportunities to improve marketing effectiveness and customer engagement.

## Project Objectives

- Understand customer demographics and characteristics.
- Analyse customer purchasing and spending behaviour.
- Identify top-performing product categories.
- Evaluate marketing campaign acceptance.
- Compare customer purchasing channels.
- Analyse responses to the latest marketing campaign.
- Identify patterns that can support customer segmentation.
- Generate actionable marketing recommendations.

## Dataset

**Dataset Name:** Customer Personality Analysis

**Source:** [Kaggle – Customer Personality Analysis](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)

The dataset contains 2,240 customer records and 29 columns.

It includes information about customer demographics, income, household composition, product spending, purchase channels, website activity and marketing campaign responses.

### Dataset Information

| Attribute | Description |
|---|---|
| ID | Unique customer identifier |
| Year_Birth | Customer birth year |
| Education | Education level |
| Marital_Status | Marital status |
| Income | Customer income |
| Kidhome | Number of children in household |
| Teenhome | Number of teenagers in household |
| Dt_Customer | Customer enrollment date |
| Recency | Days since last purchase |
| MntWines | Spending on wines |
| MntFruits | Spending on fruits |
| MntMeatProducts | Spending on meat products |
| MntFishProducts | Spending on fish products |
| MntSweetProducts | Spending on sweet products |
| MntGoldProds | Spending on gold products |
| NumDealsPurchases | Purchases made using discounts |
| NumWebPurchases | Purchases through the website |
| NumCatalogPurchases | Purchases through the catalogue |
| NumStorePurchases | Purchases in physical stores |
| NumWebVisitsMonth | Monthly website visits |
| AcceptedCmp1–5 | Responses to previous marketing campaigns |
| Response | Response to the latest campaign |

## Tools & Technologies

- Python
- Jupyter Notebook
- Pandas
- NumPy
- Matplotlib
- Seaborn
- GitHub

## Data Cleaning & Preparation

The dataset was prepared before performing exploratory data analysis.

Key data preparation activities included:

- Checking dataset dimensions and data types.
- Identifying and removing duplicate records.
- Checking missing values.
- Handling missing income values using median imputation.
- Converting customer enrollment dates into datetime format.
- Creating a total customer spending variable.
- Preparing demographic and campaign-related variables for analysis.

## Feature Engineering

A new variable named `Total_Spending` was created by combining spending across six product categories:

- Wines
- Fruits
- Meat Products
- Fish Products
- Sweet Products
- Gold Products

This variable helps evaluate overall customer purchasing behaviour.

## Key Performance Indicators (KPIs)

| KPI | Result |
|---|---:|
| Total Customers | 2,240 |
| Total Customer Spending | 1,356,988 |
| Average Customer Spending | 605.80 |
| Latest Campaign Acceptance Rate | 14.91% |
| Average Customer Income | 52,237.98 |

*Spending and income values are reported in the dataset's monetary units (BRL).*

## Exploratory Data Analysis

The project explores multiple areas of customer and marketing performance.

### 1. Customer Demographics

- Customer age distribution.
- Income distribution.
- Education and marital status.
- Household composition.

### 2. Product Category Spending

- Spending across six product categories.
- Comparison of customer purchasing preferences.
- Identification of higher-spending product categories.

### 3. Marketing Campaign Performance

- Analysis of historical campaign acceptance.
- Evaluation of the latest campaign response.
- Comparison of customer engagement across campaigns.

### 4. Purchase Channel Analysis

- Website purchases.
- Catalogue purchases.
- In-store purchases.
- Website visit behaviour.

### 5. Customer Behaviour

- Customer spending patterns.
- Purchase frequency.
- Discount-based purchasing behaviour.
- Relationship between customer characteristics and purchasing activity.

## Data Visualizations

The project includes the following visualisations:

| Visualization | Purpose |
|---|---|
| product_category_spending.png | Compare customer spending across product categories |
| customer_age_distribution.png | Understand customer age distribution |
| campaign_acceptance.png | Compare marketing campaign acceptance |
| purchase_channel_performance.png | Evaluate purchasing channel activity |
| latest_campaign_response.png | Analyse responses to the latest campaign |

## Key Business Insights

The analysis focuses on identifying:

- Product categories contributing most to customer spending.
- Differences in customer purchasing behaviour.
- Marketing campaign acceptance patterns.
- Customer engagement across online, catalogue and physical store channels.
- Opportunities to improve campaign targeting.
- Customer groups that may respond differently to marketing activities.

Detailed findings and actionable recommendations are documented in the project notebook and can be summarised separately in the analysis report.

## Project Structure

```text
Project-03-Marketing-Campaign-Analysis/
│
├── Dataset/
│   └── marketing_campaign.csv
│
├── Notebooks/
│   └── Marketing_Campaign_Analysis.ipynb
│
├── Visualizations/
│   ├── product_category_spending.png
│   ├── customer_age_distribution.png
│   ├── campaign_acceptance.png
│   ├── purchase_channel_performance.png
│   └── latest_campaign_response.png
│
├── requirements.txt
└── README.md
```

## How to Run This Project

1. Clone this GitHub repository.
2. Install the required Python libraries.
3. Open the Jupyter Notebook.
4. Load the marketing campaign dataset.
5. Execute the notebook cells to reproduce the analysis and visualisations.

Install dependencies using:

```bash
pip install -r requirements.txt
```

Note: The notebook reads the dataset using a tab separator:

```python
pd.read_csv("../Dataset/marketing_campaign.csv", sep="\t")
```

## Skills Demonstrated

- Python for Data Analysis
- Data Cleaning and Preprocessing
- Exploratory Data Analysis (EDA)
- Pandas and NumPy
- Data Visualisation
- Matplotlib and Seaborn
- Feature Engineering
- Customer Behaviour Analysis
- Marketing Analytics
- Business Insight Generation

## Author

**Manav Thukral**

Aspiring Data Analyst | Digital Marketing Professional

GitHub: [thukralmanav5-star](https://github.com/thukralmanav5-star)

---

*This project is part of my Data Analytics Portfolio, showcasing practical Python skills and the application of data analysis to real-world marketing problems.*
