# 📊 SQL Queries for Sales Data Analysis

This SQL file contains a series of queries designed for analyzing sales data from the `online_sale` table. The queries focus on extracting key performance indicators such as sales trends, revenue, and order volume, grouped by year and month.

---

## 🚀 Features

- **Extract Month from Order Date**  
  Extracts the month from the `order_date` field and displays it alongside the `order_id` and `order_date` for easy analysis.

- **Total Orders by Year and Month**  
  Groups the data by year and month, providing a count of the total number of orders within each period.

- **Total Revenue by Year and Month**  
  Calculates the total revenue for each year and month by summing the `amount` of sales in each period.

- **Order Volume by Year and Month**  
  Counts the distinct `order_id`s for each year and month to determine the total volume of orders within each period.

- **Revenue Sorted by Year and Month**  
  Shows total revenue, grouped by year and month, sorted in a way that helps identify the most profitable periods.

- **Filter by Year and Month**  
  Allows filtering the data to focus on specific time periods, such as the first few months of a particular year, for a more targeted analysis.

---

## 🛠️ Tools Used

- **MySQL** or any SQL-based relational database management system
- **Data Source:** `online_sale` table (example: eCommerce or sales transaction data)

---

## 📌 How to Use

1. **Create the Database and Table:**
   - You will need to set up the `sale` database and `online_sale` table within your SQL client to run these queries.

2. **Populate the Table with Data:**
   - Insert your sales data into the `online_sale` table. This can be done manually or through automated imports from your data source.

3. **Run the Queries:**
   - You can execute the SQL queries provided in this file in your SQL client to generate the desired insights into sales data.

4. **Interpret Results:**
   - The output from these queries will give you valuable insights such as:
     - Sales trends over time
     - Total revenue and order volume by year and month
  
5. **Customize and Filter Data:**
   - Modify the queries to filter for specific periods or additional categories if required for more detailed analysis.

---

## 📂 Folder Structure

```plaintext
📁 SQL-Queries
│
├──Screenshots   # contain the screenshots of output
├── 📄 sales_analysis.sql    # SQL queries for sales data analysis
└── README.md               # Project description and usage guide
