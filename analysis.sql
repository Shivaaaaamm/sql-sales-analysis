-- 📊 SQL Sales Analysis Project

-- 1. Total Sales by Category
SELECT "Category", SUM("Sales") AS Total_Sales
FROM superstore_raw
GROUP BY "Category"
ORDER BY Total_Sales DESC;

-- 2. Total Profit by Sub-Category
SELECT "Sub-Category", SUM("Profit") AS Total_Profit
FROM superstore_raw
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC;

-- 3. Top 5 Customers by Sales
SELECT "Customer Name", SUM("Sales") AS Total_Sales
FROM superstore_raw
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 5;

-- 4. Sales by Region
SELECT "Region", SUM("Sales") AS Total_Sales
FROM superstore_raw
GROUP BY "Region"
ORDER BY Total_Sales DESC;

-- 5. Profit Margin by Category
SELECT 
    "Category",
    SUM("Profit") * 1.0 / SUM("Sales") AS Profit_Margin
FROM superstore_raw
GROUP BY "Category"
ORDER BY Profit_Margin DESC;

-- 6. Discount Impact on Profit
SELECT "Discount", AVG("Profit") AS Avg_Profit
FROM superstore_raw
GROUP BY "Discount"
ORDER BY "Discount";
