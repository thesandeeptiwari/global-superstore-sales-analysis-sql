/* =========================================================
   GLOBAL SUPERSTORE SALES ANALYSIS (SQL PROJECT)
   ========================================================= */


/* =========================================================
   PHASE 1 — BASIC BUSINESS OVERVIEW
   ========================================================= */

/* Query 1: Total Records */
SELECT COUNT(*) AS Total_Records
FROM superstore;

/* Query 2: Total Sales */
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;

/* Query 3: Total Profit */
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;

/* Query 4: Average Order Value */
SELECT ROUND(AVG(Sales),2) AS Avg_Order_Value
FROM superstore;

/* Query 5: Total Quantity Sold */
SELECT SUM(Quantity) AS Total_Quantity
FROM superstore;


/* =========================================================
   PHASE 2 — PRODUCT ANALYSIS
   ========================================================= */

/* Query 6: Top 10 Products by Sales */
SELECT "Product Name",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

/* Query 7: Top 10 Products by Profit */
SELECT "Product Name",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Profit DESC
LIMIT 10;

/* Query 8: Top 10 Loss Making Products */
SELECT "Product Name",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Profit ASC
LIMIT 10;


/* =========================================================
   PHASE 3 — CUSTOMER ANALYSIS
   ========================================================= */

/* Query 9: Top Customers by Sales */
SELECT "Customer Name",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;

/* Query 10: Most Profitable Customers */
SELECT "Customer Name",
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Profit DESC
LIMIT 10;


/* =========================================================
   PHASE 4 — CATEGORY ANALYSIS
   ========================================================= */

/* Query 11: Sales by Category */
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

/* Query 12: Profit by Category */
SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

/* Query 13: Sales by Sub-Category */
SELECT "Sub-Category",
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC;


/* =========================================================
   PHASE 5 — GEOGRAPHY ANALYSIS
   ========================================================= */

/* Query 14: Sales by Country */
SELECT Country,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Country
ORDER BY Total_Sales DESC
LIMIT 10;

/* Query 15: Sales by City */
SELECT City,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;

/* Query 16: Sales by Market */
SELECT Market,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Market
ORDER BY Total_Sales DESC;

/* Query 17: Sales by Region */
SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


/* =========================================================
   PHASE 6 — DISCOUNT ANALYSIS
   ========================================================= */

/* Query 18: Average Discount by Category */
SELECT Category,
       ROUND(AVG(Discount),2) AS Avg_Discount
FROM superstore
GROUP BY Category;

/* Query 19: High Discount Products */
SELECT "Product Name",
       ROUND(AVG(Discount),2) AS Avg_Discount
FROM superstore
GROUP BY "Product Name"
ORDER BY Avg_Discount DESC
LIMIT 10;


/* =========================================================
   PHASE 7 — EXECUTIVE INSIGHTS
   ========================================================= */

/* Query 20: Profit Margin Percentage */
SELECT ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM superstore;
