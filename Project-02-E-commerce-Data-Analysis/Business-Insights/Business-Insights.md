# Business Insights — Olist E-commerce Analysis

## 1. Data Validation Findings

- Total Orders: 99,441
- Unique Order IDs: 99,441
- Orders without matching customer records: 0

The Orders table passed the order ID uniqueness check, and all orders had a matching customer record.

## 2. Customer Analysis

The analysis uses customer_unique_id to identify actual customers across multiple orders.

- Repeat customer analysis: Completed
- Customer purchase frequency: Analysed
- Highest-spending customers: Analysed

Add actual numerical findings from the SQL query results before publishing.

## 3. Revenue Analysis

The project analyses:
- Monthly revenue
- Average Order Value (AOV)
- Revenue contribution by product category
- Month-over-month revenue comparison
- Cumulative revenue

Add verified values and observations from your SQL results.

## 4. Product and Seller Analysis

The project identifies:
- Top product categories by revenue
- Top sellers by revenue
- Product performance rankings

Add actual findings from your query outputs.

## 5. Delivery and Customer Reviews

The analysis covers:
- Order status distribution
- Average delivery time
- Estimated versus actual delivery
- Review score distribution
- Low-rated customer reviews

Add verified results and business interpretations.

## 6. Business Recommendations

Complete these recommendations after reviewing the actual results:
1. Identify opportunities to improve customer retention.
2. Focus on high-performing product categories.
3. Investigate delivery delays.
4. Review low-rated customer experiences.
5. Evaluate monthly revenue trends.

## Metric Definitions

- Payment revenue: Sum of payment_value; may include freight charges.
- Product revenue: Sum of order item prices; excludes freight charges.
- AOV: Total payment value divided by distinct orders.
- Repeat customer: A customer_unique_id associated with multiple orders.

## Conclusion

This SQL project demonstrates data exploration, validation, customer analysis, revenue analysis, delivery analysis, and business reporting using SQL Server.