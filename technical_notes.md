# Technical Notes Structure
## Data Cleaning
Standardized invoice_date to Excel date format for timeline filtering

Created custom Age Group column for binned demographic filtering

## Calculations and KPIs
Total Revenue: SUM(Price)

Number of Transactions: COUNTA(Invoice_No)

Average Transaction Value: Total Revenue / Number of Transactions

Logic for repeat and unique customer identification via Customer_ID counting

## Dashboard Design
Used Excel 2016 features: PivotTables, PivotCharts, slicers, and timeline control

High-contrast KPI cards created using formatted linked cells and shapes

## Interactivity
Cross-filtering across slicers for Age Group, Category, Gender, Payment Method

Timeline for monthly and yearly drill-downs without manual date grouping

## Usage Tips
Refresh data connections if new transactions are appended

Adjust slicers and timeline to explore different periods or customer segments

Replace underlying data file to extend dashboard with new data periods or stores
