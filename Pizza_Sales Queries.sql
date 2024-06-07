select * from pizza_sales;
--1. Total Revenue: 817860.05083847
select sum(total_price) as Total_Revenue from pizza_sales;
--2. Average Order Value 38.31
select round((sum(total_price)/count(Distinct order_id)),2) As Avg_Order From pizza_sales;
--3. Total Pizzas Sold :49574
select sum(Quantity)  As Total_Pizza_Sold from pizza_sales;
--4. Total Orders: 21350
select count(distinct order_id) as Total_Orders from pizza_sales;
--5. Average Pizzas Per Order:2.32
select CAST(CAST(sum(quantity) as Decimal(10,2))/CAST(count(distinct order_id) as Decimal(10,2))as Decimal(10,2)) as Avg_Pizzas_per_order
FROM pizza_sales
--6. Daily Trend for Total Orders:3158
select DATENAME(DW,Order_date) AS Order_Day, count(Distinct Order_Id)As Total_Orders from pizza_sales Group by DATENAME(Dw,Order_Date);
--7.Monthly Trend for Orders
select DateName(Month,Order_date) As Month_Name ,Count(Distinct Order_id) As Total_Orders from Pizza_sales group By DateName(Month,Order_Date)
select Pizza_category,cast(sum(total_price) as Decimal(10,2))as Total_Revenue,
CAST(SUM(total_price) *100/(select sum(Total_Price)from pizza_sales)as decimal(10,2)) As Pct from pizza_sales
GROUP BY pizza_category
 --9 % of Sales by Pizza Size
 /*
L	375318.70	45.89
M	249382.25	30.49
S	178076.50	21.77
XL	14076.00	1.72
XXL	1006.60 	0.12
*/
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;
-- 10.Total Pizzas Sold by Pizza Category
SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC
--Top 5 Pizzas by Revenue
select top 5 pizza_name,cast(sum(total_price) as decimal(10,2)) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue  desc
--Bottom 5 Pizzas by Revenue
select  top 5 pizza_name,cast(sum(total_price) as decimal(10,2)) as Total_revenue from pizza_sales
group by pizza_name
order by Total_revenue Asc
--Top 5 Pizzas by Quantity
select  top 5 pizza_name,cast(sum(Quantity) as decimal(10,2)) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity  desc
--. Bottom 5 Pizzas by Quantity
select  top 5 pizza_name,cast(sum(Quantity) as decimal(10,2)) as Total_Quantity from pizza_sales
group by pizza_name
order by Total_Quantity  
--Top 5 Pizzas by Total Orders
select  top 5 pizza_name,count(distinct Order_id)  as Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders  desc
--Bottom 5 Pizzas by Total Orders
select  top 5 pizza_name,count(distinct Order_id)  as Total_Orders from pizza_sales
group by pizza_name
order by Total_Orders  


