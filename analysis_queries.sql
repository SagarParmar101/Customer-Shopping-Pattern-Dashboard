-- Customer Shopping Patterns (Istanbul malls, 2021 - 8 Mar 2023)
-- Table name: sales   (one row per invoice, revenue = price x quantity, in Turkish Lira)

-- Q1. Headline KPIs
SELECT COUNT(*)                                   AS transactions,
       ROUND(SUM(revenue) / 1000000.0, 1)         AS revenue_m_try,
       ROUND(SUM(revenue) * 1.0 / COUNT(*), 0)    AS avg_order_value,
       SUM(quantity)                              AS units_sold
FROM sales;

-- Q2. Revenue and share by mall
SELECT shopping_mall,
       ROUND(SUM(revenue) / 1000000.0, 1)                          AS revenue_m_try,
       ROUND(100.0 * SUM(revenue) / SUM(SUM(revenue)) OVER (), 1)  AS revenue_share_pct
FROM sales
GROUP BY shopping_mall
ORDER BY revenue_m_try DESC;

-- Q3. Category: value (revenue) vs volume (units)
SELECT category,
       ROUND(100.0 * SUM(revenue)  / SUM(SUM(revenue))  OVER (), 1) AS revenue_share_pct,
       ROUND(100.0 * SUM(quantity) / SUM(SUM(quantity)) OVER (), 1) AS units_share_pct,
       ROUND(SUM(revenue) * 1.0 / SUM(quantity), 0)                 AS avg_price_per_unit
FROM sales
GROUP BY category
ORDER BY revenue_share_pct DESC;

-- Q4. Does age change how people pay? (payment mix inside each age group)
SELECT age_group,
       ROUND(100.0 * SUM(CASE WHEN payment_method = 'Cash'        THEN 1 ELSE 0 END) / COUNT(*), 1) AS cash_pct,
       ROUND(100.0 * SUM(CASE WHEN payment_method = 'Credit Card' THEN 1 ELSE 0 END) / COUNT(*), 1) AS credit_pct,
       ROUND(100.0 * SUM(CASE WHEN payment_method = 'Debit Card'  THEN 1 ELSE 0 END) / COUNT(*), 1) AS debit_pct
FROM sales
GROUP BY age_group
ORDER BY age_group;

-- Q5. Yearly revenue (2023 is partial: data stops on 8 March)
SELECT SUBSTR(CAST(invoice_date AS VARCHAR), 1, 4)  AS year,
       ROUND(SUM(revenue) / 1000000.0, 1)            AS revenue_m_try,
       COUNT(*)                                      AS transactions
FROM sales
GROUP BY 1
ORDER BY 1;
