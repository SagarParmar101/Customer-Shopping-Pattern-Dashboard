# Data Dictionary: shopping_clean.csv

99,457 rows, 13 columns. One row = one invoice. Currency: Turkish Lira (TRY). Date range: 2021-01-01 to 2023-03-08.

| Column | Type | Description | Example |
|---|---|---|---|
| invoice_no | Text | Unique invoice ID | I138884 |
| customer_id | Text | Customer ID (each ID appears only once in this data) | C241288 |
| gender | Text | Female, Male | Female |
| age | Integer | Customer age (18 to 69) | 28 |
| category | Text | Clothing, Shoes, Technology, Cosmetics, Toys, Food & Beverage, Books, Souvenir | Clothing |
| quantity | Integer | Units bought on the invoice (1 to 5) | 5 |
| price | Number | Price **per unit** in TRY (cleaned from text like "$1,500 ") | 1500 |
| payment_method | Text | Cash, Credit Card, Debit Card | Credit Card |
| invoice_date | Date | Transaction date (YYYY-MM-DD) | 2022-08-05 |
| shopping_mall | Text | One of 10 Istanbul malls | Kanyon |
| revenue | Number | **Derived:** price x quantity (TRY) | 7500 |
| age_group | Text | **Derived:** 18-25, 26-35, 36-45, 46-55, 56-65, 65+ | 26-35 |
| month | Date | **Derived:** first day of the invoice month | 2022-08-01 |

## Cleaning notes

- The raw file had a column named `" price"` with a leading space and values stored as text with `$`, commas and trailing spaces.
- The raw `$` sign is not a real currency. The dataset describes prices in Turkish Lira.
- Raw dates are in M/D/YYYY format and were converted to YYYY-MM-DD.
- March 2023 has only 8 days of data (partial month).
- No missing values and no duplicate invoice numbers.
