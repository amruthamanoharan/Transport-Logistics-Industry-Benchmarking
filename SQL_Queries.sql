** SQL queries used in the project **

️1. Identify the Most Profitable Companies
SELECT TOP 5 Companies.CompanyName, FinancialMetrics.OperatingProfitMargin
FROM Companies
INNER JOIN FinancialMetrics ON Companies.CompanyID = FinancialMetrics.CompanyID
ORDER BY FinancialMetrics.OperatingProfitMargin DESC;


️2. Revenue Trends by Industry
SELECT Companies.Industry, AVG(FinancialMetrics.Revenue) AS AvgRevenue
FROM Companies
INNER JOIN FinancialMetrics ON Companies.CompanyID = FinancialMetrics.CompanyID
GROUP BY Companies.Industry
ORDER BY AvgRevenue DESC;


️3. Fleet Size vs. On-Time Performance
SELECT Companies.CompanyName, PerformanceKPIs.FleetSize, PerformanceKPIs.OnTimePerformance
FROM Companies
INNER JOIN PerformanceKPIs ON Companies.CompanyID = PerformanceKPIs.CompanyID
ORDER BY PerformanceKPIs.OnTimePerformance DESC;

️4. Most Operationally Efficient Companies
SELECT TOP 5 Companies.CompanyName, PerformanceKPIs.AverageLoadFactor, PerformanceKPIs.OnTimePerformance
FROM Companies
INNER JOIN PerformanceKPIs ON Companies.CompanyID = PerformanceKPIs.CompanyID
ORDER BY PerformanceKPIs.AverageLoadFactor DESC, PerformanceKPIs.OnTimePerformance DESC;

