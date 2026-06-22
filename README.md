# Capstone 3: EmporiUm Sales Analysis with Power BI

## Project Overview

This project analyzes four years of sales performance for **EmporiUm**, a virtual student bookstore that operates through both in-store and online sales channels. The goal of this report is to help the South regional sales team understand overall sales trends, category performance, state-level performance, and top-selling general books.

The final Power BI report is designed for a regional management meeting with the regional director, territory managers, and store managers. It focuses on clear business insights that can support better sales planning, product focus, and regional decision-making.

## Business Scenario

EmporiUm is a growing student bookstore business that sells books, technology products, school supplies, apparel, and other student-related items. The South regional sales team needs a report that highlights recent sales performance and identifies where the strongest results are coming from.

For this capstone, my assigned sales region is:

**South Region**

The South Region analysis focuses on:

* Florida
* South Carolina
* Texas

## Tools Used

* Power BI Desktop
* Power Query
* DAX
* Excel
* GitHub

## Data Sources

The project uses the provided Capstone 3 files:

* `Capstone3_Sample_Sales.xlsx`
* `book list.txt`
* Capstone 3 project instructions PDF
* Capstone 3 peer review questions PDF

The Excel workbook included sales, product, store, management, category, and shipping-related data. The book list file was used to connect general book titles with author names so the report could identify top-selling books while excluding textbooks.

## Data Cleaning and Modeling

The data required cleaning and shaping before building the report. Some of the major steps included:

* Cleaned the Store Sales table by removing unreliable category data and keeping the key sales fields.
* Cleaned the Online Sales table by creating a full transaction date from separate year, month, and day fields.
* Standardized state fields so they could connect properly across sales, store, and management tables.
* Cleaned the Products table and connected it to product sales through product numbers.
* Cleaned the book list file into separate `Book Title` and `Author` columns.
* Merged the cleaned book list into the Products table so general books could be shown with author names.
* Created relationships between sales, products, store locations, management, inventory categories, and shipping data.
* Created DAX measures for total store sales, total online sales, and total sales.

## Key Measures

The report uses the following main DAX measures:

```DAX
Total Store Sales =
SUM('Store Sales'[Store Sales Amount])
```

```DAX
Total Online Sales =
SUM('Online Sales'[Online Sales Amount])
```

```DAX
Total Sales =
[Total Store Sales] + [Total Online Sales]
```

## Report Pages

The final report contains two main pages:

### 1. Sales Overview

This page provides a high-level view of South Region sales performance. It includes:

* A line chart showing total sales trends from 2022 through 2025.
* A bar chart showing sales performance by product category.
* A donut chart showing relative sales by South Region state.

### 2. Top Books

This page focuses on top-selling general books in the South Region. It includes:

* A table of top-selling books.
* Author names for each book.
* Total sales for each book.
* A subcategory slicer to help filter book types.

Textbooks are excluded from this page so the report focuses only on general bookstore books.

## Key Insights

The South Region showed strong sales performance across the full period, with total sales increasing by 2025. The sales trend visual shows that revenue grew over time, which suggests the region is gaining stronger sales momentum.

Technology and accessories were the highest-performing product category in the South Region. This suggests that student technology products are a major driver of revenue and should remain a key focus for sales planning.

Texas had the largest share of South Region sales, followed by Florida and South Carolina. This shows that Texas is the strongest state in the region and may be an important area for continued investment and sales strategy.

The top-selling books page helps the regional team identify which general books are performing best, along with the author names. This can help store managers make better decisions about inventory, promotion, and customer demand.

## Business Value

This Power BI report gives the South regional sales team a clear and interactive way to understand business performance. Instead of reviewing raw spreadsheet data, managers can quickly identify sales trends, compare states, review category performance, and see which books are selling best.

The report can help EmporiUm:

* Track sales growth over time.
* Identify top-performing categories.
* Compare performance across South Region states.
* Support inventory and promotion decisions.
* Highlight top-selling general books for regional planning.

## Final Deliverables

This repository includes:

* Power BI report file: `Mulugeta_capstone3.pbix`
* Source data files
* Project README
* Link to 10-minute project video recording: `[Add video link here]`

## Presentation Focus

For the in-class presentation, I will focus on the South Region sales trend and the top-performing categories/states. I will explain how these visuals can help the regional director, territory managers, and store managers make better business decisions.

## Author

**Dagmawi Mulugeta**
Year Up United Data Analytics Training Academy
Capstone 3: Power BI Sales Analysis
