# IKEA_Customer_Analysis
# 🛒 IKEA Customer Analytics | End-to-End Data Analytics Project

## 📌 Project Overview

This project focuses on analyzing IKEA customer data to understand customer behaviour, revenue performance, customer segmentation, customer retention, and churn patterns.

The project follows an end-to-end data analytics workflow using **SQL, Python (Pandas), and Microsoft Power BI** to transform raw retail transaction data into meaningful business insights.

An interactive Power BI dashboard was developed to monitor key performance indicators (KPIs), evaluate customer purchasing behaviour, analyze customer retention, and understand customer value through RFM analysis.

## 🎯 Business Objectives

- Analyze overall customer and revenue performance.
- Understand customer distribution across different segments.
- Evaluate customer retention and churn patterns.
- Perform RFM (Recency, Frequency, Monetary) analysis.
- Identify country-wise differences in customer value.
- Analyze customer trends across months, quarters, and years.
- Develop interactive dashboards to support data-driven decision-making.

## 🛠️ Tools & Technologies

| Technology | Purpose |
|---|---|
| SQL | Data querying and initial data analysis |
| Python | Data analysis and preprocessing |
| Pandas | Data cleaning, manipulation, and transformation |
| Microsoft Power BI | Interactive dashboard development and visualization |

## 🔄 Project Workflow

The project was completed in three major stages:

### 1. SQL – Data Querying and Analysis

- Explored the retail transaction data using SQL.
- Queried customer and transaction-related information.
- Performed data analysis using SQL queries.
- Extracted relevant information for further analysis.

### 2. Python (Pandas) – Data Cleaning and Processing

- Imported and inspected the raw datasets using Pandas.
- Performed data cleaning and preprocessing.
- Combined the two raw datasets into a consolidated dataset.
- Handled data inconsistencies and prepared the processed dataset for analysis.

### 3. Power BI – Dashboard Development

- Imported the processed dataset into Power BI.
- Created KPI cards to monitor business performance.
- Developed customer segmentation visualizations.
- Analyzed customer retention and churn patterns.
- Created monthly, quarterly, and yearly trend visualizations.
- Developed an RFM Analysis dashboard.
- Added interactive slicers for dynamic data exploration.

## 📊 Dashboard Overview

The project contains two main dashboard pages:

### 1. Business Overview

This dashboard provides an overview of customer and revenue performance.

**Key Performance Indicators (KPIs)**

| Metric | Value |
|---|---:|
| Total Customers | 6K |
| Total Revenue | $17.4M |
| Churn Rate | 50.9% |
| Average Customer Value | 3.0K |

*These values represent the dashboard's displayed figures under its default filter selection.*

**Key Visualizations:**

- Total Customers by Segment
- Customer Retention by Segment
- Total Customers by Month
- Total Customers by Quarter
- Total Customers by Year

### 2. RFM Analysis

RFM stands for **Recency, Frequency, and Monetary**. It is a customer analysis technique used to understand purchasing behaviour.

**RFM Components:**

- **Recency (R):** How recently a customer made a purchase.
- **Frequency (F):** How frequently a customer makes purchases.
- **Monetary (M):** How much value a customer generates.

**Key Visualizations:**

- Country Performance Summary
- Average Customer Value by Country
- Churn Percentage by Month
- Churn Percentage by Quarter
- Churn Percentage by Year

## 🎛️ Interactive Dashboard Features

The dashboards include interactive slicers for:

- Month
- Year
- Quarter
- Country
- Customer Segment
- Churn Status

These filters allow users to explore customer performance and identify trends across different dimensions.

## 💡 Key Business Insights

The dashboard analysis highlights several areas of business interest:

**1. Customer Churn**

The overall displayed churn rate is approximately 50.9%, highlighting the importance of investigating customer retention and identifying potential churn drivers.

**2. Customer Segmentation**

The Lost segment represents the largest customer segment in the displayed customer distribution, indicating an opportunity to investigate customer re-engagement strategies.

**3. Churn Trends**

The monthly and quarterly churn visualizations help identify periods with higher observed churn percentages and areas requiring further investigation.

**4. Country-wise Customer Value**

The country performance analysis reveals differences in customer value and revenue contribution across geographical markets, highlighting opportunities for more targeted customer strategies.

## 📁 Repository Structure

```text
IKEA_Customer_Analysis/
│
├── SQL/
│   └── Customer_Analysis.sql
│
├── Python/
│   └── Customer_Data_Analysis.ipynb
│
├── PowerBI/
│   └── Dashboard.pbix
│
├── Screenshots/
│   ├── Landing_Page.png
│   ├── Business_Overview.png
│   └── RFM_Analysis.png
│
├── Documentation/
│   └── business_insights.md
│
└── README.md
```

## 📂 Dataset

The project uses two raw retail transaction datasets that were cleaned and joined to create a consolidated dataset for further analysis.

Due to the large file sizes, the datasets are hosted on Google Drive.

**Raw Datasets:**
- `online_retail_part1.csv`
- `online_retail_part2.csv`
- (https://drive.google.com/drive/folders/1x73s9_DhLBmp2IFKws72i1ZGDyfXell8?usp=drive_link)

**Processed Dataset:**
- `RetailCleaned.csv`
-  (https://drive.google.com/drive/folders/1wPRmqQ0uraHueIMZV-58IOOg4smn24vN?usp=drive_link)

After downloading, place the CSV files in the appropriate dataset folders before running the Python notebook or reproducing the analysis.

## 🚀 How to Explore the Project

1. Clone or download this GitHub repository.
2. Download the datasets using the Google Drive link provided above.
3. Explore the SQL folder to understand the queries used for data analysis.
4. Open the Python Jupyter Notebook to review the data cleaning and processing steps.
5. Open the Power BI file using Microsoft Power BI Desktop.
6. Explore the Business Overview and RFM Analysis dashboard pages.
7. Use the interactive slicers to analyze customer segments, revenue, and churn patterns.

## 📚 Key Learnings

Through this project, I gained practical experience in:

- Using SQL for querying and analyzing retail transaction data.
- Performing data cleaning and manipulation using Python Pandas.
- Combining multiple datasets into a consolidated dataset.
- Building interactive dashboards using Microsoft Power BI.
- Analyzing customer segmentation and purchasing behaviour.
- Understanding RFM analysis and customer churn.
- Translating analytical findings into business-oriented insights.

## 📝 Conclusion

This project demonstrates an end-to-end data analytics workflow using SQL, Python (Pandas), and Power BI.

By combining data querying, data preprocessing, and interactive visualization, the project explores customer behaviour, revenue performance, customer segmentation, and churn patterns.

The analysis highlights opportunities to improve customer retention, understand customer value, and support data-driven business decisions.

---

