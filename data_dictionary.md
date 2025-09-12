# Data Dictionary for Customer Shopping Dataset

| Column Name   | Data Type | Description                                      | Example Values          |
|---------------|-----------|------------------------------------------------|------------------------|
| Invoice_No    | Text      | Unique identifier for each transaction          | INV00123               |
| Customer_ID   | Text      | Unique identifier for each customer              | CUST56789              |
| Gender        | Categorical | Customer gender                                  | Male, Female           |
| Age           | Integer   | Customer age                                     | 23, 45                 |
| Age_Group     | Categorical | Custom bins of age ranges                        | 18-25, 26-35, 36-45    |
| Category      | Categorical | Product category purchased                       | Electronics, Clothing  |
| Quantity      | Integer   | Number of units purchased per transaction       | 1, 2, 3                |
| Price         | Float     | Price paid per unit in local currency            | 150, 2999.99           |
| Payment_Method| Categorical | Mode of payment used                             | Cash, Credit Card, Online Payment |
| Invoice_Date  | Date      | Date of transaction, standardized to Excel date | 2021-03-15             |
| Shopping_Mall | Categorical | Name of the mall where purchase occurred        | Mall A, Mall B         |

