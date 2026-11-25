# Customer Shopping Patterns: Istanbul Malls (2021 - 2023)

An analysis of how customers shop in 10 Istanbul malls: 99,457 retail transactions, cleaned in Python, queried in SQL (DuckDB) and shown in a two-page Looker Studio dashboard.

**Live dashboard:** [Open in Looker Studio](https://datastudio.google.com/reporting/af819c05-980e-4ca0-a085-7312c2a706af) (works on phone and tablet, no login needed)

![Dashboard page 1](dashboard_page1.png)
![Dashboard page 2](dashboard_page2.png)

## Question
How do customers shop across malls, categories, age groups, genders and payment methods, and where does the revenue come from?

## Data
- Source: Kaggle, [Customer Shopping Dataset](https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset).
- 99,457 rows, one row per invoice. 10 malls, 8 categories, 3 payment methods, ages 18 to 69, dates 1 Jan 2021 to 8 Mar 2023.
- Prices are per unit, in Turkish Lira (TRY). Revenue = price x quantity.

## What I did
1. **Python (pandas):** cleaned the file (price text such as `"$1,500 "` to numbers, dates parsed as M/D/YYYY) and created `revenue`, `age_group` and `month`. Checks: 0 missing values, 0 duplicate invoices.
2. **SQL (DuckDB):** 5 queries in `analysis_queries.sql` for KPIs, mall share, category value vs volume, payment mix by age group and yearly revenue.
3. **Looker Studio:** 2 pages with 5 KPI cards, 9 charts and 6 report-level filters (date, mall, category, payment method, gender, age group).
   - Page 1, Executive Overview: KPIs, monthly revenue, and revenue by category, mall, payment method and age group.
   - Page 2, Category and Customer Insights: value vs volume by category, mall x category heatmap, payment mix by age group, average order value by gender, and a findings panel.

## Findings (in this dataset)
- Total revenue is 251.5M TRY from 99,457 transactions; the average order value is 2,529 TRY.
- Clothing, Shoes and Technology bring 95% of revenue but only 50% of units sold. Cosmetics, Toys, Food & Beverage, Books and Souvenir bring about 5% of revenue and 50% of units.
- Mall of Istanbul and Kanyon bring 40% of revenue (50.9M and 50.5M TRY).
- Payment mix is almost the same in every age group: about 45% cash, 35% credit card, 20% debit card.
- Women make 60% of revenue because they make 60% of transactions. Average order value is the same: 2,525 TRY (women) and 2,534 TRY (men).
- Monthly revenue is flat at about 9.6M TRY, and yearly revenue is 114.5M (2021) and 115.4M (2022).

## Limitations
- The data looks synthetic (very evenly spread), so the findings describe this dataset, not real Istanbul retail.
- Every Customer_ID appears only once, so repeat-purchase and RFM analysis are not possible.
- March 2023 has only 8 days of data, so it is left out of the monthly trend.
- There is no cost or profit data, so the analysis covers revenue only.

## Files
`shopping_clean.csv` cleaned data · `customer_shopping_data.csv` original Kaggle data · `shopping_analysis.ipynb` cleaning and SQL notebook · `analysis_queries.sql` the 5 queries · `data_dictionary.md` column descriptions · `dashboard_page1.png`, `dashboard_page2.png` screenshots

## Contact
Sagar Parmar · [LinkedIn](https://www.linkedin.com/in/sagar-parmar2025) · [Portfolio](https://sagarparmar.pages.dev)
