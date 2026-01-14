# Customer Shopping Patterns Portfolio Dashboard

An interactive Excel dashboard analyzing retail transaction data from major Istanbul malls (2021-2023) to provide actionable insights on sales performance, customer behavior, and payment trends.

## Dashboard Demo (Power BI)
![Customer Shopping Patterns Portfolio Dashboard](https://github.com/user-attachments/assets/bef7b717-0e1a-4254-b900-dc5e6fcb8a72)


## 🎯 Project Overview

This project delivers a comprehensive business intelligence solution using Excel's advanced features to transform raw transaction data into an executive-ready dashboard. The solution emphasizes clean KPI design, intuitive filtering, and time-based analytics to support rapid business decision-making.

## 📊 Dataset

- **Source**: Customer Shopping Dataset from Kaggle
- **Size**: 99,457 transactions across 10 columns
- **Coverage**: Invoice data, customer demographics, product categories, pricing, payment methods, dates, and mall locations
- **Time Period**: 2021-2023

## 🎯 Objectives

- Build an executive-friendly dashboard summarizing revenue, purchasing activity, product mix, and customer segments
- Enable rapid drill-down analysis by time, mall, category, age group, gender, and payment method
- Provide interactive filtering capabilities for answering common retail questions without manual formula writing

## 🔍 Key Business Questions Answered

- What are total revenue, transaction volume, and average transaction value across the analysis period?
- How do category performance, gender spending patterns, and payment methods contribute to overall sales?
- What trends emerge when filtering by age groups, time periods, and customer segments?

## 🛠️ Technical Implementation

### Data Preparation & Cleaning
- **Date Standardization**: Converted mixed text and DMY/MDY formats into Excel date format for timeline analysis
- **Custom Grouping**: Created Age Group bins (18-25, 26-35, 36-45, etc.) via helper columns for non-uniform slicer ranges
- **Data Validation**: Ensured data integrity across all fields for accurate calculations

### Modeling & Calculations
- **KPI Development**: Structured table formulas and PivotTables for core metrics
  - Total Revenue = SUM(Price)
  - Number of Transactions = COUNTA(Invoice_No)
  - Average Transaction Value = Revenue ÷ Transactions
- **Customer Analysis**: Prepared repeat and unique customer logic for portfolio expansion

### Dashboard Architecture
- **Platform**: Excel with PivotTables, PivotCharts, Slicers, and Timeline
- **Design System**: High-contrast KPI cards with consistent color accents for readability
- **Interactivity**: Connected slicers and timeline for seamless cross-filtering

## 📈 Dashboard Features

### Interactive Controls
- **Slicers**: Age Group, Category, Gender, Payment Method for one-click segmentation
- **Timeline**: Monthly and yearly exploration for seasonality analysis and period comparisons

### Visual Components
- **KPI Strip**: Total Revenue, Transaction Count, Average Transaction Value
- **Charts**: 
  - Top Category Performance (Bar Chart)
  - Payment Method Distribution
  - Gender Spending Analysis
  - Monthly Sales Trends (Line Chart)

## 💡 Key Insights & Analytics

- Clear visualization of dominant spending categories and their performance trends
- Payment preference patterns across different customer segments
- Gender and age group response analysis across various time windows
- Real-time filter propagation enabling fast, iterative analysis for retail decision cycles

## 📁 Repository Structure

```
Customer-Shopping-Patterns-Dashboard/
├── README.md
├── Customer_Shopping_Data_Dashboard.xlsx
├── data/
│   └── customer_shopping_data.csv
├── screenshots/
│   ├── dashboard_overview.png
└── documentation/
    └── project_report.pdf
```

## 🚀 Getting Started

1. **Download**: Clone this repository or download the Excel file directly
2. **Open**: Launch `Customer_Shopping_Data_Dashboard.xlsx` in Excel 2016 or later
3. **Refresh**: Refresh data connections if prompted
4. **Explore**: Use slicers and timeline to filter and analyze data interactively

## 🔄 How to Extend

1. **New Data**: Replace or append new transactions following the same schema
2. **Additional Periods**: Extend timeline analysis for new time ranges
3. **New Retailers**: Adapt the model for different retail datasets
4. **Advanced Features**: Add calculated fields or measures for deeper analysis

## 💼 Skills Demonstrated

- **Data Analysis**: Excel data cleaning, date normalization, custom grouping
- **Business Intelligence**: PivotTables/Charts, slicers, timeline implementation
- **Dashboard Design**: Executive reporting standards, KPI engineering
- **Interactive Development**: Formula-driven calculations, cross-filtering capabilities

## 📸 Screenshots

![dashboard](https://github.com/SagarParmar101/customer-shopping-dashboard/blob/a683e7b9becc1bae937a738f18d403880bb2fd85/customer-shopping-dashboard.PNG)

## 📄 Documentation

- [Project Report](https://github.com/SagarParmar101/customer-shopping-dashboard/blob/4eed886ab7566a90b4f608b4db61dfbea2759e7c/project_report.pdf) - Detailed analysis and findings
- [Dashboard Screenshots](#screenshots) - Visual overview of all components

## 📋 Data Citation

**Dataset**: "Customer Shopping Dataset – Retail Sales Data"  
**Source**: Kaggle  
**URL**: https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset

## 📧 Contact

Connect with me for questions about this project or collaboration opportunities:
- **LinkedIn**: [www.linkedin.com/in/sagar-parmar2025]
- **Portfolio**: [https://sagarparmar101.github.io/]

---

*This project demonstrates advanced Excel capabilities in business intelligence and data visualization, showcasing skills relevant to data analyst and business intelligence roles.*
