# Pizza-Sales-Data-Analysis

![image](https://github.com/Sravanthi-Duddeti/Pizza-Sales-Data-Analysis/assets/128029018/3b86c737-1724-4630-b7d2-790c18bc975b)


PROBLEM STATEMENT

A popular pizza store wants to optimize its sales and marketing strategies to increase revenue and customer satisfaction.To achieve this, the company needs to analyze its sales data to uncover insights into customer preferences, sales trends, and product performance.The goal is to uncover insights from the data and develop actionable recommendations to drive business growth.

About DataSet

This pizza sales dataset make up 12 relevant features:

order_id: Unique identifier for each order placed by a table

order_details_id: Unique identifier for each pizza placed within each order (pizzas of the same type and size are kept in the same row, and the quantity increases)

pizza_id: Unique key identifier that ties the pizza ordered to its details, like size and price

quantity: Quantity ordered for each pizza of the same type and size

order_date: Date the order was placed (entered into the system prior to cooking & serving)

order_time: Time the order was placed (entered into the system prior to cooking & serving)

unit_price: Price of the pizza in USD

total_price: unit_price * quantity

pizza_size: Size of the pizza (Small, Medium, Large, X Large, or XX Large)

pizza_type: Unique key identifier that ties the pizza ordered to its details, like size and price

pizza_ingredients: ingredients used in the pizza as shown in the menu (they all include Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce is specified)

pizza_name: Name of the pizza as shown in the menu

OBJECTIVES


Conduct a comprehensive sales performance analysis for a pizza store using SQL queries and visualize the findings using Power BI. The objective is to gain insights into sales trends, revenue distribution, and top performing products to inform strategic decision-making and optimize sales strategies.

DELIVERABLES

1. SQL Queries:

• Extract and aggregate sales data from the pizza sales dataset to calculate key metrics such as total sales revenue, average order value, Total Orders.

• Analyze sales trends over time (hourly, daily, monthly) to identify peak sales periods and seasonal variations.

• Calculate sales performance metrics for individual products, including best-selling pizzas, popular pizza sizes, and revenue contribution by product category.


2. Power BI visualizations:
• Develop interactive dashboards and visualizations to present the analysis findings in a clear and visually appealing manner according to business requirement.

• Create line charts to visualize sales trends over time, with filters for different time periods.

• Generate pie charts to illustrate revenue distribution by product category and size, highlighting top-selling items and revenue contribution.

• Incorporate slicers and filters to allow users to dynamically explore the data and uncover insights based on their specific criteria and interests.

SOFTWARE USED
• MySQL Workbench 8.0

• Microsoft Power BI 2024

Snapshots of Dashboard


![image](https://github.com/Sravanthi-Duddeti/Pizza-Sales-Data-Analysis/assets/128029018/6b1f1201-7f93-42ee-a803-0910411b4ebd)

![image](https://github.com/Sravanthi-Duddeti/Pizza-Sales-Data-Analysis/assets/128029018/e6247d0b-4cc0-4941-bf58-f8f2c4461b25)

 INSIGHTS
• FRIDAYS,SATURDAYS have the highest sales volume, comprising about 47% of total weekly sales, while Sundays and Tuesdays are typically slower days with lower sales.

• Peak sales occur during the SECOND QUARTER of the year and JULY being the month with highest sale.

• LARGE-sized pizzas are the most popular choice among customers, representing about 46% of total sales, followed by MEDIUM (30%) and SMALL (22%) sizes.

• Percentage share of total sales by all four Pizza Categories are almost same with CLASSIC category being the highest followed by SUPREME category.

• Among pizzas, THAI CHICKEN PIZZA contributes to maximum sales while CLASSIC DELUXE PIZZA are the most ordered one among the customers and BRIE CARRE PIZZA holds the position of least favoured pizza.
CheckOut The LiveDashBoard: https://shorturl.at/ui4Ab

