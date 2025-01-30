# Transport & Logistics Industry Benchmarking - SQL & MS Access Analysis

## Project Overview
This project **analyzes financial performance and operational efficiency** in the **transport and logistics industry** using **Microsoft Access & SQL**. It benchmarks top companies across **logistics, airlines, shipping, rail freight, and port operations**.

## Key Objectives
✅ Identify **the most profitable companies** based on **Operating Profit Margin (%)**  
✅ Analyze **revenue trends across different industries** in transport & logistics  
✅ Evaluate **fleet size vs. on-time performance** to measure operational efficiency  
✅ Extract **insights from SQL queries** and generate **professional reports**  



## Technologies Used
- **Microsoft Access** (Database Design & Reporting)
- **SQL** (Querying & Data Analysis)



## Dataset & Database Schema
The dataset contains **financial and operational metrics** of **10 major companies** from **different transport industries**.

### **Tables in MS Access**
| **Table Name**      | **Description** |
|---------------------|----------------|
| **Companies**       | Stores details of companies (ID, Name, Industry, Country) |
| **FinancialMetrics** | Stores revenue, profit margin & total assets |
| **PerformanceKPIs**  | Tracks fleet size, load factor, and on-time performance |



## SQL Queries & Insights

### **1️⃣ Identify the Most Profitable Companies**
```sql
SELECT TOP 5 Companies.CompanyName, FinancialMetrics.OperatingProfitMargin
FROM Companies
INNER JOIN FinancialMetrics ON Companies.CompanyID = FinancialMetrics.CompanyID
ORDER BY FinancialMetrics.OperatingProfitMargin DESC;
```
**Insight:**
- Maersk is the most profitable company with 12% profit margin
- Other top companies: UPS (11.5%), DHL (10.2%), CMA CGM (10%), FedEx (9.8%)

### **2️⃣ Revenue Trends by Industry**
```sql
SELECT Companies.Industry, AVG(FinancialMetrics.Revenue) AS AvgRevenue
FROM Companies
INNER JOIN FinancialMetrics ON Companies.CompanyID = FinancialMetrics.CompanyID
GROUP BY Companies.Industry
ORDER BY AvgRevenue DESC;
```
 **Insight:**
- Logistics is the highest revenue-generating industry (€67.5B)
- Shipping follows (€52.5B), Airlines (€42.5B), Port Operations (€25B), Rail Freight (€15B)

### **3️⃣ Fleet Size vs. On-Time Performance**
```sql
SELECT Companies.CompanyName, PerformanceKPIs.FleetSize, PerformanceKPIs.OnTimePerformance
FROM Companies
INNER JOIN PerformanceKPIs ON Companies.CompanyID = PerformanceKPIs.CompanyID
ORDER BY PerformanceKPIs.OnTimePerformance DESC;
```
**Insight:**
- DHL has the best On-Time Performance (95%) with a fleet size of 500
- CMA CGM, Air France-KLM, and Lufthansa also have competitive OTP scores

### **4️⃣ Most Operationally Efficient Companies**
```sql
SELECT TOP 5 Companies.CompanyName, PerformanceKPIs.AverageLoadFactor, PerformanceKPIs.OnTimePerformance
FROM Companies
INNER JOIN PerformanceKPIs ON Companies.CompanyID = PerformanceKPIs.CompanyID
ORDER BY PerformanceKPIs.AverageLoadFactor DESC, PerformanceKPIs.OnTimePerformance DESC;
```
**Insight:**
- DHL ranks highest with a 90% Load Factor & 95% OTP
- FedEx, Lufthansa, CMA CGM, and Air France-KLM also show strong efficiency

## 📑 Reports (Generated in MS Access)
The following reports were created and exported as PDFs:

📌 **[Top 5 Most Profitable Companies Report](./Reports/Top_5_Profitable_Companies-2024.pdf)**  
📌 **[Revenue Trends by Industry Report](./Reports/Revenue_Trends_by_Industry.pdf)**  
📌 **[Operational Efficiency Report](./Reports/Operational_Efficiency_Report.pdf)**  
📌 **[Fleet Size vs. On-Time Performance Report](./Reports/FleetSize_vs_OnTimePerformance_Report.pdf)**

## How to Use This Project
1️⃣ **View Reports** (No Setup Required)
- Download and open the PDF reports from this repository.
- These reports contain key insights on profitability, industry revenue trends, and operational efficiency.
2️⃣ **Run SQL Queries** (For Advanced Users)
- Open Microsoft Access and load `Transport_Benchmarking.accdb`.
- Go to the `Queries` section and run any of the saved SQL queries.
- You can modify or extend queries to perform further analysis.


## Repository Contents
📁 `Transport_Benchmarking.accdb` - The Microsoft Access Database
📁 `SQL_Queries.sql` - Contains all SQL queries used in the project
📁 `Reports/` - Folder containing exported PDF reports
📁 `README.md` - Documentation of the project


## Conclusion
This project successfully demonstrates SQL-based financial analysis for the transport & logistics industry. It provides actionable insights into company profitability, industry revenue trends, and operational efficiency.
